
<%
String action=request.getParameter("action");
if(action!=null){
	if(action.equals("adminLogin")){%>

<jsp:forward page="WEB-INF/adminLogin.jsp"></jsp:forward>	
	<% }
if(action.equals("index")){%>
	<jsp:forward page="WEB-INF/index.jsp"></jsp:forward>		
	<% }
if(action.equals("paymentform")){%>
	<jsp:forward page="WEB-INF/paymentform.jsp"></jsp:forward>	
<%}
if(action.equals("registration")){%>
	<jsp:forward page="WEB-INF/registration.jsp"></jsp:forward>
<%}
if(action.equals("view")){%>
	<jsp:forward page="WEB-INF/view.jsp"></jsp:forward>
<%}
if(action.equals("adminLogout")){%>
	<jsp:forward page="WEB-INF/adminLogout.jsp"></jsp:forward>
<%}

}else{
%>

<jsp:forward page="WEB-INF/index.jsp"></jsp:forward>
<%} %>
