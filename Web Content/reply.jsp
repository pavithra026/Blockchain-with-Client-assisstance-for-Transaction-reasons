<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>


<style>
body{
background-color:lightblue;
}

ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: #1b1a18;
}

li {
  float: right;
  padding-right:95px;
}

li a {
  display: block;
  color: white;
  text-align: center;
  text-style:bold;
  padding: 14px 16px;
  text-decoration: none;
}



.myDiv {
  border: 5px outset orange;
  background-color: lightblue;    
  border-radius: 10px;
  width:600px;
  height:400px;
  margin: auto;
  padding-top:30px;
  box-shadow: 25px 20px 20px #888888;
  
}

.myDiv2 {
  font-size:25px;  
  font-style: italic;
font-weight: bold;
color: #333029; 
}

table,td,th {
  border: 0px solid black;
  
}
table {
  border-collapse: collapse;
  width: 90%;
}

td {
  text-align: center;
 height: 10px;
}
th{
 height: 30px;
 color: red;
}
table{
border-spacing: 0 15px;
}


</style>
<script type="text/javascript">

function required()
{
var empt1 = document.forms["form1"]["cardholdername"].value;
var empt2 = document.forms["form1"]["cadrnumber"].value;
var empt3 = document.forms["form1"]["expirydate"].value;
var empt4 = document.forms["form1"]["cvvnumber"].value;

if (empt1 == "" ||empt2 == ""||empt3 == ""||empt4 == "")
{
alert("Please input a Value");
//return false;
}
else 
{
alert("Amount was paid");
//return true; 
}
}

</script>

</head>
<body>
<% 
String email=request.getParameter("email");
String filename=request.getParameter("filename"); 
String date=request.getParameter("date");
String id=request.getParameter("id");%>
<ul>
  
   <li><a href="teammain.jsp">Logout</a></li>

   
   
</ul>

<br>

<div class="myDiv2"><center>
Delivery Date Page<br><br>
</div>
<div class="myDiv">
<center>
<form action="deliverydate" name="form1" onsubmit="required()" method="post">

<tr>
<td><input type="hidden" value="<%=id %>" name="id" style="width:180px;height:30px;border-radius: 10px;text-align:center;" ><br><br></td>
</tr>
<tr>
<td><input type="hidden" value="<%=email%>" name="email" style="width:180px;height:30px;border-radius: 10px;text-align:center;" ><br><br></td>
</tr>

<input type="text" value="<%=filename %>" name="amount" style="width:180px;height:30px;border-radius: 10px;text-align:center;" readonly>

<br><br><br>

<table>
<tr>

<td><input type="date" value="<%=date %>" name="app" style="width:180px;height:30px;border-radius: 10px;text-align:center;" readonly ><br></td>
</tr>



<tr>
<td>
<h4>Delivary Date</h4>
<input type="date" id="ccard" name="deli"  style="width:180px;height:30px;border-radius: 10px;text-align:center;">

</tr><br>



<tr>
<td colspan="2"><input type="submit" value="Submit" style="width:110px;height:40px;border-radius: 10px;text-align:center; background-color: #ffb84d"></td>
</tr>


</table>


</form>
</center>
</div>
</body>
</html>