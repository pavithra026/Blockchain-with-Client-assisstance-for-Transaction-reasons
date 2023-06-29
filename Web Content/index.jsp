<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/bootstrap.min.css">
<style>
body{
background-image:url("image/32.jpeg");

background-size: 100%,100%;
}
ul {
  list-style-type: none;
  margin: 0;
  padding: 0px;
  overflow: hidden;
  background-color:#5fa6c7;
}

li {
  float: left;
}

li a {
  display: block;
  color: blue;
 font-size:20px;
  text-align: center;
  padding: 10px 20px;
  text-decoration: none;
}
.active{
background-color: gray;
color: white;
}
li a:hover {
  background-color: orange;
  color: white;
}
a{
 text-decoration: none;

 }
</style>
</head>
<body>

<ul>
  <li><a class="active" href="#home">Home</a></li>
  <li><a href="client.jsp">CLIENT</a></li>
  <li><a href="serteamlog.jsp">SERVICE TEAM</a></li>
  <li><a href="management.jsp">MANAGEMENT</a></li>
</ul>
<center>
 
 </center>
</body>
</html>