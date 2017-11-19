<%@page import="org.apache.catalina.ha.deploy.FarmWarDeployer"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%

	if (session.getAttribute("currentSessionadmin") != null){
		System.out.print("-------------Logout With session");
		session.removeAttribute("currentSessionUser");
		session.invalidate();%>
	<jsp:forward page="adminLogin.jsp"></jsp:forward>
	<%
	}
	else{
		System.out.print("-------------Logout11111111111111");
	%>
	<jsp:forward page="adminLogin.jsp"></jsp:forward>
	<% 
	}
	
%>
</body>
</html>