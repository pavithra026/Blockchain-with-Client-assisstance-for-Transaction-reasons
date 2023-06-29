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

<body>
<button class="btn btn-primary" onclick="history.back();" style="float:right;">Back</button>
<br>
<table class = "table table-dotted">

   
   <thead>
      <tr>
      <th>ID</th>
         <th>CLIENT NAME</th>
         <th>CLIENT MAIL</th>
         <th>CONTACT NUMBER</th>
         
          <th>RESPONSE TEAM</th>
                    <th>Upload key</th>
      <th>UPLOAD REQUIREMENT</th>
     
      </tr>
   </thead>
<% String email=session.getAttribute("uname").toString(); %>
   <%
	Connection d = dbcon.create();
	PreparedStatement p = d.prepareStatement("SELECT * FROM `bc05-22`.`apply` where email='"+email+"'");
	ResultSet s=p.executeQuery();

		while(s.next())
		{									
			String cname=s.getString(1);
			String cemail=s.getString(2);
			String cnumber=s.getString(3);
		
			
		%>
	<tr>
	 <tr>
		<td><%=s.getString(1)%></td>
	<td><%=s.getString(2)%></td>
	<td><%=s.getString(3)%></td>
		<td><%=s.getString(4)%></td>
	<td><%=s.getString(6)%></td>
		<td><%=s.getString(10)%></td>

 <td><a href="Upload.jsp?id=<%=s.getString(1) %>&&filekey=<%=s.getString(10)%>"><button class="btn btn-default">REQUIRMENT</button></a></td>
	
	<%}%>
</table>
</body>
</html>