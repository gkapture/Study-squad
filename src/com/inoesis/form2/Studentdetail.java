/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.inoesis.form2;

import java.io.File;
import java.io.IOException;
import java.util.HashSet;
import java.util.Set;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import org.apache.log4j.Logger;


@WebServlet("/Studentdetail")
@MultipartConfig(maxFileSize=20*1024*1024)
public class Studentdetail extends HttpServlet {
	private static final Logger log=Logger.getLogger(com.inoesis.form2.Studentdetail.class);
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	log.info("do post is called");
        response.setContentType("text/html;charset=UTF-8");
       
        String name=request.getParameter("txtname");
                System.out.println(name);
		Part photo=request.getPart("photo");
                System.out.println(photo);
		String fathername=request.getParameter("txtfname");
                System.out.println(fathername);
		String fatheroccupation=request.getParameter("txtfocc");
                System.out.println(fatheroccupation);
		String mothername=request.getParameter("txtmname");
                System.out.println(mothername);
		String motheroccupation=request.getParameter("txtmocc");
                System.out.println(motheroccupation);
		String date =request.getParameter("txtdate");
                System.out.println(date);
		String gender=request.getParameter("gender");
                System.out.println(gender);
		String nation=request.getParameter("txtnation");
                System.out.println(nation);
		String religion=request.getParameter("religion");
                System.out.println(religion);
		String course=request.getParameter("course");
                System.out.print(course);
		String bloodgroup=request.getParameter("txtbgrp");
                System.out.println(bloodgroup);
		String txtcommunication=request.getParameter("txtcommunication");
                System.out.println(txtcommunication);
		String email=request.getParameter("txtemail");
                System.out.println(email);
		String mobile=request.getParameter("txtmob");
                System.out.println(mobile);
		String parentmobile=request.getParameter("txtlgmob");
                System.out.println(parentmobile);
		String aadhaar=request.getParameter("aadhaar");
                System.out.println(aadhaar);
		String qualificationexam=request.getParameter("txtQexam");
                System.out.println(qualificationexam);
		String qualificationexamreg=request.getParameter("txtQexreg");
                System.out.println(qualificationexamreg);
		String institute=request.getParameter("txtInstitute");
                System.out.println(institute);
                
                String subj1 = request.getParameter("sub1");
                System.out.println(subj1);
                String subj2 = request.getParameter("sub2");
                System.out.println(subj2);
                String subj3 = request.getParameter("sub3");
                System.out.println(subj3);
                String subj4 = request.getParameter("sub4");
                System.out.println(subj4);
                String subj5 = request.getParameter("sub5");
                System.out.println(subj5);
                String subj6 = request.getParameter("sub6");
                System.out.println(subj6);
                String subj7 = request.getParameter("sub7");
                System.out.println(subj7);
                String subj8 = request.getParameter("sub8");
                System.out.println(subj8);
                String mark1 = request.getParameter("mark1");
                System.out.println(mark1);
                String mark2 = request.getParameter("mark2");
                System.out.println(mark2);
                String mark3 = request.getParameter("mark3");
                System.out.println(mark3);
                String mark4 = request.getParameter("mark4");
                System.out.println(mark4);
                String mark5 = request.getParameter("mark5");
                System.out.println(mark5);
                String mark6 = request.getParameter("mark6");
                System.out.println(mark6);
                String mark7 = request.getParameter("mark7");
                System.out.print(mark7);
                String mark8 = request.getParameter("mark8");
                System.out.println(mark8);
                String percent1 = request.getParameter("percent1");
                System.out.println(percent1);
                String percent2 = request.getParameter("percent2");
                System.out.println(percent2);
                String percent3 = request.getParameter("percent3");
                System.out.println(percent3);
                String percent4 = request.getParameter("percent4");
                System.out.println(percent4);
                String percent5 = request.getParameter("percent5");
                System.out.println(percent5);
                String percent6 = request.getParameter("percent6");
                System.out.println(percent6);
                String percent7 = request.getParameter("percent7");
                System.out.println(percent7);
                String percent8 = request.getParameter("percent8");
                System.out.println(percent8);
		String referal=request.getParameter("referal");
				System.out.println(referal);
		Part at1=request.getPart("at1");
		String s1=FileDAO.isValid(at1);
                System.out.println(at1);
		Part at2=request.getPart("at2");
		String s2=FileDAO.isValid(at2);
                System.out.println(at2);
		Part at3=request.getPart("at3");
		String s3=FileDAO.isValid(at3);
                System.out.println(at3);
		Part at4=request.getPart("at4");
		String s4=FileDAO.isValid(at4);
                System.out.println(at4);
		Part at5=request.getPart("at5");
		String s5=FileDAO.isValid(at5);
                System.out.println(at5);
                
		Part at6=request.getPart("at6");
		String s6=FileDAO.isValid(at6);
                System.out.println(at6);
		Part at7=request.getPart("at7");
		String s7=FileDAO.isValid(at7);
                System.out.println(at7);
		Part at8=request.getPart("at8");
		String s8=FileDAO.isValid(at8);
                System.out.println(at8);
                Part at9=request.getPart("at9");
                String s9=FileDAO.isValid(at9);
                System.out.println(at9);
                Part at10=request.getPart("at10");
                String s10=FileDAO.isValid(at10);
                System.out.println(at10);
                Part at11=request.getPart("at11");
                String s11=FileDAO.isValid(at11);
                System.out.println(at11);
                Part at12=request.getPart("at12");
                String s12=FileDAO.isValid(at12);
                System.out.println(at12);
                Part bankcopy=request.getPart("bankcopy");
                String s13=FileDAO.isValid(bankcopy);
                System.out.println(bankcopy);
                if(s1!=null||s2!=null||s3!=null||s4!=null||s5!=null||s6!=null||s7!=null||s8!=null||s9!=null||s10!=null||s11!=null||s12!=null||s13!=null){
                	 request.setAttribute("msg", "file should be png or jpg or jpeg or pdf upto 14mb size ");
        				RequestDispatcher rd=request.getRequestDispatcher("WEB-INF/registration.jsp");
        				rd.forward(request, response);	
                }
             
                String img=photo.getContentType();
                
       		 if(photo.getSize()!=0){
       			 if(!(img.endsWith("png"))&&!(img.endsWith("PNG"))&&!(img.endsWith("JPG"))&&!(img.endsWith("jpg"))&&!(img.endsWith("gif"))&&!(img.endsWith("GIF"))&&!(img.endsWith("JPEG"))&&!(img.endsWith("jpeg"))){
       				 request.setAttribute("msg", "image should be png or jpg or jpeg or gif ");
       				 RequestDispatcher rd=request.getRequestDispatcher("WEB-INF/registration.jsp");
       				 rd.forward(request, response);
       			 }
       			 if(photo.getSize()>14000000){
       				 request.setAttribute("msg", "image size should be less than 14mb");
       				 RequestDispatcher rd=request.getRequestDispatcher("WEB-INF/registration.jsp");
       				 rd.forward(request, response);
       			 }
       		 }
       		 
		   if(name.equals("")||fathername.equals("")||date.equals("")|| mobile.equals("")||parentmobile.equals("")||mobile.length()!=10||parentmobile.length()!=10){
	     	   RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/registration.jsp");
	     	   rd.forward(request, response);
	        }
		   boolean isFileAdded = false;
		   boolean bool1=false, bool2=false, bool3=false, bool4=false, bool5=false, bool6=false, bool7=false, bool8=false, bool9=false, bool10=false, bool11=false, bool12=false, bool13=false;
		   log.info("server side validation is done");
		   String filePath = request.getServletContext().getRealPath("/WEB-INF");
	        System.out.println(filePath);
	        
                String fullpath = filePath+File.separator+mobile;
                        System.out.println(fullpath);
                        File f = new File(fullpath);
                        
                        if(!f.isDirectory())
                        {
                            System.out.print("Folderoooooooooooooooooooooooooo");
                        f.mkdir();     
                        
                        bool1 =  FileDAO.fileUpload(at1, fullpath);
                        bool2 =  FileDAO.fileUpload(at2, fullpath);
                         bool3 =  FileDAO.fileUpload(at3, fullpath);
                        bool4 =  FileDAO.fileUpload(at4, fullpath);
                         bool5 =  FileDAO.fileUpload(at5, fullpath);
                         bool6 =  FileDAO.fileUpload(at6, fullpath);
                         bool7 =  FileDAO.fileUpload(at7, fullpath);
                         bool8 =  FileDAO.fileUpload(at8, fullpath);
                         bool9 =  FileDAO.fileUpload(at9, fullpath);
                         bool10 =  FileDAO.fileUpload(at10, fullpath);
                         bool11 =  FileDAO.fileUpload(at11, fullpath);
                         bool12 =  FileDAO.fileUpload(at12, fullpath);
                         bool13 =  FileDAO.fileUpload(bankcopy, fullpath);
                        }
                        else{
                        	System.out.println("Folder exisssssssstttttttttttttttttttttt");
                        	isFileAdded = false;
                        }
                        
                       
             
                        
 if(bool1 || bool2 || bool3 || bool4 || bool5 || bool6 || bool7 || bool8 || bool9 || bool10 || bool11 || bool12 || bool13)
 {
	 isFileAdded = true;
	 log.info("Files are added and stored");
 }
	 
	 boolean isEmpty = FileDAO.EmptyDirCheck(new File(fullpath));
	 if(isEmpty)
	 {
		 System.out.println("File deleting----------------------------------------");
		 FileDAO.deleteDir(new File(fullpath));
	 }
 
                            
                        Registerate reg = new Registerate();
                        System.out.println("Registerate : "+reg);
                        reg.setFullName(name);
                        reg.setFatherName(fathername);  
                  
                        if(!(fatheroccupation.equals("")))
                        reg.setFatherOccupation(fatheroccupation);
                        
                        if(!(mothername.equals("")))
                        reg.setMotherName(mothername);
                        
                        if(!(motheroccupation.equals("")))
                        reg.setMotherOccupation(motheroccupation);
                        
                        if(!(parentmobile.equals("")))
                        reg.setParentMobileNo(parentmobile);
                        
                        if(!(date.equals("")))
                        reg.setDateofbirth(date);
                        
                        if(!(gender.equals("")))
                        reg.setGender(gender);
                        
                        if(!(religion.equals("")))
                        reg.setReligion(religion);
                        
                        if(!(course.equals("")))
                        reg.setCourse(course);
                        
                        if(!(bloodgroup.equals("")))
                        reg.setBloodGroup(bloodgroup);
                        
                        if(!(txtcommunication.equals("")))
                        reg.setComm_address(txtcommunication);
                        
                        reg.setEmail(email);
                        reg.setMobileNo(mobile);
                        
                        if(!(aadhaar.equals("")))
                        reg.setAadhaarNo(aadhaar);
                        
                        if(!(qualificationexam.equals("")))
                        reg.setQualifiedExam(qualificationexam);
                        
                        if(!(institute.equals("")))
                        reg.setNameOfInstitutionLastAttended(institute);
                        
                        if(!(referal.equals("")))
                        reg.setReferalNo(referal);
                        
                        reg.setPhoto(photo);
                        
                        if(!(qualificationexam.equals("")))
                        reg.setRegisterationNumber(qualificationexamreg);
                        
                        if(!(nation.equals("")))
                        reg.setNationality(nation);
                        
                        if(isFileAdded)
                        reg.setFileAttachedPath(fullpath);
                        
                        String msg = RegisterationDAO.save(reg);
                        if(!(msg.equalsIgnoreCase("success"))){
                        	request.setAttribute("msg", msg);
                        	RequestDispatcher rd =request.getRequestDispatcher("WEB-INF/registration.jsp");
                        	rd.forward(request, response);
                        }
                        
                        
                        
                        Set<Subject> set = new HashSet<Subject>();
                        
                        
                        if(!subj1.equals(""))
                        {
	                        Subject subject1 = new Subject();
	                        subject1.setMobileno(mobile);
	                        subject1.setSubjectname(subj1);
	                        subject1.setSubjectmarks(mark1);
	                        subject1.setSubjectpercentage(percent1);
	                        set.add(subject1);
                        }
                        
                        if(!subj2.equals(""))
                        {
	                        Subject subject2 = new Subject();
	                        subject2.setMobileno(mobile);
	                        subject2.setSubjectname(subj2);
	                        subject2.setSubjectmarks(mark2);
	                        subject2.setSubjectpercentage(percent2);
	                        set.add(subject2);
                        }
                        
                        if(!subj3.equals(""))
                        {
	                        Subject subject3 = new Subject();
	                        subject3.setMobileno(mobile);
	                        subject3.setSubjectname(subj3);
	                        subject3.setSubjectmarks(mark3);
	                        subject3.setSubjectpercentage(percent3);
	                        set.add(subject3);
                        }
                        
                        if(!subj4.equals("") )
                        {
	                        Subject subject4 = new Subject();
	                        subject4.setMobileno(mobile);
	                        subject4.setSubjectname(subj4);
	                        subject4.setSubjectmarks(mark4);
	                        subject4.setSubjectpercentage(percent4);
	                        set.add(subject4);
                        }
                        
                        if(!subj5.equals(""))
                        {
	                        Subject subject5 = new Subject();
	                        subject5.setMobileno(mobile);
	                        subject5.setSubjectname(subj5);
	                        subject5.setSubjectmarks(mark5);
	                        subject5.setSubjectpercentage(percent5);
	                        set.add(subject5);
                        }
                        
                        if(!subj6.equals(""))
                        {
	                        Subject subject6 = new Subject();
	                        subject6.setMobileno(mobile);
	                        subject6.setSubjectname(subj6);
	                        subject6.setSubjectmarks(mark6);
	                        subject6.setSubjectpercentage(percent6);
	                        set.add(subject6);
                        }
                        
                        if(!subj7.equals(""))
                        {
	                        Subject subject7 = new Subject();
	                        subject7.setMobileno(mobile);
	                        subject7.setSubjectname(subj7);
	                        subject7.setSubjectmarks(mark7);
	                        subject7.setSubjectpercentage(percent7);
	                        set.add(subject7);
                        }
                        
                        if(!subj8.equals(""))
                        {
	                        Subject subject8 = new Subject();
	                        subject8.setMobileno(mobile);
	                        subject8.setSubjectname(subj8);
	                        subject8.setSubjectmarks(mark8);
	                        subject8.setSubjectpercentage(percent8);
	                        set.add(subject8);
                        }
                        String msg1 = "Registeration done Successfully, Thank You ";
                        
                        if(!set.isEmpty())
                        {
                        	msg1 = RegisterationDAO.save1(set);
                        }
                         
                        if(msg1.equalsIgnoreCase("fail"))
                        {
                        	RegisterationDAO.rollBackSQL(mobile);
                        	FileDAO.deleteDir(new File(fullpath));
                        	msg1 = "Failed to Register try again, Enter mandetory fields ";
                        	request.setAttribute("msg", msg1);
                        	RequestDispatcher rd =request.getRequestDispatcher("WEB-INF/registration.jsp");
                        	rd.forward(request, response);
                        }
                        
                        request.setAttribute("msg", msg1);
                    	RequestDispatcher rd =request.getRequestDispatcher("WEB-INF/registration.jsp");
                    	rd.forward(request, response);
                        
                        
      }


    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
