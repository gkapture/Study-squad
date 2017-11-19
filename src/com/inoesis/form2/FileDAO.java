/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.inoesis.form2;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.file.DirectoryStream;
import java.nio.file.Files;
import java.nio.file.Path;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.Part;

import org.apache.log4j.Logger;

public class FileDAO {
	
	private final static Logger log=Logger.getLogger(com.inoesis.form2.FileDAO.class);
	public static String isValid(Part p){
	      String img=p.getContentType();
    		 if(p.getSize()!=0){
    		 if(!(img.endsWith("png"))&&!(img.endsWith("PNG"))&&!(img.endsWith("JPG"))&&!(img.endsWith("jpg"))&&!(img.endsWith("pdf"))&&!(img.endsWith("PDF"))&&!(img.endsWith("JPEG"))&&!(img.endsWith("jpeg"))){
    			 return "file should be png or jpg or jpeg or pdf ";
    				
    		 }
    		 if(p.getSize()>14000000){
    			 return "file size should be less than 14mb";
    			
    		 }
    		
    		 }
    		 return null;
	}
    static boolean fileUpload(Part part, String fullpath){
    	
    	log.info("fileUpload method is called ");
            try{
            	 String name = part.getName(); 
            	 System.out.println("#######################################################"+name);
            	 
                 System.out.println("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
            	 String fileName = getFileName(part);  
            	 if(fileName==null){
            		 System.out.println("FALSE_______________");
            		 return false;
            	 }
            	 System.out.println("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"+fileName);
            	int index =  fileName.lastIndexOf("\\");
            	 name = fileName.substring(index+1);
            	 System.out.println("NNNNNNNNNNNNNNN"+name);
            	 log.info("File name :"+name);
                InputStream inputstream = part.getInputStream();
                System.out.println(inputstream);
                OutputStream outputstream = new FileOutputStream(fullpath+File.separator+name);
                
                        System.out.println("Errors");
                        int i = inputstream.available();
                        System.out.println(i);
                        byte[] bytes = new byte[i];
                        int read= 0;
                        while ((read = inputstream.read(bytes)) != -1) {
	                outputstream.write(bytes, 0, read);
	                System.out.println(read);
	                System.out.println(outputstream);
		 }
			
	 inputstream.close();
	 outputstream.flush();
	 outputstream.close();
         return true;
                }
                catch(IOException e){
                	log.info("ERROR :" +e.getMessage());
                    e.getMessage();
                    return false;
                }
            }
    
    private static String getFileName(Part part) { 
        String partHeader = part.getHeader("content-disposition"); 
//        logger.info("Part Header = " + partHeader); 
        for (String cd : part.getHeader("content-disposition").split(";")) { 
          if (cd.trim().startsWith("filename")) { 
            return cd.substring(cd.indexOf('=') + 1).trim() 
                .replace("\"", ""); 
          } 
        } 
        return null;

      }
    
    
    static void deleteDir(File file) {
        File[] contents = file.listFiles();
        if (contents != null) {
            for (File f : contents) {
                deleteDir(f);
            }
        }
        file.delete();
    }
    
        static boolean EmptyDirCheck (File file){
        	if (file.isDirectory()) {
                String[] files = file.list();

                if (files.length > 0) {
                    System.out.println("The " + file.getPath() + " is not empty!");
                    return false;
                }
            }
        	return true;
        }
}
