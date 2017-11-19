package com.inoesis.jointeam;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import org.apache.log4j.Logger;


@WebServlet("/Joinourteam")
@MultipartConfig(maxFileSize = 16177215)
public class Joinourteam extends HttpServlet {
	private final static Logger log=Logger.getLogger(com.inoesis.jointeam.Joinourteam.class);
	private static final long serialVersionUID = 1L;
       
  
    public Joinourteam() {
        super();
       
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		log.info("do post is called");
		String txtname=request.getParameter("txtname");
		String txtfname=request.getParameter("txtfname");
		String txtdate=request.getParameter("txtdate");
		String mob=request.getParameter("mob");
		String aadhaar=request.getParameter("aadhaar");
		String pan=request.getParameter("pan");
		String bankname=request.getParameter("bankname");
		String account=request.getParameter("account");
		String ifsc=request.getParameter("ifsc");
		String pmtadr=request.getParameter("pmtadr");
		String preadr=request.getParameter("preadr");
		String txtQexam=request.getParameter("txtQexam");
		String income=request.getParameter("income");
		String dependent=request.getParameter("dependent");
		String other=request.getParameter("other");
		String referal=request.getParameter("referal");
		Part photo=request.getPart("photo");
		log.info("reading parameter is done");
		 String img=photo.getContentType();
		 if(photo.getSize()!=0){
		 if(!(img.endsWith("png"))&&!(img.endsWith("PNG"))&&!(img.endsWith("JPG"))&&!(img.endsWith("jpg"))&&!(img.endsWith("gif"))&&!(img.endsWith("GIF"))&&!(img.endsWith("JPEG"))&&!(img.endsWith("jpeg"))){
			 request.setAttribute("msg", "image should be png or jpg or jpeg or gif ");
				RequestDispatcher rd=request.getRequestDispatcher("WEB-INF/paymentform.jsp");
				rd.forward(request, response);
		 }
		 if(photo.getSize()>14000000){
			 request.setAttribute("msg", "image size should be less than 14mb");
			 RequestDispatcher rd=request.getRequestDispatcher("WEB-INF/paymentform.jsp");
				rd.forward(request, response);
		 }
		 }
		System.out.println("&&&&&&&&&&&&&&&&&&&&&&&&photo:"+photo);
		if(txtname.equals("")||mob.equals("")||bankname.equals("")||account.equals("")||mob.length()!=10){
		RequestDispatcher rd=request.getRequestDispatcher("WEB-INF/paymentform.jsp");
		rd.forward(request, response);
		
		}else{
			log.info("server side validation is done");
			Team t=new Team(txtname, txtfname, txtdate, mob, aadhaar, pan, bankname, account, ifsc, pmtadr, preadr, txtQexam, income, dependent, other, referal, photo);
			String msg=TeamDAO.save(t);
			request.setAttribute("msg", msg);
			RequestDispatcher rd=request.getRequestDispatcher("WEB-INF/paymentform.jsp");
			rd.forward(request, response);
			
		}
			
	
	}

}
