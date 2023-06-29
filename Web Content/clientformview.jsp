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
<link rel="stylesheet" href="css/bootstrap.min.css">
</head>
<style>

    body
    {
   background-color:lightpink ;
 height: 606px;
    }
table, th, td {
    font-family:Philosopher;
    border: 3px double black;
    border-collapse: collapse;
    text-align: center;  
    color:black;
    font-size:20px;

}

 a {
  font-size:34px;
  font-family:Times new roman;
  display: block;
  color: black;
  text-align: center;
  margin-left:10%;
  margin-top: 3%;
}
</style>
<body>

<table class = "table table-bordered">

   
   <thead>
      <tr>
         <th>ID No</th>
         <th>COMPANY NAME</th>
         <th>CLIENT EMAIL</th>
         <th>CONTACT NUMBER</th>
          <th>ADDRESS</th>
         <th>SERVICE TYPE </th>
       <th>DATE </th>
         <th>FORWORD</th>
      </tr>
   </thead>
   
   
	<%
	Connection d = dbcon.create();
	PreparedStatement p = d.prepareStatement("SELECT * FROM `bc05-22`.`apply` where status='Apply' ");
	ResultSet s=p.executeQuery();

		while(s.next())
		{									
			
		
			
		%>
	<tr>
	 <tr>
	<td><%=s.getString(1)%></td>
	<td><%=s.getString(2)%></td>
	<td><%=s.getString(3)%></td>
	<td><%=s.getString(4)%></td>
	<td><%=s.getString(5)%></td>
	<td><%=s.getString(6)%></td>
	<td><%=s.getString(7)%></td>
	
	
	
<td><a href="Forward.jsp?id=<%=s.getString(1)%>"><button class="btn btn-primary" onclick="myFunction()">Forward</button></a></td>
	<%-- <td><a href="teamview.jsp?team=<%=s.getString(8)%>&&date=<%=s.getString(9) %>&&filename=<%=s.getString(11)%>&&filesize=<%=s.getString(13)%>"><button class="btn btn-primary">SEND</button></a></td> --%>
	
	<%}%>
</table>
</body>
<script>
function myFunction(){
	alert("Forward ");
	
}
</script>
</html>