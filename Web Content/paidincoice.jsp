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
       PreparedStatement ps=con.prepareStatement("SELECT * FROM `bc05-22`.`bill` where email='"+cmail+"'and status='paid' ");
       
       ResultSet rs=ps.executeQuery();
       
       while(rs.next())
       {
    
    	String id=rs.getString(1);
    	  
    	   
       %>
<div class="col-md-4">
<div class="card">
	

<h3>Payment Invoice</h3>
	  <div class="card-body">
	  
    <p class="card-text" style="margin-right:200px;"> BillId     : <%=rs.getString(2)%></p>
     
    <p class="card-text" style="margin-right:140px;">Client Name   :<%=rs.getString(4)%></p>
    <p class="card-text" style="margin-right:40px;"> Total Amount :<%=rs.getString(9)%></p>
      <p class="card-text" style="margin-right:200px;"> Card :<%=rs.getString(11)%></p>
    <p class="card-text" style="margin-right:70px;">Card Number :<%=rs.getString(15)%></p>    
    <p class="card-text" style="margin-right:140px;"> Payment Status  :<%=rs.getString(10)%></p>
       <a href="clientmain.jsp?id=<%=rs.getString(2)%>&&name=<%=rs.getString(4)%>&&email=<%=rs.getString(5)%>&&tot=<%=rs.getString(9)%>"><button class="btn btn-primary">Back</button></a>
      
    
      </div>
     
      </div>
      </div>

	<%} %>
	</div>
 </div>
 </center>
</body>
</html>