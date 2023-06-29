<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login here</title>
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" /> 
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all" /> 
<script src="text/javascript" src='js/jquery-3.6.0.min.js'></script>
<script src="text/javascript" src='js/bootstrap.min.js'></script>
</head>
<style>
.form-group{
width:20%;

}
.container-well{
padding:150px;
 
}
body{
 background-color: ; 
background-image: url("image/bc11.jpg");
background-size: 100%;
background-Position:99% 1%;
}
</style>
<body>
<center>
<div class="container-well">
<form action="manageac.jsp" method="post">
  <h2>Login form</h2>
    <div class="form-group">
      <label for="usr">Email:</label>
      <span class="glyphicon glyphicon-envelope"></span>
      <input type="email" class="form-control" name="email" id="usr">
    </div>
    <div class="form-group">
      <label for="pwd">password:</label>
      <span class="glyphicon glyphicon-lock"></span>
      <input type="password" class="form-control" name="pass" id="pwd">
    </div>
        <input type="submit" class="btn btn-primary" value="Login">
     
        </form>
        </div>
        </center>
</body>
</html>