<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" /> 
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all" > 
<script src="text/javascript" src='js/jquery-3.6.0.min.js'></script>
<script src="text/javascript" src='js/bootstrap.min.js'></script>

</head>
<style>
body{ 
background-image:url("image/40.jpeg");
background-image: cover;
background-size: 100%,100%;

}
input{
 
}
.dropbtn {
  background-color: #4CAF50;
  color: white;
  padding: 16px;
  font-size: 16px;
  border: none;
  cursor: pointer;
}

.dropdown {
  position: relative;
  display: inline-block;
}

.dropdown-content {
  display: none;
  position: absolute;
  right: 0;
  background-color: #f9f9f9;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
}

.dropdown-content a:hover {background-color: #f1f1f1;}

.dropdown:hover .dropdown-content {
  display: block;
}

.dropdown:hover .dropbtn {
  background-color: #3e8e41;
}
</style>
<body>
<% String email=session.getAttribute("uname").toString(); %>
<button onclick="history.back()" class="btn btn-danger" style="float:right">Back</button>
<center>
<div class="dropdown" style="float:center;">
  <button class="drop btn btn-primary"><%out.println(email); %></button>
  <div class="dropdown-content" style="left:0;">

  <a href="form.jsp">FORM</a>
  <a href="clientview.jsp">APPOINTMENT</a>
    <a href="paymentclient.jsp">PAYMENT</a>
    <a href="paidincoice.jsp">PAID INVOICE</a>
    <a href="delivery.jsp">DELIVERY DATE</a>
    <a href="clientfile.jsp">SERVICED FILE</a>
  <a href="rev.jsp">FEED BACK</a>
  <a href="index.jsp">LOGOUT</a>
  </div>
</div>



  

</center>
</body>
</html>