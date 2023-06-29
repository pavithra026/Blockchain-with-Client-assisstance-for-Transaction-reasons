<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<Link rel="stylesheet" href="css/bootstrap.min.css">
<%String mail=request.getParameter("cmail");
String fs=request.getParameter("filesize");
String b=request.getParameter("a");
%>
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
    border-bottom: solid 1px rgba(0,0,0,0.3);
    padding: 15px;
   
    margin-bottom: 30px;
    display: block;
    
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
    width: 101px;
    margin-left: 560px;
    height: 20px;
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
.card{
width:50%;
height:60%;
background-color:white;


}
</style>
</head>
<body>
<center>
<h3> Client Service Bill !!!</h3>
</center>
<div class="mydiv">
<button onclick="history.back();" class="btn btn-danger" style="float:right;">Back</button>
</div>
<br><br><br>
<center>
<div class="card">
<h3>Bill Card</h3>
<form action="managebill" method="post">
<div class="form">
        <div class="column1">
       
         <label style="color:red;margin-right:40%;margin-top:2%;">Bill No:</label>
          <input type="number" placeholder="Bill No" name="idno" id="dno"  required style="color:red;margin-right:35%;width:100px;">
   
          <input type="date" placeholder="today date" value="" id="date" name="date" onclick="date()" required style="color:red;margin-left:35%;margin-top:-7%;width:200px;">
          
                   <label style="margin-right:30%;margin-top:2%;">Client Name:</label>
            <input type="text" placeholder=" Client name " name="name" id="UN" required 	style="margin-top:-2%;margin-right:20%">
          
          
                   <label style="margin-right:30%;margin-top:2%;">Client Email:</label>
                     <input type="email" placeholder=" Client Email " name="email" value=<%=mail%> id="UN" required style="margin-top:-2%;margin-right:20%">
           
              <label style="margin-right:30%;margin-top:2%;">Product Quantity:</label>
               <input type="number" placeholder="" name="quantity" id="quan" required style="margin-top:-2%;margin-right:20%">
          
          <label style="margin-right:30%;margin-top:2%;">cost per Size:</label>
            <input type="text" placeholder=""  name="costps" id="cps"  onchange='multiply()' required style="margin-top:-2%;width:150px;margin-right:20%">
          
          
                     <label style="margin-right:30%;margin-top:-10%;margin-right:-300px;">File Size:</label>
           <input type="number" placeholder=""  name="fsize" value="<%=fs%>" id="quant"   required style="margin-top:-8%;width:150px;margin-right:20%;margin-right:-400px;">
          <center>
           <label style="margin-right:30%;margin-top:2%;margin-right:-5%;">Total Amount</label>          
          <input type="text" id="tot" name="price"  required style="width:150px; margin-right:-5%;margin-top:-2%;">
                 </center>
           <input type="submit" value="Submit" Style="margin-right:500px;height:30px;">
        </div>
        </div>
        </div></center>
       </form>
            </body>
                                         <script>
                                         function multiply(){
                                          if((document.getElementById('cps').value)) {
                                       	  var ans=(document.getElementById('cps').value)*(document.getElementById('quant').value);
                                       	  console.log(ans);
                                    	  document.getElementById('tot').value=ans;
                                          }
                                    	  
                                      }</script>
                                         
                                         
</html>