package com.marque;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.util.Iterator;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class MarqueeDetails
 */
@WebServlet("/MarqueeDetails")
public class MarqueeDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MarqueeDetails() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		if(request.getParameter("title")!=null){
			String title=request.getParameter("title");
			String url=request.getParameter("url");
			if(!title.isEmpty()&&!url.isEmpty()){
				int i=MarqueeDao.addMarquee(title, url);
				request.setAttribute("mqaddstatus", i);
				RequestDispatcher rd=request.getRequestDispatcher("WEB-INF/view.jsp");
				rd.forward(request, response);
			}
		}
		if(request.getParameter("delete")!=null){
			String status=request.getParameter("delete");
			if(!status.isEmpty()){
				int i=MarqueeDao.deleteMarquee(status);
			}
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
