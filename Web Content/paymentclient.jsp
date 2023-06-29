<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="dbcon.dbcon"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<%@page import="java.io.FileInputStream" %>
<%@page import="java.io.IOException" %>
<%@page import="java.io.PrintWriter" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="css1/bootstrap.min.css">
<title>Insert title here</title>
<style>
.card{
width:50%;
height:100%;
background-color:lightblue;



}
/* card-body{
margin-right:50px;

} */
</style>
</head>
 
<body> <center>
<div class="container">
<div class="row">


  

   
	
       <%
       String cmail=session.getAttribute("uname").toString(); 
       Connection con;
       
       
       con=dbcon.create();
       PreparedStatement ps=con.prepareStatement("SELECT * FROM `bc05-22`.`bill` where email='"+cmail+"' ");
       
       ResultSet rs=ps.executeQuery();
       
       while(rs.next())
       {
    
    	String id=rs.getString(1);
    	  
    	   
       %>
<div class="col-md-4">
<div class="card">
	

<h3>BILL DETAILS</h3>
	  <div class="card-body">
	  
    <p class="card-text" style="margin-right:200px;"> Bill Id      : <%=rs.getString(2)%></p>
    <p class="card-text" style="margin-right:150px;">Date          :<%=rs.getString(3)%></p>    
    <p class="card-text" style="margin-right:110px;">Client Name   :<%=rs.getString(4)%></p>
    <p class="card-text" style="margin-right:60px;">Client Email  :<%=rs.getString(5)%></p>
    <p class="card-text" style="margin-right:150px;">Cost per Size :<%=rs.getString(7)%></p>    
    <p class="card-text" style="margin-right:80px;">Total         :<%=rs.getString(9)%></p>
       <a href="payment.jsp?id=<%=rs.getString(2)%>&&name=<%=rs.getString(4)%>&&email=<%=rs.getString(5)%>&&tot=<%=rs.getString(9)%>"><button class="btn btn-primary">Pay</button></a>
      
    
      </div>
     
      </div>
      </div>

	<%} %>
	</div>
 </div>
 </center>
</body>
</html>