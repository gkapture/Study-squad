package com.view;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.utility.JdbcUtility;


/**
 * Servlet implementation class Images
 */
@WebServlet("/Images")
public class Images extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	//	response.getWriter().append("Served at: ").append(request.getContextPath());
		String stmobile = request.getParameter("student");
		String clientmobile = request.getParameter("client");
		Connection con = null;
		if(stmobile!=""){
		try{
		con = JdbcUtility.getConnection();
		String query = "select photo from studysq1_studysquad.studentinfo where mobile_no = '"+stmobile+"'";
		
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery(query);
		if (rs.next()) {
            response.getOutputStream().write(rs.getBytes("photo"));
           
        }
		con.close();
		}
		catch(SQLException e){ e.getMessage();}
		}
		
		if(clientmobile != "")
		{
		try{
			con = JdbcUtility.getConnection();
			String query = "select photo from studysq1_studysquad.studysquadmember where mobile = '"+clientmobile+"'";
			
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(query);
			if (rs.next()) {
	            response.getOutputStream().write(rs.getBytes("photo"));
	        }
			con.close();
			}
			catch(SQLException e){ e.getMessage();
			}
	}
	}
}
