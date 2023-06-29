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

.myDiv2 {
  font-size:25px;  
  font-style: italic;
font-weight: bold;
color:red; 
}

table,td,th {
  border: 2px solid black;
  
}
table {
  border-collapse: collapse;
  width: 90%;
}

td {
  text-align: center;
 height: 40px;
}
th{
 height: 30px;
 color: red;
}

</style>
<button onclick="history.back();" class="btn btn-danger" style="float:right;"> Back</button>
<body>



<center>
<div class="myDiv2">
service Delivery Date
</div>



<br><br><br>
<table>
<!-- <th>Pharmacyname</th> -->
<th>FILE NAME</th>
<th>EMAIL</th>
<th>APPLIED DATE</th>
<th>DELIVERY DATE</th>


<%-- <%


String filename="";
String qtylist="";
String pertabpricelist="";
String descriptlist="";

%>
 --%>
<% String email=session.getAttribute("uname").toString(); %>
<%	

	 Connection d = dbcon.create();
	 PreparedStatement p = d.prepareStatement("SELECT * FROM `bc05-22`.`deliver` where email='"+email+"'");
	ResultSet rp = p.executeQuery();
	
		while (rp.next()){
					
	
		
										
	%>
	<tr>
	 <tr>
		<td><%=rp.getString(2)%></td>
	<td><%=rp.getString(1)%></td>
	<td><%=rp.getString(3)%></td>
	<td><%=rp.getString(4)%></td>
	
	<%
	}		
	%> 
	</tr>
	</table>
	</body>
</html>