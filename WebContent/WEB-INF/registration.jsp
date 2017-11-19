<!DOCTYPE html>
<html lang="en">
<head>

<%@ include file="header.jsp" %>
  <style>
    body{
     background-color:lightblue;
     }

    </style>
</head><!--/head-->
<body>
<script type="text/javascript">

function getCourse(val)
{
var xmlhttp;
	if(window.XMLHttpRequest)
	{
	xmlhttp=new XMLHttpRequest();
	}
	else if(window.ActiveXObject)
	{
	xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
	}
	else
	{
	alert("Your browser does not support XMLHTTP!");
	}   //onreadystatechange
xmlhttp.onreadystatechange=function()
{
	if(xmlhttp.readyState==4)
	{
	var response=xmlhttp.responseText;

		//alert(response);
		document.getElementById("courseDiv").innerHTML=response;

	}
}
var url="getcourse.php"+"?cid="+val;
//alert(url);
xmlhttp.open("GET",url,true);
xmlhttp.send(null);
}
function formvalid()
{
var imgarray=document.getElementById('attach[]');
	
	var fileName=imgarray.value;
	if(fileName!=""){
	var ext = fileName.substring(fileName.lastIndexOf('.') + 1);
		if(ext != "gif" && ext != "GIF" && ext != "JPEG" && ext != "jpeg" && ext != "jpg" && ext != "JPG" && ext != "png"&& ext != "PNG")
		{
		alert("Upload gif or jpg or jpeg or png images only");
		imgarray.value="";
		imgarray.focus();
		return false;
		}}

	if(document.getElementById('txtname').value=="")
	{
	alert("Enter Name");
	document.getElementById('txtname').focus();
	return false;
	}
	if(document.getElementById('txtfname').value=="")
	{
	alert("Enter father's name");
	document.getElementById('txtfname').focus();
	return false;
	}
	if(document.getElementById('txtdate').value=="" )
	{
	alert("Enter a valid birth date");
	document.getElementById('txtdate').value="";
	document.getElementById('txtdate').focus();
	return false;
	}

	if(document.getElementById('txtmob').value=="" || isNaN(document.getElementById('txtmob').value)||document.getElementById('txtmob').value.length!=10 )
	{
	alert("Enter valid mobile number");
	document.getElementById('txtmob').value="";
	document.getElementById('txtmob').focus();
	return false;
	}

	 if(document.getElementById('txtlgmob').value=="" || isNaN(document.getElementById('txtlgmob').value)||document.getElementById('txtlgmob').value.length!=10)
	{
	alert("Enter valid guardian's mobile number");
	document.getElementById('txtlgmob').value==""
	document.getElementById('txtlgmob').focus();
	return false;
	}



var at=["a1","a2","a3","a4","a5","a6","a7","a8","a9","a10","a11","a12","a13"];
for(var i=0;i<13;++i){
    var im=document.getElementById(at[i]);

var f=im.value;
if(f!=""){
var ext = f.substring(f.lastIndexOf('.') + 1);
	if(ext != "pdf" && ext != "PDF" && ext != "JPEG" && ext != "jpeg" && ext != "jpg" && ext != "JPG" && ext != "png"&& ext != "PNG")
	{
	alert("Upload pdf or jpg or jpeg or png files only");
	im.value="";
	im.focus();
	return false;
	}}}}
</script>

<!-- Jquery -->
<script src="js/jquery.js"></script>
<!-- Support media queries for IE8 -->
<script src="js/respond.min.js"></script>
<!-- HTML5 and CSS3-in older browsers-->
<script src="js/modernizr.custom.17475.js"></script>

<center>${msg}</center>
<p >
We at <strong>Study Squad</strong> are here to provide help and assistance at your every step. So please write to us and we will respond to your query at the earliest !
			</p>

<h4>General Enquire or Apply</h4>

<div class="container"  >

  <h4>Candidate Details:</h4>
  <div class="col-xs-12 col-md-6 col-sm-6 ">
<form action="Studentdetail" enctype="multipart/form-data" method="post" onsubmit=" return formvalid();">
 <div class="form-group">

    *Name of Student(As given in class SSLC/10th Certificate):
    <input type="text" class="form-control" id="txtname" name="txtname" required="required">
  </div>

 <div class="form-group">
    Upload your photograph(Gif,Jpg,jpeg or png images only of size upto 14mb):
    <input type="file" class="form-control" name="photo" id="attach[]" >
  </div>

 <div class="form-group">
   *Father's Name:
    <input type="text" class="form-control"  id="txtfname" name="txtfname" required="required">
  </div>
 <div class="form-group">
   Occupation:
    <input type="text" class="form-control" name="txtfocc">
  </div>
 <div class="form-group">
    Mother's Name:
    <input type="text" class="form-control" name="txtmname">
  </div>
 <div class="form-group">
    Occupation:
    <input type="text" class="form-control" name="txtmocc">
  </div>
 <div class="form-group">
    *Date of Birth:
    <input type="date" class="form-control"  name="txtdate" id="txtdate" required="required">
  </div>
 <div class="form-group">
    Gender:<br>
    Male<input type="radio"  name="gender" value="male" checked>
    Female<input  type="radio"  name="gender" value="female" >
  </div>
     <div class="form-group">
    Nationality:
    <input type="text" class="form-control" name="txtnation">

  </div>
    <div class="form-group">
    Religion:
 <select name="religion" class="form-control" name="religion" onchange="getreligion(this.value);">
					  <option value="" selected="selected">SELECT</option>
					  <option value="Hindu">Hindu</option>
					  <option value="Muslim">Muslim</option>
					  <option value="Sikh">Sikh</option>
					  <option value="Christian">Christian</option>
					  <option value="Buddhist">Buddhist</option>
					  <option value="Jain">Jain</option>

					  </select>
</div>
      <div class="form-group">
    Course:
    <input type="text" class="form-control" name="course">
  </div>
      <div class="form-group">
    Blood Group:
    <input type="text" class="form-control" name="txtbgrp">
  </div>
  <div class="form-group">
    Address of communication:
    <textarea  class="form-control" name="txtcommunication"></textarea>
  </div>

  <div class="form-group">
    Email:
    <input type="email" class="form-control" name="txtemail">
  </div>
  <div class="form-group">
    *Mobile:
    <input type="text" class="form-control" id="txtmob" name="txtmob" required="required">
  </div>

   <div class="form-group">
    *Guardian's Mobile:
    <input type="text" class="form-control"  id="txtlgmob" name="txtlgmob" required="required">
  </div>
   <div class="form-group">
    Aadhaar Card no:
    <input type="text" class="form-control"  name="aadhaar">
  </div>

   <div class="form-group">
    Qualified Examination Passed:
    <input type="text" class="form-control" name="txtQexam" >
  </div>
   <div class="form-group">
    Registration no:
    <input type="text" class="form-control" name="txtQexreg">
  </div>
    <div class="form-group">
    Name of institution last attended:
    <input type="text" class="form-control" name="txtInstitute">
  </div>

    <div class="form-group" >
    <label>marks obtained in qualifying Examination:</label>


  <div class="table-responsive">
  <table>
    <thead>
      <tr>
        <th>Sl.No.</th>
        <th>Subject</th>
        <th>Marks Obtained</th>
        <th>Percentage</th>
       </tr>
    </thead>
    <tbody >
      <tr>
        <td>1</td>
        <td><input class="form-control" type="text"  name="sub1"></td>
        <td><input class="form-control" type="text"  name="mark1"></td>
        <td><input class="form-control" type="text"  name="percent1"></td>
       </tr>
    </tbody>
	 <tbody>
      <tr>
        <td>2</td>
        <td><input class="form-control" type="text"  name="sub2"></td>
        <td><input class="form-control" type="text"  name="mark2"></td>
        <td><input class="form-control" type="text"  name="percent2"></td>
       </tr>
    </tbody>
	 <tbody>
      <tr>
        <td>3</td>
        <td><input class="form-control" type="text" name="sub3"></td>
        <td><input class="form-control" type="text"  name="mark3"></td>
        <td><input class="form-control" type="text"  name="percent3"></td>
       </tr>
    </tbody>
	 <tbody>
      <tr>
        <td>4</td>
        <td><input class="form-control" type="text"  name="sub4"></td>
        <td><input class="form-control" type="text"  name="mark4"></td>
        <td><input class="form-control" type="text"  name="percent4"></td>
       </tr>
    </tbody>
	 <tbody>
      <tr>
        <td>5</td>
        <td><input class="form-control" type="text"  name="sub5"></td>
        <td><input class="form-control" type="text"  name="mark5"></td>
        <td><input class="form-control" type="text"  name="percent5"></td>
       </tr>
    </tbody>
	 <tbody>
      <tr>
        <td>6</td>
        <td><input class="form-control" type="text"  name="sub6"></td>
        <td><input class="form-control"  type="text"  name="mark6"></td>
        <td><input class="form-control" type="text"  name="percent6"></td>
       </tr>
    </tbody>
    	 <tbody>
      <tr>
        <td>7</td>
        <td><input class="form-control" type="text"  name="sub7"></td>
        <td><input class="form-control"  type="text"  name="mark7"></td>
        <td><input class="form-control" type="text"  name="percent7"></td>
       </tr>
    </tbody>
    	 <tbody>
      <tr>
        <td>8</td>
        <td><input class="form-control" type="text"  name="sub8"></td>
        <td><input class="form-control"  type="text"  name="mark8"></td>
        <td><input class="form-control" type="text"  name="percent8"></td>
       </tr>
    </tbody>
  </table>
  </div>

  </div>
    <div class="form-group">
    Referal no:
    <input type="text" class="form-control" name="referal">
  </div>

    <div class="form-group">

  <table border="1" >
  <tr>
  <td>

   <p>List of documents to be attached (Originals to be Produced at the time of selection interview)</p>
					    <ul style="list-style:none;">
					      <li class="contentwhite">SSLC Marks Sheet </li>
					      <li class="contentwhite">II PUC / 10+2 / PDC Marks Sheet</li>
					      <li class="contentwhite"> Transfer Certificate </li>
					      <li class="contentwhite">Conduct Certificate (issued from institution last studied)</li>
					      <li class="contentwhite"> Migration Certificate</li>
					      <li class="contentwhite"> Recent  Passport size Colour Photograph</li>
					      <li class="contentwhite"> Student Passport Visa (for foreign nationals)</li>
					      <li class="contentwhite"> Cumulative Record along with syllabus pertaining to qualifying examination (for foreign nationals) </li>
					      <li class="contentwhite">Degree Certificate and Marks Sheet CET Allotment letter with fee paid receipts</li>
					      <li class="contentwhite"> Income and Caste Certificate (if any)</li>
					      <li><span class="contentwhite">Diploma Certificate / Marks Sheet (for lateral entry students) </span><br />
					        <br />
					      </li>
					      </ul>
						  </td>
						  </tr>
						  </table>

	<p class="text-sm-right">*(Attach only jpg/png/pdf/jpeg format files)</p>
						 </div>
						
	<div class="form-group">
    Attachment1:
    <input class="form-control" type="file" id="a1" name="at1" >
  </div>
  <div class="form-group">
    Attachment2:
    <input class="form-control"  type="file" id="a2" name="at2" >
  </div>
  <div class="form-group">
    Attachment3:
    <input class="form-control" type="file" id="a3" name="at3" >
  </div>
  <div class="form-group">
    Attachment4:
    <input class="form-control" type="file" id="a4" name="at4" >
  </div>
  <div class="form-group">
    Attachment5:
    <input class="form-control" type="file" id="a5" name="at5" >
  </div>
  <div class="form-group">
    Attachment6:
    <input class="form-control" type="file" id="a6" name="at6" >
  </div>
  <div class="form-group">
   Attachment7:
    <input class="form-control" type="file" id="a7" name="at7" >
  </div>
  <div class="form-group">
    Attachment8:
    <input class="form-control" type="file" id="a8" name="at8" >
  </div>
  <div class="form-group">
    Attachment9:
    <input class="form-control" type="file" id="a9" name="at9" >
  </div>
  <div class="form-group">
   Attachment10:
    <input class="form-control" type="file" id="a10" name="at10" >
  </div>
  <div class="form-group">
    Attachment11:
    <input class="form-control" type="file" id="a11" name="at11" >
  </div>
  <div class="form-group">
    Attachment12:
    <input class="form-control" type="file" id="a12" name="at12" >
  </div>
  <div class="form-group">
 <table border="1" >
  <tr>
  <td>
 <ul style="list-style:none;">
  <li class="contentwhite">Bank details for making the payment </li>
  <li class="contentwhite">Please make the payment to above bank account by <strong>Online Transfer / DD / Cash Deposit </strong>.</li>
  <li class="contentwhite">Please attach the receipt of the online transfer / scanned copy of the bank challan / bank draft: </li>
  </ul>
  <input type="file" class="form-control" id="a13" name="bankcopy" >
  </td>
  </tr>
 </table>
  </div>

	 <div class="form-group">
  <input type="submit" class="btn btn-default" value="Save as draft"  />
  <input type="submit" class="btn btn-default" value="Submit" disabled />
  </div>
</form>
  </div>

</div>

     <script>
	 var datefield=document.createElement("input")
    datefield.setAttribute("type", "date")
	   if (datefield.type!="date"){ //if browser doesn't support input type="date", load files for jQuery UI Date Picker
        document.write('<link href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css" rel="stylesheet" type="text/css" />\n')
        document.write('<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.4/jquery.min.js"><\/script>\n')
        document.write('<script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js"><\/script>\n')
    }
	</script>
	<script>
    if (datefield.type!="date"){ //if browser doesn't support input type="date", initialize date picker widget:
        jQuery(function($){ //on document.ready
            $('#txtdate').datepicker({
                dateFormat: 'dd-mm-yy'
            });

        })
    }
</script>
 <%@ include file="footer.jsp" %>
</body>
</html>
