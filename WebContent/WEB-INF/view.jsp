
<!DOCTYPE html>
<%@page import="com.marque.MarqueeLink"%>
<%@page import="java.util.Iterator"%>
<%@page import="com.marque.MarqueeDao"%>
<%@page import="java.util.List"%>
<%@page import="com.admin.AdminUser"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ include file="adminheader.jsp"%>
<script src="js/jquery.table2excel.js"></script>
</head>
<body>

	<script>
    $("document").ready(function(){
    	$(".hid").hide();
    	$("#button").click(function(){
    		$("#element").table2excel({
    			exclude : ".noExl",
    			name : "file",
    			filename : "myfile",
    			fileext: ".xls",
				exclude_img: true
    			
    		});
    	});
    	//$("#element").tableExport();
    });
    </script>
	<script type="text/javascript">
            function clean(v){
                if(v==1){
                 document.getElementById('mobclient').value="";
                 document.getElementById('mobstudent').value="";
                 
                }
                  if(v==2){
                 document.getElementById('nmclient').value="";
                 document.getElementById('mobstudent').value="";
                }
                   if(v==3){
                 document.getElementById('mobclient').value="";
                 document.getElementById('mobstudent').value="";   
                }
                   if(v==4){
                 document.getElementById('nm').value="";
                 document.getElementById('mobclient').value="";
                }
            }
function call()
{


  if(!document.getElementById('mobclient').value==""){
	if(isNaN(document.getElementById('mobclient').value)||document.getElementById('mobclient').value.length!=10)
	{
	alert("Enter valid mobile no");
	document.getElementById('mobclient').focus();
	return false;
	}}
        if(!document.getElementById('mobstudent').value==""){
	if(isNaN(document.getElementById('mobstudent').value)||document.getElementById('mobstudent').value.length!=10)
	{
	alert("Enter valid mobile no");
	document.getElementById('mobstudent').focus();
	return false;
	}}
	
	
	}
</script>
	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="#"> <span
					class="glyphicon glyphicon-user"></span> <%  
       try{
    	   AdminUser currentUser = (AdminUser) (session.getAttribute("currentSessionadmin"));%>

					Welcome, <%= currentUser.getAdminName() + " " + currentUser.getAdminLastName() %>
					<%
        	}
        	catch(Exception e)
       			{	e.getMessage();%> <jsp:forward page="adminLogin.jsp"></jsp:forward>
					<%
        			}
        	%>

				</a>
			</div>
		</div>
	</nav>

	<section id="middle">
		<div class="container">
			<div class="row">
				<div class="col-sm-8 wow fadeInDown">


					<div class="tab-wrap">

						<div class="media">
							<div class="parrent pull-left">
								<ul class="nav nav-tabs nav-stacked">
									<li class="active"><a href="#tab1" data-toggle="tab"
										class="analistic-01">View Student</a></li>
									<li class=""><a href="#tab2" data-toggle="tab"
										class="analistic-02">View Client</a></li>
									<li class=""><a href="#tab3" data-toggle="tab"
										class="analistic-03">Add Marquee</a></li>

								</ul>
							</div>

							<div class="parrent media-body">
								<div class="tab-content">

									<div class="tab-pane fade active in" id="tab1">
										<div class="media">
											<form action="ViewController" onsubmit="return call();"
												method="get">
												<div class="form-group">
													Search By Name:<input type="text" class="form-control"
														name="nm" id="nm" onclick="clean(3)">
												</div>
												<div class="form-group">
													(or)<br> Search By Mobile No:<input type="text"
														class="form-control" name="mobstudent" id="mobstudent"
														onclick="clean(4)">
												</div>
												<input type="submit" class="btn btn-default" value="Submit"
													name="submit">
											</form>
										</div>
									</div>

									<div class="tab-pane fade" id="tab2">
										<div class="media">
											<form action="ViewController" onsubmit=" return call();"
												method="get">
												<div class="form-group">
													Search By Name:<input type="text" class="form-control"
														name="nmclient" id="nmclient" onclick="clean(1)">
												</div>
												<div class="form-group">
													(or)<br> Search By Mobile No:<input type="text"
														class="form-control" name="mobclient" id="mobclient"
														onclick="clean(2)">
												</div>
												<input type="submit" class="btn btn-default" value="Submit"
													name="submit">
											</form>
										</div>
									</div>
									<div class="tab-pane fade" id="tab3">
										<div class="media">
											<% 
		      									String addmsg="";
		      									if(request.getAttribute("mqaddstatus")!=null){
			      									int i=new Integer((request.getAttribute("mqaddstatus").toString())).intValue();
			      									
			      									if(i!=0){
			      										addmsg="Message Successfuly Saved...";
			      									}
			      									else{
			      										addmsg="Looks like some issue,Please try again...";
			      									}
		      									}
		      									out.print("<style>table,th,td{border:1px solid black;border-collapse:collapse;}th,td{padding:5px;}"
		      											+ ".btn{background:#4CAF50;color:white;width:70px;height:35px;font-size:100%;border:none;}"
		      											+ ".btn:hover{background:white;color:#4CAF50;}</style>"
		      										+"<div style='text-align:center;'>"
		      										+"<div style='padding:20px;margin:0 auto;'>"
		      										+"<form action='MarqueeDetails' method='post' autocomplete='off'>"
		      										+"Title:<input type='text' name='title' style='margin-bottom:10px;'><br>"
		      										+"Url:<input type='text' name='url' style='margin-bottom:10px;'><br>"
		      										+"<input type='submit' value='Add' class='btn'></form><br>"+addmsg+"</div><br>");
		      									List l=MarqueeDao.fetchMarquee();
		      									Iterator it=l.iterator();
		      									out.println("<div style='padding:20px;margin:0 auto;'><form action='MarqueeDetails' method='post' autocomplete='off'><table><tr><th>Title</th><th>URL</th><th>Disable</th></tr>");
		      									while(it.hasNext()){
		      										MarqueeLink mlink=(MarqueeLink)it.next();
		      										out.println("<tr><td>"+mlink.getTitle()+"</td><td>"+mlink.getUrl()+"</td>"
		      											+ "<td><input type='radio' name='delete' value='"+mlink.getMarqueeid()+"'></td></tr>");	
		      									}
		      									out.println("</table><br><input type='submit' value='Delete' class='btn'></form></div></div>");
	      									
	      									%>
										</div>
									</div>

								</div>
								<!--/.tab-content-->
							</div>
							<!--/.media-body-->
						</div>
						<!--/.media-->
					</div>
					<!--/.tab-wrap-->
				</div>
			</div>
		</div>

	</section>

	<div class="container">
		<div class="col-xs-12 col-sm-8 col-md-6">
			<!--  ++++++++++++++++++++++++++++ this for Registerate class using mobile n ++++++++++++   -->
			<div class="table-responsive ">

				<c:if test="${shared3!=null}">

					<table class="table table-bordered table-hover" id="element"
						width="100%">
						<caption>Student Details</caption>
						<thead>
							<tr>
								<th>ID</th>
								<th>Name</th>
								<th>Gender</th>
								<th>Course</th>
								<th>Mobile</th>
								<th>Qualified Exam</th>
								<th class="hid">Address</th>
								<th>Email</th>
								<th>Registeration No.</th>
								<th>Last Institute</th>
								<th class="hid">Birth Date</th>
								<th class="hid">Religion</th>
								<th class="hid">Blood Group</th>
								<th>Aadhaar No</th>
								<th class="hid">Nation</th>
								<th class="hid">Father's Name</th>
								<th class="hid">Father's Occupation</th>
								<th class="hid">Mother's Name</th>
								<th class="hid">Mother's Occupation</th>
								<th class="hid">Parent's Mobile</th>
								<th class="hid">Referal No</th>
								<th class="noExl">Photo</th>
							</tr>
						</thead>

						<c:forEach items="${shared3}" var="registerate"
							varStatus="theCount">

							<tbody>
								<tr>
									<td><c:out value="${theCount.count}"></c:out></td>
									<td><c:out value="${registerate.fullName}"></c:out></td>
									<td><c:out value="${registerate.gender}"></c:out></td>
									<td><c:out value="${registerate.course}"></c:out></td>
									<td><c:out value="${registerate.mobileNo}"></c:out></td>
									<td><c:out value="${registerate.qualifiedExam}"></c:out></td>
									<td class="hid"><c:out value="${registerate.comm_address}"></c:out>
									</td>
									<td><c:out value="${registerate.email}"></c:out></td>
									<td><c:out value="${registerate.registerationNumber}"></c:out>
									</td>
									<td><c:out
											value="${registerate.nameOfInstitutionLastAttended}"></c:out>
									</td>
									<td class="hid"><c:out value="${registerate.dateofbirth}"></c:out>
									</td>
									<td class="hid"><c:out value="${registerate.religion}"></c:out>
									</td>
									<td class="hid"><c:out value="${registerate.bloodGroup}"></c:out>
									</td>
									<td><c:out value="${registerate.aadhaarNo}"></c:out></td>
									<td class="hid"><c:out value="${registerate.nationality}"></c:out>
									</td>
									<td class="hid"><c:out value="${registerate.fatherName}"></c:out>
									</td>
									<td class="hid"><c:out
											value="${registerate.fatherOccupation}"></c:out></td>
									<td class="hid"><c:out value="${registerate.motherName}"></c:out>
									</td>
									<td class="hid"><c:out
											value="${registerate.motherOccupation}"></c:out></td>
									<td class="hid"><c:out
											value="${registerate.parentMobileNo}"></c:out></td>
									<td class="hid"><c:out value="${registerate.referalNo}"></c:out>
									</td>
									<td class="noExl"><img
										src="Images?student=${registerate.mobileNo}" width="45px"
										height="33px" /></td>
								</tr>
								<div align="bottom">
									<button class="btn btn-info" id="button">Excel</button>
									*use chrome,firefox browser. <a
										href="zipfiles?value=${registerate.mobileNo}"
										class="btn btn-info">Attached Document</a>
								</div>
							</tbody>
						</c:forEach>
					</table>



				</c:if>


				<!--  ++++++++++++++++++++++++++++ this for Registerate class using  name ++++++++++++   -->
				<c:if test="${shared1 !=null }">
					<table class="table table-bordered table-hover" id="element"
						width="100%">
						<caption>Student Details</caption>
						<thead>
							<tr>
								<th>ID</th>
								<th>Name</th>
								<th>Gender</th>
								<th>Course</th>
								<th>Mobile</th>
								<th>Qualified Exam</th>
								<th class="hid">Address</th>
								<th>Email</th>
								<th>Registeration No.</th>
								<th>Last Institute</th>
								<th class="hid">Birth Date</th>
								<th class="hid">Religion</th>
								<th class="hid">Blood Group</th>
								<th>Aadhaar No</th>
								<th class="hid">Nation</th>
								<th class="hid">Father's Name</th>
								<th class="hid">Father's Occupation</th>
								<th class="hid">Mother's Name</th>
								<th class="hid">Mother's Occupation</th>
								<th class="hid">Parent's Mobile</th>
								<th class="hid">Referal No</th>
								<th class="noExl">Photo</th>
							</tr>
						</thead>
						<c:forEach items="${shared1}" var="registerate"
							varStatus="theCount">


							<tbody>
								<tr>
									<td><c:out value="${theCount.count}"></c:out></td>
									<td><c:out value="${registerate.fullName}"></c:out></td>
									<td><c:out value="${registerate.gender}"></c:out></td>
									<td><c:out value="${registerate.course}"></c:out></td>
									<td><c:out value="${registerate.mobileNo}"></c:out></td>
									<td><c:out value="${registerate.qualifiedExam}"></c:out></td>
									<td class="hid"><c:out value="${registerate.comm_address}"></c:out>
									</td>
									<td><c:out value="${registerate.email}"></c:out></td>
									<td><c:out value="${registerate.registerationNumber}"></c:out>
									</td>
									<td><c:out
											value="${registerate.nameOfInstitutionLastAttended}"></c:out>
									</td>
									<td class="hid"><c:out value="${registerate.dateofbirth}"></c:out>
									</td>
									<td class="hid"><c:out value="${registerate.religion}"></c:out>
									</td>
									<td class="hid"><c:out value="${registerate.bloodGroup}"></c:out>
									</td>
									<td><c:out value="${registerate.aadhaarNo}"></c:out></td>
									<td class="hid"><c:out value="${registerate.nationality}"></c:out>
									</td>
									<td class="hid"><c:out value="${registerate.fatherName}"></c:out>
									</td>
									<td class="hid"><c:out
											value="${registerate.fatherOccupation}"></c:out></td>
									<td class="hid"><c:out value="${registerate.motherName}"></c:out>
									</td>
									<td class="hid"><c:out
											value="${registerate.motherOccupation}"></c:out></td>
									<td class="hid"><c:out
											value="${registerate.parentMobileNo}"></c:out></td>
									<td class="hid"><c:out value="${registerate.referalNo}"></c:out>
									</td>
									<td class="noExl"><img
										src="Images?student=${registerate.mobileNo}" width="45px"
										height="33px" /></td>
								</tr>
							</tbody>

						</c:forEach>
					</table>
					<button class="btn btn-info" id="button">Excel</button>
            *use chrome,firefox browser.
	            <%-- <c:if test="${theCount.count ==0}">
	            <a href="zipfiles?value=${registerate.mobileNo}" class="btn btn-primary">click</a>
	            </c:if> --%>
				</c:if>

				<!--  ++++++++++++++++++++++++++++ this for Team class using mobile  ++++++++++++   -->


				<!--  ++++++++++++++++++++++++++++ this for Team class using name ++++++++++++   -->
				<c:if test="${shared2 !=null }">
					<table class="table table-bordered table-hover" id="element">
						<caption>Client Details</caption>
						<thead>
							<tr>
								<th>ID</th>
								<th>Name</th>
								<th>Aadhaar</th>
								<th>Mobile</th>
								<th>Pan Card</th>
								<th class="hid">Address</th>
								<th>Bank Name</th>
								<th>Account No.</th>
								<th>Bank IFSC</th>
								<th>Qualification</th>
								<th class="hid">Birth Date</th>
								<th class="hid">Father's Name</th>
								<th class="hid">Present Address</th>
								<th class="hid">Annual income</th>
								<th class="hid">No of Dependents</th>
								<th class="hid">Other</th>
								<th class="hid">Referal No</th>
								<th class="noExl">Photo</th>
							</tr>
						</thead>
						<c:forEach items="${shared2}" var="team" varStatus="theCount">
							<tbody>

								<tr>
									<td><c:out value="${theCount.count }"></c:out></td>
									<td><c:out value="${team.txtname}"></c:out></td>
									<td><c:out value="${team.aadhaar}"></c:out></td>
									<td><c:out value="${team.mob}"></c:out></td>
									<td><c:out value="${team.pan}"></c:out></td>
									<td class="hid"><c:out value="${team.pmtadr}"></c:out></td>
									<td><c:out value="${team.bankname}"></c:out></td>
									<td><c:out value="${team.account}"></c:out></td>
									<td><c:out value="${team.ifsc}"></c:out></td>
									<td><c:out value="${team.txtQexam}"></c:out></td>
									<td class="hid"><c:out value="${team.txtdate}"></c:out></td>
									<td class="hid"><c:out value="${team.txtfname}"></c:out></td>
									<td class="hid"><c:out value="${team.preadr}"></c:out></td>
									<td class="hid"><c:out value="${team.income}"></c:out></td>
									<td class="hid"><c:out value="${team.dependent}"></c:out>
									</td>
									<td class="hid"><c:out value="${team.other}"></c:out></td>
									<td class="hid"><c:out value="${team.referal}"></c:out></td>
									<td class="noExl"><img src="Images?client=${team.mob}"
										width="45px" height="33px" /></td>
								</tr>

							</tbody>
						</c:forEach>
					</table>
					<button class="btn btn-info" id="button">Excel</button>
             *use chrome,firefox browser.
            </c:if>


			</div>
		</div>
	</div>




	<%@ include file="footer.jsp"%>
</body>
</html>
