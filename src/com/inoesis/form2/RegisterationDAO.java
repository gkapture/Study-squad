/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.inoesis.form2;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Iterator;
import java.util.Set;

import javax.servlet.http.Part;

import org.apache.log4j.Logger;

import com.utility.JdbcUtility;

/**
 *
 * @author dell
 */
public class RegisterationDAO {
	private static Logger log=Logger.getLogger(com.inoesis.form2.RegisterationDAO.class);
   static ResultSet rs=null;
   static PreparedStatement statement=null;
   static Connection conn = null;
   static String message = null;  
   
     public static String save(Registerate t){
    	 message = "success";
         InputStream inputStream = null; 
       
   log.info("save method for 'Apply form' is called");
         Part filePart = t.getPhoto();
    System.out.println(("******************filePart:"+filePart));
    if (filePart != null) {

        System.out.println(filePart.getName());
        System.out.println(filePart.getSize());
        System.out.println(filePart.getContentType());
         
  
        try {
			inputStream = filePart.getInputStream();
		} catch (IOException e) {
	
			e.printStackTrace();
		}
    }
    try {
      conn=JdbcUtility.getConnection();
       log.info("connection is estabilished"+conn);
     String sql = "INSERT INTO studentinfo"
             + "(full_name, mobile_no, father_name, father_occupation, mother_name, "
             + "mother_occupation, birth_date, gender, nationality, religion, course, "
             + "blood_group, commu_address, email, guardian_mobile, aadhaar_no, qualified_exam, "
             + "registration_no, last_Inst_Name, referal_no, photo, filepath)"
             + "values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        statement = conn.prepareStatement(sql);
        statement.setString(1, t.getFullName());
        statement.setString(2, t.getMobileNo());
        statement.setString(3, t.getFatherName());
        statement.setString(4, t.getFatherOccupation());
        statement.setString(5, t.getMotherName());
        statement.setString(6, t.getMotherOccupation());
        statement.setString(7, t.getDateofbirth());
        statement.setString(8, t.getGender());
        statement.setString(9, t.getNationality());
        statement.setString(10, t.getReligion());
        statement.setString(11, t.getCourse());
        statement.setString(12, t.getBloodGroup());
        statement.setString(13, t.getComm_address());
        statement.setString(14, t.getEmail());
        statement.setString(15, t.getParentMobileNo());
        statement.setString(16, t.getAadhaarNo());
        statement.setString(17, t.getQualifiedExam());
        statement.setString(18, t.getRegisterationNumber());
        statement.setString(19, t.getNameOfInstitutionLastAttended());
        statement.setString(20, t.getReferalNo());
        statement.setString(22, t.getFileAttachedPath());
        
        System.out.println("***************inputStream:"+inputStream);
         
        if (inputStream != null) {
            // fetches input stream of the upload file for the blob column
            statement.setBlob(21, inputStream);
            log.info("insert Query for studentinfo is fired");
        }

        // sends the statement to the database server
        int row = statement.executeUpdate();
     
        log.info("studentinfo query is executed: save of Studentinfo");
       
    } catch (SQLException ex) {
    	
    	log.error(ex);
        message = "ERROR: " + ex.getMessage();
        if(message.equals("ERROR: Duplicate entry '"+t.getMobileNo()+"' for key 'PRIMARY'")){
        	message="mobile no is already exists";
        }
        
        ex.printStackTrace();
    }
    finally {
    	JdbcUtility.close(rs, statement, conn);
    	log.info("connection is closed ");
    }
 return message;   
        
}     
     
public static String save1(Set<Subject> set){ 	  
        	  message = "Registeration done Successfully, Thank You ";
    try {
    	conn=JdbcUtility.getConnection();
    	log.info("connection is estabilished"+conn);
//    	conn.setAutoCommit(false);
    	String sql = "insert into subjectinfo(subjectName, subjectMark, subjectPercent, studentid)"
            + "values(?,?,?,?)";
            statement = conn.prepareStatement(sql);
            Iterator<Subject> list = set.iterator();
            while(list.hasNext()){
            	Subject sub = (Subject)list.next();
            	statement.setString(1, sub.getSubjectname());
            	statement.setString(2, sub.getSubjectmarks());
            	statement.setString(3, sub.getSubjectpercentage());
            	statement.setString(4, sub.getMobileno());
            	statement.addBatch();
            }
            int[] row = statement.executeBatch();   
            log.info("subject query is executed: save of Subject");
        
    	} catch (SQLException ex) {
    	
    	log.error(ex);
//        message = "ERROR: " + ex.getMessage();
    	message = "fail";
        ex.printStackTrace();
    	}
    	finally {
    	JdbcUtility.close(rs, statement, conn);
    	log.info("connection is closed ");
  }
        	  
 return message;           
}

		public static void rollBackSQL(String mobile) {
			// TODO Auto-generated method stub
			conn=JdbcUtility.getConnection();
			log.info("connection is estabilished"+conn);
			String sql = "DELETE FROM studentinfo where mobile_no = ?";
			System.out.println("TTTTTTTTTTTTTTTTTTTTT "+sql);
			try {
				statement = conn.prepareStatement(sql);
				statement.setString(1, mobile);
				statement.executeUpdate();
				log.info("subject query is executed: rollBackSQL ");
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			finally {
		    	JdbcUtility.close(rs, statement, conn);
		    	log.info("connection is closed ");
		    }
		}       

}
