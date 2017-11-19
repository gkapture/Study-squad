/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.inoesis.form2;

import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.utility.JdbcUtility;


/**
 *
 * @author dell
 */
@WebServlet("/zipfiles")
public class zipfiles extends HttpServlet {

    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	/**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    public static final String FILE_SEPARATOR = System.getProperty("file.separator");

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//    	String decodedQueryString = URLDecoder.decode(request.getQueryString(), "UTF-8");
    	String filePath = null;
    	Connection currentCon = null;
        ResultSet rs = null; 
        Statement stmt = null;
    	String decodedQueryString = request.getParameter("value");
    	System.out.println(decodedQueryString);
    	try{
    		currentCon = JdbcUtility.getConnection();
    		String searchQuery =
    	               "select * from studentinfo where mobile_no='"
    	                        + decodedQueryString
    	                        + "'";
    		stmt=currentCon.createStatement();
      	  	rs = stmt.executeQuery(searchQuery);	        
            boolean more = rs.next();
            if (!more) 
            {
            	RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/view.jsp");
  	          rd.forward(request, response);
            } 
   	        
            //if user exists set the isValid variable to true
            else if (more) 
            {
            	filePath = rs.getString("filepath");
            	System.out.println(filePath);
            }
    	
        	
    		File directory = new File(filePath);
            String[] files = directory.list();

            //
            // Checks to see if the directory contains some files.
            //
            if (files != null && files.length > 0) {
                System.out.println("FILES : "+files);
                //
                // Call the zipFiles method for creating a zip stream.
                //
                byte[] zip = zipFiles(directory, files);

                //
                // Sends the response back to the user / browser. The
                // content for zip file type is "application/zip". We
                // also set the content disposition as attachment for
                // the browser to show a dialog that will let user 
                // choose what action will he do to the sent content.
                //
                ServletOutputStream sos = response.getOutputStream();
                response.setContentType("application/zip");
                response.setHeader("Content-Disposition", "attachment; filename=DATA.ZIP");

                sos.write(zip);
                sos.flush();
            
        }
    	}catch(Exception e){
    		e.getMessage();
    		
    		RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/view.jsp");
	          rd.forward(request, response);
    		}
    	finally{
    		JdbcUtility.close(rs, stmt, currentCon);
    	}

    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
   

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

private byte[] zipFiles(File directory, String[] files) throws IOException { 
    
    ByteArrayOutputStream baos = new ByteArrayOutputStream();
        ZipOutputStream zos = new ZipOutputStream(baos);
        byte bytes[] = new byte[2048];

        for (String fileName : files) {
            FileInputStream fis = new FileInputStream(directory.getPath() + 
                zipfiles.FILE_SEPARATOR + fileName);
            BufferedInputStream bis = new BufferedInputStream(fis);

            zos.putNextEntry(new ZipEntry(fileName));

            int bytesRead;
            while ((bytesRead = bis.read(bytes)) != -1) {
                zos.write(bytes, 0, bytesRead);
            }
            zos.closeEntry();
            bis.close();
            fis.close();
        }
        zos.flush();
        baos.flush();
        zos.close();
        baos.close();

        return baos.toByteArray();

}
}
