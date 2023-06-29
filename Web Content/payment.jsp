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

ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: #ffb84d;
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
color: orange; 
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
 height: 40px;
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
<% String amount=request.getParameter("tot"); 
String id=request.getParameter("id");%>
<ul>
  
   <li><a href="index.jsp">Logout</a></li>

   
   
</ul>

<br>

<div class="myDiv2"><center>
Payment Page<br><br>
</div>
<div class="myDiv">
<center>
<form action="payac.jsp" name="form1" onsubmit="required()">
<input type="text" value="Paid" name="amount" style="width:180px;height:30px;border-radius: 10px;text-align:center;" readonly>

<br><br><br>

<table>
<tr>
<td><input type="hidden" value="<%=id %>" name="id" style="width:180px;height:30px;border-radius: 10px;text-align:center;" ><br><br></td>

<td><input type="hidden" value="<%=amount %>" name="amt" style="width:180px;height:30px;border-radius: 10px;text-align:center;" ><br><br></td>
</tr>



<tr>
<td><input type="radio" id="ccard" name="gender" value="ccard" style="width:70px;height:20px">Credi Card
<input type="radio" id="dcard" name="gender" value="dcard" style="width:70px;height:20px">Debit Card</td>
</tr>

<tr>
<td><input type="text"  placeholder="cardholdername" name="cardholdername" style="width:180px;height:30px;border-radius: 10px;text-align:center;" ><br><br></td>
</tr>

<tr>
<td><input type="text"  placeholder="cadrnumber" name="cadrnumber" style="width:180px;height:30px;border-radius: 10px;text-align:center;" ><br><br></td>
</tr>

<tr>
<td><input type="text"  placeholder="expirydate" name="expirydate" style="width:180px;height:30px;border-radius: 10px;text-align:center;" ><br><br></td>
</tr>

<tr>
<td><input type="text"  placeholder="cvvnumber" name="cvvnumber" style="width:180px;height:30px;border-radius: 10px;text-align:center;" ><br><br></td>
</tr>

<tr>
<td colspan="2"><input type="submit" value="Submit" style="width:110px;height:40px;border-radius: 10px;text-align:center; background-color: #ffb84d"></td>
</tr>


</table>


</form>
</center>
</div>
</body>
</html>