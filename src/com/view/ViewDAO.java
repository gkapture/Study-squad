
package com.view;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.inoesis.form2.Registerate;
import com.inoesis.jointeam.Team;
import com.utility.JdbcUtility;


public class ViewDAO {
   public static ArrayList<Registerate> searchstudentbyname(String stname){
    ResultSet rs=null;
    PreparedStatement st=null;
    Connection con = null;
    String message = null; 
     try {
      con=JdbcUtility.getConnection();
      st=con.prepareStatement("select * from studysq1_studysquad.studentinfo where full_name like '%"+stname+"%'");
       rs=st.executeQuery();
       ArrayList<Registerate> al=new ArrayList();
       while(rs.next()){
           Registerate reg = new Registerate();
           reg.setFullName(rs.getString("full_name"));
           reg.setMobileNo(rs.getString("mobile_no"));
           reg.setCourse(rs.getString("course"));
           reg.setComm_address(rs.getString("commu_address"));
           reg.setEmail(rs.getString("email"));
           reg.setQualifiedExam(rs.getString("qualified_exam"));
           reg.setRegisterationNumber(rs.getString("registration_no"));
           reg.setNameOfInstitutionLastAttended(rs.getString("last_Inst_Name"));
           reg.setAadhaarNo(rs.getString("aadhaar_no"));
           reg.setBloodGroup(rs.getString("blood_group"));
           reg.setDateofbirth(rs.getString("birth_date"));
           reg.setFatherName(rs.getString("father_name"));
           reg.setFatherOccupation(rs.getString("father_occupation"));
           reg.setMotherName(rs.getString("mother_name"));
           reg.setMotherOccupation(rs.getString("mother_occupation"));
           reg.setParentMobileNo(rs.getString("guardian_mobile"));
           reg.setGender(rs.getString("gender"));
           reg.setNationality(rs.getString("nationality"));
           reg.setReferalNo(rs.getString("referal_no"));
           reg.setReligion("religion");
           reg.setFileAttachedPath(rs.getString("filepath"));
//           reg.getPhoto(rs.getBlob("photo"));
           al.add(reg);
           System.out.println("00000000000000000000000000000000"+stname);
       }
      return al;
     }catch(Exception e){
       e.printStackTrace();
       return null;
     }
     finally{
    	 JdbcUtility.close(rs, st, con);
     }
       
     
   } 
     public static ArrayList<Registerate> searchstudentbymobile(String stmobile){
        ResultSet rs=null;
        PreparedStatement st=null;
        Connection con = null;
        String message = null; 
        try {
        con=JdbcUtility.getConnection();
        st=con.prepareStatement("select * from studysq1_studysquad.studentinfo where mobile_no = '"+stmobile+"'");
        rs=st.executeQuery();
        ArrayList<Registerate> al=new ArrayList();
         
        while(rs.next()){
        	Registerate reg= new Registerate();
            reg.setFullName(rs.getString("full_name"));
            reg.setMobileNo(rs.getString("mobile_no"));
            reg.setCourse(rs.getString("course"));
            reg.setComm_address(rs.getString("commu_address"));
            reg.setEmail(rs.getString("email"));
            reg.setQualifiedExam(rs.getString("qualified_exam"));
            reg.setRegisterationNumber(rs.getString("registration_no"));
            reg.setNameOfInstitutionLastAttended(rs.getString("last_Inst_Name"));
            reg.setAadhaarNo(rs.getString("aadhaar_no"));
            reg.setBloodGroup(rs.getString("blood_group"));
            reg.setDateofbirth(rs.getString("birth_date"));
            reg.setFatherName(rs.getString("father_name"));
            reg.setFatherOccupation(rs.getString("father_occupation"));
            reg.setMotherName(rs.getString("mother_name"));
            reg.setMotherOccupation(rs.getString("mother_occupation"));
            reg.setParentMobileNo(rs.getString("guardian_mobile"));
            reg.setGender(rs.getString("gender"));
            reg.setNationality(rs.getString("nationality"));
            reg.setReferalNo(rs.getString("referal_no"));
            reg.setReligion("religion");
            reg.setFileAttachedPath(rs.getString("filepath"));
//            reg.getPhoto(rs.getBlob("photo"));
            al.add(reg);
            System.out.println("00000000000000000000000000000000"+stmobile);
        }
       return al;
      }catch(Exception e){
        e.printStackTrace();
        return null;
      }
      finally{
     	 JdbcUtility.close(rs, st, con);
      }   
     }
    
     
       public static ArrayList<Team> searchclientbyname(String clientname){
        ResultSet rs=null;
        PreparedStatement st=null;
        Connection con = null;
        String message = null; 
        try {
        con=JdbcUtility.getConnection();
        st=con.prepareStatement("select * from studysq1_studysquad.studysquadmember where name like '%" +clientname+"%'");
        rs=st.executeQuery();
        ArrayList<Team> al=new ArrayList();
        while(rs.next()){
            Team t = new Team();
            t.setTxtname(rs.getString("name"));
            t.setMob(rs.getString("mobile"));
            t.setAadhaar(rs.getString("aadhaar"));
            t.setPan(rs.getString("pan"));
            t.setBankname(rs.getString("bankname"));
            t.setAccount(rs.getString("account"));
            t.setIfsc(rs.getString("ifsc"));
            t.setPmtadr(rs.getString("permanentaddress"));
            t.setTxtQexam(rs.getString("qualification"));
            t.setDependent(rs.getString("dependent"));
            t.setIncome(rs.getString("income"));
            t.setOther(rs.getString("other"));
            t.setTxtfname(rs.getString("fathername"));
            t.setPreadr(rs.getString("presentaddress"));
            t.setReferal(rs.getString("referal"));
            t.setTxtdate(rs.getString("dateofbirth"));
            al.add(t);
            System.out.println("------------------------------------"+clientname);
          }
          return al;
        }
        catch(SQLException e){
            e.getMessage();
            return null;
        }
        finally{
        	JdbcUtility.close(rs, st, con);
        }
   } 
       
      public static ArrayList<Team> searchclientbymobile(String clientmobile){
       ResultSet rs=null;
        PreparedStatement st=null;
        Connection con = null;
        String message = null; 
        try {
        con=JdbcUtility.getConnection();
        st=con.prepareStatement("select * from studysq1_studysquad.studysquadmember where mobile = '"+clientmobile+"'");
        rs=st.executeQuery();
        ArrayList<Team> al=new ArrayList();
        while(rs.next()){
            Team t = new Team();
            t.setTxtname(rs.getString("name"));
            t.setMob(rs.getString("mobile"));
            t.setAadhaar(rs.getString("aadhaar"));
            t.setPan(rs.getString("pan"));
            t.setBankname(rs.getString("bankname"));
            t.setAccount(rs.getString("account"));
            t.setIfsc(rs.getString("ifsc"));
            t.setPmtadr(rs.getString("permanentaddress"));
            t.setTxtQexam(rs.getString("qualification"));
            t.setDependent(rs.getString("dependent"));
            t.setIncome(rs.getString("income"));
            t.setOther(rs.getString("other"));
            t.setTxtfname(rs.getString("fathername"));
            t.setPreadr(rs.getString("presentaddress"));
            t.setReferal(rs.getString("referal"));
            t.setTxtdate(rs.getString("dateofbirth"));
            al.add(t);
            System.out.println("------------------------------------"+clientmobile);
          }
          return al;
        }
        catch(SQLException e){
            e.getMessage();
            return null;
        }
        finally{
        	JdbcUtility.close(rs, st, con);
        }   } 
}
