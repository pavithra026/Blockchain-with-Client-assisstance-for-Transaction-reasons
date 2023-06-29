<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="dbcon.dbcon"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement" %>
 <%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
   <%@ page import="java.util.*" %>
    <%@ page import="java.util.Random" %>
    <%@ page import="javax.servlet.http.HttpSession" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="css1/bootstrap.min.css">
        <script type="text/javascript" src="js/jquery.min.js"></script>
        <script type="text/javascript" src="js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/bootstrap.min.css">
<title>QR-Code Generator</title>
<style>
*{margin:0px; padding:0px;font-family: Helvetica, Arial, sans-serif;}

input[type=text]{
    width: 90%;
    padding: 12px 20px;
    margin: 8px 26px;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
	font-size:16px;
}
button {
       background-color: #b71b1b;
    color: white;
    padding: 6px 22px;
    margin: 10px 37px;

    border: none;
    cursor: pointer;
  width: 61%;
    height: 46px;
	font-size:20px;
}
button:hover {
    opacity: 0.8;
}
th{
text-align:center;
}
</style>
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>

<button onclick="history.back();" class="btn btn-danger" style="width:100px; float:right;">back</button>
<body >

<center>

<div class="col-sm-2"></div>
        <div class="col-sm-8">
        
        <center>
        <table class="table table-bordered" style="margin-top: 100px">
        <tr>
        
       
               
        <th>Client Email</th>
        <th>Filename</th>
        <th>Filesize</th>
	    <th>Filetype</th>    

        <th>Download</th>   
         <th>Payment Details</th>   
        </tr>
             <% 
             
 String sno="";
 String file="";
 String a="0.02";
 


Connection con = dbcon.create();
PreparedStatement p = con.prepareStatement("SELECT * FROM `bc05-22`.`upload` where status='Forward'");
ResultSet rs=p.executeQuery();

	while(rs.next())
	{									
		sno=rs.getString(1);
	
		file=rs.getString(8);
	%>
	<tr>
<td><%=rs.getString(2)%></td>
<td><%=rs.getString(6)%></td>
<td><%=rs.getString(8)%></td>
<td><%=rs.getString(9)%></td>

 
        
       

<td><a href="managedownloadjava.jsp?fname1=<%=rs.getString(6)%>"><button class="btn-btn-info btn-sm"> Download</button></a></td>
<td> <a href="addcartmanage.jsp?cmail=<%=rs.getString(2)%>&&filesize=<%=rs.getString(8)%>"><button class="btn btn-outline-danger">Bill</button></a></td>
</tr>
<%}%>
            </table>
        </center>
        </div>
        <div class="col-sm-2"></div>
            </center>
                 </div>
     



 </div>
</center>  
</body>
</html>