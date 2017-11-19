package com.view;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.inoesis.form2.Registerate;
import com.inoesis.jointeam.Team;

/**
 * Servlet implementation class ViewController
 */
@WebServlet("/ViewController")
public class ViewController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String nm=request.getParameter("nm");
        String mobstudent=request.getParameter("mobstudent");
        
        String nmclient=request.getParameter("nmclient");
        String mobclient=request.getParameter("mobclient");
        
        if(nm!=null && nm!=""){
           ArrayList<Registerate> al = ViewDAO.searchstudentbyname(nm);
           if(!al.isEmpty()){
        	   System.out.println("Stuent===== name");
               request.setAttribute("shared1", al);
           }
            
        }
          if(mobstudent!=null && mobstudent!=""){
       	   	ArrayList<Registerate> al =   ViewDAO.searchstudentbymobile(mobstudent);
       	   if(!al.isEmpty()){
       		   System.out.println("Student===== mobile");
               request.setAttribute("shared3", al);
       	   }
        }
            if(nmclient!=null && nmclient!=""){
               ArrayList<Team> al = ViewDAO.searchclientbyname(nmclient);
               if(!al.isEmpty()){
            	   System.out.println("Client name======");
               request.setAttribute("shared2", al);
               }
        }
              if(mobclient!=null && mobclient!=""){
           	  ArrayList<Team> al = ViewDAO.searchclientbymobile(mobclient);
           	  if(!al.isEmpty()){
           		  System.out.println("Client mobile=====");
               	request.setAttribute("shared2", al);}
        }
              RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/view.jsp");
	          rd.forward(request, response);
	}

}
