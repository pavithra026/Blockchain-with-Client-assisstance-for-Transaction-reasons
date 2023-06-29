<html lang="en">
<head>
<script type="text/javascript" src="https://github.com/rubyeffect/easy_fill/tree/master/lib/easy_fill-0.0.1.min.js"></script>
  <title>Reach Me</title>
  <link rel="stylesheet" type="text/css" href="appointment.css" />
  <link rel="stylesheet" href="css/bootstrap.min.css">
</head>
<style>
body
{
	background-image:url (image/5a.jpg);
	background-size:cover;
	background-size:100%,100%;
}
#body_header
{

	width:auto;
	margin:0px auto;
	text-align:center;
	font-size:25px;
}
form {
  max-width: 300px;
  margin: 10px auto;
  padding: 10px 20px;
  background: #f4f7f8;
  border-radius: 8px;
}

h1 {
  margin: 0 0 30px 0;
  text-align: center;
}

input[type="text"],
input[type="password"],
input[type="date"],
input[type="datetime"],
input[type="email"],
input[type="number"],
input[type="search"],
input[type="tel"],
input[type="time"],
input[type="url"],
textarea,
select {
  background: rgba(255,255,255,0.1);
  border: none;
  font-size: 16px;
  height: auto;
  margin: auto;
  outline: 0;
  padding: 8px;
  width: 100%;
  background-color: #e8eeef;
  color: black;
  box-shadow: 0 1px 0 rgba(0,0,0,0.03) inset;
  margin-bottom: 30px;
}

input[type="radio"],
input[type="checkbox"]

{
  margin: 0 4px 8px 0;
}

select {
  padding: 6px;
  height: 32px;
  border-radius: 2px;
}

button {
  padding: 19px 39px 18px 39px;
  color: #FFF;
  background-color: #4bc970;
  font-size: 18px;
  text-align: center;
  font-style: normal;
  border-radius: 5px;
  width: 100%;
  border: 1px solid #3ac162;
  border-width: 1px 1px 3px;
  box-shadow: 0 -1px 0 rgba(255,255,255,0.1) inset;
  margin-bottom: 10px;
}

fieldset {
  margin-bottom: 30px;
  border: none;
}

legend {
  font-size: 1.4em;
  margin-bottom: 10px;
}

label {
  display: block;
  margin-bottom: 8px;
}

label.light {
  font-weight: 300;
  display: inline;
}

.number {
  background-color: #5fcf80;
  color: #fff;
  height: 30px;
  width: 30px;
  display: inline-block;
  font-size: 0.8em;
  margin-right: 4px;
  line-height: 30px;
  text-align: center;
  text-shadow: 0 1px 0 rgba(255,255,255,0.2);
  border-radius: 100%;
}



  form {
    max-width: 480px;
  }


</style>

<body>
<div class="fixed-top">
<button class="btn btn-danger " onclick="history.back()" style="float:right;width:70px;margin-right:20px;">Back</button>
</div>
<% String email=session.getAttribute("uname").toString(); %>
  <div id="container">
    <!--This is a division tag for body container-->
    <div id="body_header">
      <!--This is a division tag for body header-->

      <p>Make your appointments more easier</p>

    </div>
    <form action="forms" method="post">
      <fieldset>
      
        <label for="name">Client Name</label>
        <input type="text" id="name" name="cname" placeholder="Client Name" required>
        
         <label for="mail">Email</label>
        <input type="email" id="mail"  value="<%=email %>" name="email" placeholder="" required>
        
        <label for="tel">Contact Num</label>
        <input type="tel" id="tel" placeholder="Number" name="tel">



 <label for="city">Address</label>
        <textarea type="text" id="skype_name" name="address" placeholder="Client Address" ></textarea>
        
        
     

        <label for="appointment_for">Service Catagories</label>
        <select id="appointment_for" name="cate" required>
          <option value="Cloud Services">Cloud Services</option>
          <option value="Data Backup Services">Data Backup Services</option>
          <option value="Graphics program">Graphics program</option>
          <option value="Application software">Application software</option>
          
        
        </select>
         <label for="date">Date*:</label>
        <input type="date" name="date" value="" required></input>
        
        <label for="duration">Service Catagories</label>
        <input type="radio" name="service" value="Full service" checked> Full Service
        <input type="radio" name="service" value="Partial Service"> Partial Service
        
      
  
  
      </fieldset>
      <button type="submit" onclick="myFunction()">Submit And Confirmation</button>
    </form>
  </div>
</body>
<script>
function myFunction() {
  alert("Applied Successfully");
}
</script>

</html>