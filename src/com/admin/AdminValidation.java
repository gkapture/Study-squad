package com.admin;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class AdminValidation
 */
@WebServlet("/AdminValidation")
public class AdminValidation extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try{
		AdminUser admin = new AdminUser();
	     admin.setAdminName(request.getParameter("un"));
	     admin.setPassword(request.getParameter("pw"));
	     String remenber = request.getParameter("remember");
	     admin = AdminDAO.login(admin);
		   		    
	     if (admin.isValid())
	     {
	    	
	          HttpSession session = request.getSession(true);	    
	          session.setAttribute("currentSessionadmin",admin); 
	          RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/view.jsp");
	          rd.forward(request, response);
	     //     response.sendRedirect("view.jsp"); //logged-in page      		
	     }
		        
	     else {
	    	 System.out.println("------------------adminLogin");
	          request.getRequestDispatcher("WEB-INF/adminLogin.jsp").forward(request, response);; //error page 
	     }
	} 
				
	catch(Throwable theException) 	    
	{
	     System.out.println(theException); 
	     
	}
	
	}

}


