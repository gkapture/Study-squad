package com.utility;

import java.io.FileInputStream;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;

import org.apache.log4j.Logger;

public class JdbcUtility {
private static Properties prop;
private static Logger log=Logger.getLogger(JdbcUtility.class);
private void load(){
	try{
	 prop=new Properties();
	 prop.load(getClass().getResourceAsStream("dbconfigmsql.properties"));
		String driv=prop.getProperty("driver");
                log.info("driver name:"+driv);
		Class.forName(driv);
		log.info("Driver and property file Loaded successfully");
	}catch(Exception e){
		log.error("looks like issue with either property file or driver loading ",e);
		e.printStackTrace();
	}
}

	 

	public static Connection getConnection(){
		Connection con=null;
		try{
			 if(prop==null){
				 new JdbcUtility().load();
			 }
			String url=prop.getProperty("url");
			String uid=prop.getProperty("userid");
			String pass=prop.getProperty("password");
                        log.info("db url:"+url);
                        log.info("db uid:"+uid);
                        log.info("db pass:"+pass);
			con=DriverManager.getConnection(url,uid,pass);
			log.info("Connection Established");
	}
		catch(Exception e) {
			log.info(e);
                        log.info("connection not estabalished:"+e);
			System.out.println("Connection failed.");
			e.printStackTrace();
	}
		return con;
	}
	public static void close(ResultSet rs,Statement st,Connection con){
		try{
			if(rs!=null){
				rs.close();
			}
			if(st!=null){
				st.close();
			}
			if(con!=null){
				con.close();
			}
		}
		catch(SQLException e){
			log.info(e);
			e.printStackTrace();
			
		}
		
	}
//	public static void main(String a[]){
//		System.out.println(JdbcUtility.getConnection());
//	}
	}//end of class
