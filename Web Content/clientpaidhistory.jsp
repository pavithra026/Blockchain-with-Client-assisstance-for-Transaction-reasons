<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@page import=" dbcon.dbcon"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<style>

body
    {
    background-image:url("image/b4.jpg");
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: 100% 100%;
    }
table {
    width: 100%;
    margin-top: 70px;
}
table, th, td {
    border: 1.5px dotted white;
    border-collapse: collapse;
    background-color:black;
}
 td {
color:white;
    padding: 5px;
    text-align: left;
}
th{
color:violet;
}
table#t01 tr:nth-child(even) {
    background-color: #eee;
}
table#t01 tr:nth-child(odd) {
   background-color:#fff;
}
table#t01 th {
    background-color: #00000073;
    color: white;
}
</style>
<body>
<center>
<h1 style="color:white;">PAID DETAILS</h1></center>
<button class="btn btn-outline-danger" onclick="history.back()" style="float:right;">Back</button>
<table class = "table table-bordered">

   
   <thead>
      <tr>
      <th>BILL ID</th>
      <th>CLIENT NAME</th>
         <th>CLIENT EMAIL</th>
         <th> CARD </th>
          <th>CARD NUMBER</th>
         <th>PAID AMOUNT</th>
        
       
      </tr>
   </thead>

   <%
	Connection d = dbcon.create();
	PreparedStatement p = d.prepareStatement("SELECT * FROM `bc05-22`.bill  ");
	ResultSet s=p.executeQuery();

		while(s.next())
		{									
			String cname=s.getString(2);
			String cemail=s.getString(3);
			String service=s.getString(5);
			String type=s.getString(6);
			String payment=s.getString(7);
			String paid=s.getString(8);
		%>
	<tr>
	 <tr>
		<td><%=s.getString(2)%></td>
	<td><%=s.getString(4)%></td>
	<td><%=s.getString(5)%></td>
	<td><%=s.getString(11)%></td>
	<td><%=s.getString(15)%></td>
<td><%=s.getString(9)%></td>

	<%}%>
</table>
</body>
</html>