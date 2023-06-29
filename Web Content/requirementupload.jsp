<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import=" dbcon.dbcon"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<%@page import="java.lang.Math.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
</head>
<style>
.form-group{
width:300px;
float:center;
}
body{
background-image:url("image/41.jpeg");
background-size:cover;
}
.mydiv{
      background-color: #bf707033;
    width: 424px;
    border: 1px solid green;
    padding: 50px;
    margin: 7px 426px;
}
</style>
<body>
<br><br><br>
<%String email=session.getAttribute("uname").toString();
String id=session.getAttribute("cid").toString();
%>
<% 
Connection d = dbcon.create();
PreparedStatement p = d.prepareStatement("SELECT * FROM `bc05-22`.`apply` where email='"+email+"' and status='upload' and id='"+id+"' ");

ResultSet s=p.executeQuery();

	while(s.next())
	{
		
	
	%>
<div class="mydiv">
<center>
<br>
<h2>Upload Service requierment</h2>
<form action="formupload" method="post" enctype="multipart/form-data">
  <div class="form-group">
    <label for="exampleInputEmail1">Client Email</label>
    <input type="text" class="form-control" id="exampleInputEmail1" name="email" value="<%=email%>" aria-describedby="emailHelp" placeholder="Enter email" readonly>
   
  </div>

   <div class="form-group">
    <label for="exampleInputPassword1">Description</label>
    <textarea type="text" class="form-control" id="exampleInputPassword1" name="des" placeholder="Description"></textarea>
</div>
  <div class="form-group">
    <label for="exampleFormControlFile1">Services</label>
    <input type="text" name="service" value="<%=s.getString(6) %>" class="form-control" id="exampleFormControlFile1" readonly>
  </div>
  <div class="form-group">
    <label for="exampleFormControlFile1">Service Type</label>
    <input type="text" name="cate" value="<%=s.getString(8) %>" class="form-control" id="exampleFormControlFile1" readonly>
  </div>
  <div class="form-group">
    <label for="exampleFormControlFile1">Upload Requirement in pdf Formant</label>
    <input type="file" name="filename" class="form-control" id="exampleFormControlFile1">
  </div>
  <button type="submit" class="btn btn-primary">Submit</button>
</form>
</center>
</div>
<%}%>
</body>
</html>