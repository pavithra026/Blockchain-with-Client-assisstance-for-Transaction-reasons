<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>RegistrationForm_v1 by Colorlib</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		
		<!-- MATERIAL DESIGN ICONIC FONT -->
		<link rel="stylesheet" href="fonts/material-design-iconic-font/css/material-design-iconic-font.min.css">

		<!-- STYLE CSS -->
		<link rel="stylesheet" href="css3/style.css">
	</head>
<style>
a{
text-decoration:none;
color:black;
}
</style>
	<body>

		<div class="wrapper" style="background-color:black;">
			<div class="inner">
				<div class="image-holder">
					<img src="image/36.jpeg" style= "margin:20px; width:300px; height:300px;" alt="">
				</div>
				<form action="teamlog" method="post"> 
				
					<h3>SERVICE TEAM LOGIN !!</h3>
				
					<div class="form-wrapper">
						<select name="team" id="cars" class="form-control"><br><br>
  <option value="Cloud Services">Cloud Services</option>
  <option value="Data Backup Services">Data Backup Services</option>
  <option value="Graphics program">Graphics program</option>
  <option value="Application software">Application software</option>

</select>

						<i class="zmdi zmdi-star zmdi-hc-fw"></i>
					</div>
					
					<div class="form-wrapper">
						<input type="text" placeholder="Password" name="regid" class="form-control">
						<i class="zmdi zmdi-lock"></i>
					</div>
					
					<button>Login
						<i class="zmdi zmdi-arrow-right"></i>
					</button><br>
				
				</form>
			</div>
		</div>
		
	</body>
</html>