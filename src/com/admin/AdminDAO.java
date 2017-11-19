package com.admin;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import com.utility.JdbcUtility;

public class AdminDAO {

	static Connection currentCon = null;
    static ResultSet rs = null;  
	 public static AdminUser login(AdminUser bean) {
			
         //preparing some objects for connection 
         Statement stmt = null;    
	
         String username = bean.getAdminName();    
         String password = bean.getPassword();   
	    
         String searchQuery =
               "select * from admin where adminname='"
                        + username
                        + "' AND password='"
                        + password
                        + "'";
	    
      // "System.out.println" prints in the console; Normally used to trace the process
      System.out.println("Your user name is " + username);          
      System.out.println("Your password is " + password);
      System.out.println("Query: "+searchQuery);
      try{
    	  currentCon = JdbcUtility.getConnection();
    	  stmt=currentCon.createStatement();
    	  rs = stmt.executeQuery(searchQuery);	        
          boolean more = rs.next();
 	       
          // if user does not exist set the isValid variable to false
          if (!more) 
          {
             System.out.println("Sorry, you are not a registered user");
             bean.setValid(false);
          } 
 	        
          //if user exists set the isValid variable to true
          else if (more) 
          {
             String firstName = rs.getString("adminname");
             String lastName = rs.getString("lastname");
             System.out.println("Welcome " + firstName+" "+lastName);
             bean.setAdminName(firstName);
             bean.setAdminLastName(lastName);
             bean.setValid(true);
          }
       } 

       catch (Exception ex) 
       {
          System.out.println("Log In failed: An Exception has occurred! " + ex);
       } 
      finally{
    	  JdbcUtility.close(rs,stmt , currentCon);
      }
	return bean;
}
}