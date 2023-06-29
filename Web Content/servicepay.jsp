<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
        <link rel="stylesheet" href="css/bootstrap.min.css">
        
        <script type="text/javascript" src="js/jquery.min.js"></script>
        <script type="text/javascript" src="js/bootstrap.min.js"></script>
</head>
<style>
body {
 background-color: #819498; 
 font-family: Tahoma;
  padding-top: 5%;
}
main {
  text-align: center;
  padding: 70px;
  background: #16a085;
  box-shadow: 0 10px 20px rgba(0, 0, 0, 0.19), 0 6px 6px rgba(0, 0, 0, 0.23);
}

select {
  width: 250px;
  cursor:pointer;
}
input{
width:10%;
  padding: 12px 20px;
}
select{
width:10%;
  padding: 10px 15px;
}
</style>
<body>
<form action="service" method="post">
<center>
<div class="container">
<%

String cname=request.getParameter("cname");
String cemail=request.getParameter("cemail");
String cnumber=request.getParameter("cnumber");
String service=request.getParameter("service");
String tservice=request.getParameter("stypes");
%>
<div class="container">
<input type="text" value="<%=cname %>" name="cname" style="width:280px;height:40px;border-radius: 10px;text-align:center;">  <br><br>
<input type="hidden" value="<%=cemail %>" name="cemail" style="width:280px;height:40px;border-radius: 10px;text-align:center;"> <br>
<input type="hidden" value="<%=cnumber %>" name="cnumber" style="width:280px;height:40px;border-radius: 10px;text-align:center;"> 
<input type="text" value="<%=service %>" name="cservice" style="width:280px;height:40px;border-radius: 10px;text-align:center;"> <br><br>


 
</div>
<br>
<div onload="resetSelection()">
    <select id="category" size="1" name="types"  onchange="makeSubmenu(this.value)" style="width:280px;height:40px;border-radius: 10px;text-align:center;">
<option value="service" disabled selected>Choose service</option>
<option value="Partial" >Partial </option>
<option value="full">full  </option>
</select>
    <select id="categorySelect" name="amount" size="1" style="width:280px;height:40px;border-radius: 10px;text-align:center;">
<option value="Amount" disabled selected> Amount</option>
<option></option>
</select>
    <input type="submit" value="submit" style="width:100px;height:40px;border-radius: 10px;text-align:center;">
</div>
</center>
</form>
</body>

<script >
        var subcategory = {
        		Partial : ["2500", "4000", "5000"],
        		full : ["5000", "7500", "10000"]
        }

        function makeSubmenu(value) {
            if (value.length == 0) document.getElementById("categorySelect").innerHTML = "<option></option>";
            else {
                var citiesOptions = "";
                for (categoryId in subcategory[value]) {
                    citiesOptions += "<option value="+subcategory[value][categoryId]+">" + subcategory[value][categoryId] + "</option>";
                }
                document.getElementById("categorySelect").innerHTML = citiesOptions;
            }
        }

     /*    function displaySelected() {
            var country = document.getElementById("category").value;
            var city = document.getElementById("categorySelect").value;
            alert(country + "\n" + city);
        } */

        function resetSelection() {
            document.getElementById("category").selectedIndex = 0;
            document.getElementById("categorySelect").selectedIndex = 0;
        }
    </script>
</html>