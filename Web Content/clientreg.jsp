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
   margin-right:300%;
}
.UN{
color:white;}
h3{
color:red;
}
</style>

</head>
<body>
<center>
<h3> Client Register Here!!!</h3>
</center>
<div class="mydiv">
<button onclick="history.back();" class="btn btn-danger">Go To Login</button>
</div>
<br><br><br>
<center>
<form action="clientreg" method="post">
<script>
{
var today = new Date();
var date = today.getFullYear()+'-'+(today.getMonth()+1)+'-'+today.getDate();
var time = today.getHours() + ":" + today.getMinutes() + ":" + today.getSeconds();
var dateTime = date+' '+time;

}</script>
<div class="form">
        <div class="column1">
          
            <input type="date" placeholder="today date" value="date.value" id="date" onclick="date()" required "style="color:red;">
            
            <input type="email" placeholder=" your name " name="email" id="UN" required>
           
            <input type="password" placeholder=" password" name="phonenumber" id="password1" required>
          
            <input type="password" placeholder="Confirm password" name="password" id="password2" required>
           
           
        </div>
        
    </div>
    <input type="submit" value="register" style="margin-right:300%;">
                                         </form>
                                         </center>
                                         </body>
                                         
</html>