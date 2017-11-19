package com.inoesis.jointeam;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


import javax.servlet.http.Part;

import org.apache.log4j.Logger;

import com.utility.JdbcUtility;



public class TeamDAO {
	private final static Logger log=Logger.getLogger(com.inoesis.jointeam.TeamDAO.class);
	public TeamDAO() {
		
	}
    public static String save(Team t){
    InputStream inputStream = null; 
    
   
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
    ResultSet rs=null;
    PreparedStatement statement=null;
    Connection conn = null;
    String message = null;  
    try {
      conn=JdbcUtility.getConnection();
      log.info("connection is estabilished"+conn);
     String sql = "INSERT INTO studysquadmember(name,fathername,dateofbirth,mobile,aadhaar,pan,bankname,account,ifsc,permanentaddress,presentaddress,qualification,income,dependent,other,referal,photo) values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
         statement = conn.prepareStatement(sql);
        statement.setString(1, t.getTxtname());
        statement.setString(2, t.getTxtfname());
        statement.setString(3, t.getTxtdate());
        statement.setString(4, t.getMob());
        statement.setString(5, t.getAadhaar());
        statement.setString(6, t.getPan());
        statement.setString(7, t.getBankname());
        statement.setString(8, t.getAccount());
        statement.setString(9, t.getIfsc());
        statement.setString(10, t.getPmtadr());
        statement.setString(11, t.getPreadr());
        statement.setString(12, t.getTxtQexam());
        statement.setString(13, t.getIncome());
        statement.setString(14, t.getDependent());
        statement.setString(15, t.getOther());
        statement.setString(16, t.getReferal());
       
        System.out.println("***************inputStream:"+inputStream);
         
        if (inputStream != null) {
            // fetches input stream of the upload file for the blob column
            statement.setBlob(17, inputStream);
            log.info("insert Query for studysquadmember is fired");
        }

        // sends the statement to the database server
        int row = statement.executeUpdate();
        log.info("studysquadmember query is executed:");
        if (row > 0) {
            message = "welcome to studysquad family";
        }
    } catch (SQLException ex) {
    	log.error(ex);
        message = "ERROR: " + ex.getMessage();
        if(message.equals("ERROR: Duplicate entry '"+t.getMob()+"' for key 'PRIMARY'")){
        	message="mobile no is already exists";
        }
        ex.printStackTrace();
    }
    finally {
    	JdbcUtility.close(rs, statement, conn);

    }
 return message;   
}
}
