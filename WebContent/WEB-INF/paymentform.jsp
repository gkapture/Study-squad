<!DOCTYPE html >
<html lang="en">
<head>
  <%@ include file="header.jsp" %>  
  <style>
    body{
     background-color:lightblue;}
    </style>
</head><!--/head-->
<body>

<script type="text/javascript">
function call()
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
	if(document.getElementById('mob').value==""|| isNaN(document.getElementById('mob').value)||document.getElementById('mob').value.length!=10)
	{
	alert("Enter valid mobile no");
	document.getElementById('mob').focus();
	return false;
	}
	if(document.getElementById('bankname').value=="")
	{
	alert("Enter Bank Name");
	document.getElementById('bankname').focus();
	return false;
	}
	if(document.getElementById('account').value=="")
	{
	alert("Enter Bank Account no.");
	document.getElementById('account').focus();
	return false;
	}
	
	}
</script>
 
    <center>${msg}</center>
<div class="container">  
  
  <h4>Join With Us:</h4>  
  <div class="col-xs-12 col-md-6 sm-6 ">
<form method="post" action="Joinourteam"  enctype="multipart/form-data" onsubmit=" return call();">
 <div class="form-group" >
  *Name:
  <input type="text" class="form-control" id="txtname" name="txtname" required="required" >  
  </div>
  
 <div class="form-group">  
    Upload your photograph(Gif,Jpg,jpeg or png images only of size upto 14mb):  
    <input type="file" class="form-control"  id="attach[]" name="photo" > <br>
    
  </div>
  
  <div class="form-group">  
   Father's Name:  
    <input type="text" class="form-control"  name="txtfname">  
  </div> 
 <div class="form-group">  
    Date of Birth:  
    <input type="date" class="form-control" name="txtdate" id="txtdate">  
  </div>
    <div class="form-group">  
    *Mobile No:  
    <input type="text" class="form-control" name="mob" id="mob" required="required">  
  </div>
   <div class="form-group">  
    Aadhaar Card No:  
    <input type="text" class="form-control" name="aadhaar">  
  </div>
  <div class="form-group">  
    Pan No: 
    <input type="text" class="form-control" name="pan">  
  </div>
  <div class="form-group">  
    *Bank Name: 
    <input type="text" class="form-control" id="bankname" name="bankname" required="required" > 
  </div>
  <div class="form-group">  
    *Bank Account No: 
    <input type="text" class="form-control" id="account" name="account" required="required">  
  </div>
  <div class="form-group">  
    IFSC Code: 
    <input type="text" class="form-control" name="ifsc" >  
  </div>  
  <div class="form-group">  
    Permanent Address:  
    <textarea  class="form-control" name="pmtadr" id="permanentaddress"></textarea > 
  </div>     
  <div class="form-group">
   <input type="checkbox"  name="same" onclick="sameAddress(this.form)"/><em>&nbsp; &nbsp; Same as above address</em>
  </div>
 <div class="form-group">  
    Present Address :  
    <textarea  class="form-control" name="preadr" id="presentaddress"></textarea> 
  </div> 
   <div class="form-group">  
    Educational Qualification:  
    <input type="text" class="form-control" name="txtQexam" >  
  </div> 
     <div class="form-group">  
   Annual Income: 
    <input type="text" class="form-control" name="income">  
  </div>
  <div class="form-group">  
    No of Dependent: 
    <input type="text" class="form-control" name="dependent">  
  </div>  
 
    <div class="form-group">  
    Others: 
    <input type="text" class="form-control" name="other">  
  </div>
  
      <div class="form-group">  
    Refer: 
    <input type="text" class="form-control" name="referal">  
  </div>
	
      
					  
 
  <input type="submit" class="btn btn-default" value="Submit"  name="submit" >
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
	 
	 function sameAddress(f) {
		  if(f.same.checked == true) {
		    f.presentaddress.value = f.permanentaddress.value;
		  }
		  else{
			  f.presentaddress.value="";
		  }
		}
	</script>
	<script>
    if (datefield.type!="date"){ //if browser doesn't support input type="date", initialize date picker widget:
        jQuery(function($){ //on document.ready
            $('#txtdate').datepicker({
                dateFormat: 'yy-mm-dd'
            });

        })
    }
</script>
   <%@ include file="footer.jsp" %> 
</body>
</html>
