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
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style>
body {
   margin: 0;
   font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
   background-image:url("image/38.jpeg");
   background-size:cover;
   
}
nav {
   margin: 0;
   padding: 0;
   width: 250px;
   background-color: #101615;
   position: fixed;
   height: 100%;
   overflow: auto;
}
nav a {
   display: block;
   color: rgb(255, 255, 255);
   font-weight: bolder;
   font-size: 20px;
   padding: 16px;
   text-decoration: none;
   font-family: "Times New Roman", Times, serif;
}
nav a.selected {
      background-color: rgb(235 231 228);
    color: rgb(56 5 5 / 78%);
}
nav a:hover:not(.selected) {
   background-color: white;
   color: #2f77e4;
}
div.content {
   margin-left: 200px;
   padding: 1px 16px;
   height: 1000px;
}
@media screen and (max-width: 700px) {
nav {
   width: 100%;
   height: auto;
   position: relative;
}
nav a {float: left;}
div.content {margin-left: 0;}
}h1{
margin: 180px 8px 27px 54px;
color:white;
}
</style>
</head>
<%
       
       Connection con;
       
       
       con=dbcon.create();
       PreparedStatement ps=con.prepareStatement("SELECT count(*) FROM `bc05-22`.`apply` where status='Apply'");
       
       ResultSet rs=ps.executeQuery();
       
       while(rs.next())
       {
    
    	   int cout=rs.getInt(1);  
       
	   
       %>
       <% PreparedStatement ps1=con.prepareStatement("SELECT count(*) FROM `bc05-22`.bill  where status='paid' and status!='forwarded'");
       
       ResultSet rs1=ps1.executeQuery();
       
       while(rs1.next())
       {
    
    	   int couts=rs1.getInt(1);  
        %>
<body>
<%-- <%
int count=0;
%> --%>

<nav class="sideBar">
<a class="active" href="">HOME</a>
<a  href="serteam.jsp">ADD SERVICE TEAM</a>
<a  href="clientformview.jsp">CLIENT FORM(<%=cout %>)</a>
<a  href="servicefile.jsp">SERVICE FILE</a>
<a href="clientpayment.jsp">CLIENT PAYMENT(<%=couts %>)</a>
 <a href="clientpaidhistory.jsp">CLIENT PAID HISTORY</a> 
  <a href="feedbackview.jsp">FEEDBACK VIEW</a> 
  <a href="overallclient.jsp">OVERALL CLIENT VIEW</a>
<a  href="index.jsp">LOGOUT</a>


</nav>
<div class="content">
<center>
<h1>MANAGEMENT</h1>
</center>

</div>
<%}
       } %>
</body>
</html>
