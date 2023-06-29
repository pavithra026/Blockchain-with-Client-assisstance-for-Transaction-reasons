<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<Link rel="stylesheet" href="css/bootstrap.min.css">
<title>register</title>
<style>{
    box-sizing: border-box;
    font-family: Arial, Helvetica, sans-serif;
    text-transform: capitalize;
}
body{
    background-color: #ddd;
    background-image:url("image/35.jpeg");
    background-size:cover;
}
.form{
    display: flex;
    justify-content: center;
    gap: 20px;
}
.column1 input,.column2 input,.column2 textarea{
    border: none;
    border-bottom: solid 1px rgba(0, 0, 0, 0.3);
    padding: 15px;
    margin-left: 10px;
    margin-bottom: 30px;
    display: block;
    width: 350px;
}
.column1 label,.column2 label{
    display: inline-block;
    margin-left: 10px;
    margin-bottom: 10px;
    font-weight: bold;
}
input[type="submit"]{
    color: white;
    text-align: center;
    font-size: larger;
    background-color: #009688;
    border: none;
    width: 131px;
    margin-left: 560px;
    height: 50px;
    border-radius: 5px;
    cursor: pointer;
}
input[type="submit"]:hover{
    border: solid #009688 1px;
    background-color: white;
    color: #009688;
}
.UN{
color:white;}
h3{
color:red;
}
</style>
<script>
function date(){
var today = new Date();
var date = today.getFullYear()+'-'+(today.getMonth()+1)+'-'+today.getDate();
var time = today.getHours() + ":" + today.getMinutes() + ":" + today.getSeconds();
var dateTime = date+' '+time;
return datetime;
}</script>
</head>
<body>
<center>
<h3> Client Deadline Here!!!</h3>
</center>
<div class="mydiv">
<button onclick="history.back();" class="btn btn-danger">Go 
Back</button>
</div>
<br><br><br>
<%String mail=request.getParameter("cmail");
String filetype=request.getParameter("filetype");%>

<form action="delivdate.jsp" method="post">
<div class="form">
        <div class="column1">
            <h3>Today Date</h3>
            <input type="date" placeholder="today date" value="" name="tdate" id="date" onclick="date()" required "style="color:red;">
            
            <h3>client Email</h3>
            <input type="email" placeholder="Client Email " name="email" value="<%=mail %>" id="UN" required>
           
           <h3>File Type</h3>
           <input type="text" placeholder="File Name" value="<%=filetype %>" name="fname" id="fname"  required "style="color:red;">
            
           <h3>Delivery Date</h3>
         <input type="date" placeholder="Delivery date" value="" name="ddate" id="ddate" onclick="date()" required "style="color:red;">
            
          
            
           
        </div>
        
    </div>
    <input type="submit" value="register">
                                         </form>
                                         </body>
                                         
</html>