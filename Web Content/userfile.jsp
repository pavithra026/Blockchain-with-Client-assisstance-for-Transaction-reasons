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
body{
background-color: #1fe0;
  
}
center{
padding:50px;
}
table,td,th {
  border: 2px solid black;
  
}
table {
  border-collapse: collapse;
  width: 100%;
}

td {
  text-align: center;
 height: 40px;
}
th{
  text-align: center;
 height: 30px;
 color: #085d36;
}
button{
color:red;
}
</style>

<body>
<%Random r=new Random(); 
	 String key2="1234567890";
		 					char c1=key2.charAt(r.nextInt(key2.length()));
		 					char c2=key2.charAt(r.nextInt(key2.length()));
		 					char c3=key2.charAt(r.nextInt(key2.length()));
		 					char c4=key2.charAt(r.nextInt(key2.length()));
		 					char c5=key2.charAt(r.nextInt(key2.length()));
		 					
		 					String t6=""+c1+""+c2+""+c3+""+c4+""+c5; %>
<%
String cname="";
String id="";
String email="";
String filename=""; 
String team="";
String date="";
      String filecontent="";                                                
%>
<center>
<button  style="float:right;"  onclick="history.back()" class="btn btn-warning"> Goto Back</button>
</center>
  <div class="container-fluid">  
<table class="table-dark">

 <thead>
 
    <tr>
    <th scope="col">CLIENTNAME</th>
    <th scope="col">EMAIL</th>
<th scope="col">SERVICES</th>
     
       <th scope="col">DATE        </th>
      <th scope="col">Appointed</th>
    </tr>
  </thead>
  <% String tname=session.getAttribute("umail").toString(); %>
  <% 
Connection d = dbcon.create();
PreparedStatement p = d.prepareStatement("SELECT * FROM `bc05-22`.`apply` where services='"+tname+"' and status='Forward' ");
ResultSet s=p.executeQuery();

	while(s.next())
	{
		id=s.getString(1);
		cname=s.getString(2);

		team=s.getString(8);
	
	%>
<tr>
<td><%=s.getString(2)%></td>
<td><%=s.getString(3)%></td>

<td><%=team%></td>
<td><%=s.getString(7)%></td>

<td style="text-align: center;"><a href="require.jsp?key=<%=t6%>&&id=<%=s.getString(1)%>"><button onclick="myFunction()" class="btn btn-primary">Appointed</button></a></td>
 
</tr>


<%}%>







</table>

</div>


</body>
<script>
function myFunction() {
  alert("Appointment send");
}
</script>
</html>