<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="dbcon.dbcon"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<%@page import="java.io.FileInputStream" %>
<%@page import="java.io.IOException" %>
<%@page import="java.io.PrintWriter" %><html ng-app="ionicApp">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="initial-scale=1, maximum-scale=1, user-scalable=no, width=device-width">
    
    <title>Rate Stras</title>

    <link href="//code.ionicframework.com/nightly/css/ionic.css" rel="stylesheet">
    <script src="//code.ionicframework.com/nightly/js/ionic.bundle.js"></script>
    <style>
    @import url('https://fonts.googleapis.com/css2?family=Acme&display=swap');
*{
    padding: 0; margin: 0;
    box-sizing: border-box;
    font-family: 'Acme', sans-serif;
    user-select: none;
}
.content{
    display: flex;
    align-items: center;
    
     min-height: 100vh;
}
.container{
    
    display: flex;
    flex-direction: column;
    width: 400px;
   
    justify-content: space-evenly;
    margin-top:-400px;
}
.mid{
    display: flex;
    flex-wrap: ;
    justify-content: space-evenly;
   
}
.head, .mid, .textarea, .end{
    padding: 15px;
}
img{
    height: 50px; width: 50px;
    cursor: pointer;
    background-color: rgba(233, 212, 97, 0.507);
    border-radius: 50%;
    transition: 0.1s linear;
}
img:hover{
    background-color: gold;
    transform: scale(1.2);
}


.textarea p{
    font-size: 18px;
}

.end{
    
}
.btn{
   
    
}

.skp{
    transition: 0.1s linear;
    border: 1px solid black;
}
.skp:hover{
    background-color: black;
    color: white;
}
.sub:hover{
    background-color: black;
    border: 1px solid black;
    color: white;
}
    </style>
   
  </head>
  <body>
  <div class="head">
                <div class="heading"><h1>FEEDBACK VIEW</h1></div>
               
            </div>
    <div class="content">
        <div class="container">
            
             <%
       
       Connection con;
       
       
       con=dbcon.create();
       PreparedStatement ps=con.prepareStatement("SELECT * FROM `bc05-22`.`feed`");
       ResultSet rs=ps.executeQuery();
       
       while(rs.next())
       {
     String rat=rs.getString(2);
     System.out.println(rat);
     String rate[]=rat.split(".");
    
    	
    	   
       %>
       <script>
       
    	   const element = rat;
    	   document.writeln(rat);
    	  
    	   
    	   if (element.equals("1.angry")) {
    	   
    	     document.getElementById("1").className.value = "active";
    	   } 
    	   else if (element.equals("2.moderate")) {
      	  
      	     document.getElementById("2").className.value = "active";
      	   }
    	   else if (element.equals("3.neutral")) {
      	   
      	     document.getElementById("3").className.value = "active";
      	   }
    	   else if (element.equals("4.smile")) {
    		   
    		    
      	    const rar=document.getElementById("4");
      	    rar.className = "active";
      	   }else {
    	   
    	     document.getElementById("5").className.value = "active";
    	   }
    	 </script>
  
  
    <h4 style="margin-left:20px;"><p>Email:</p><%= rs.getString(1)%></h4>
          <div class="rate">
            <div class="mid">
                <div class="media"><img src="https://cdn-icons-png.flaticon.com/128/3260/3260838.png" name="rat" value="1" alt="angry" id="1"  class="active" ></div>
                <div class="media"><img src="https://cdn-icons-png.flaticon.com/128/42/42901.png" name="rat" value="2"  alt="moderate" id="2" class="" ></div>
                <div class="media"><img src="https://cdn-icons-png.flaticon.com/128/3260/3260877.png" name="rat" value="3"  alt="neutral" id="3" class="" ></div>
                <div class="media"><img src="https://cdn-icons-png.flaticon.com/128/569/569501.png" name="rat" value="4"  alt="smile" id="4" class="" ></div>
                <div class="media"><img src="https://cdn-icons-png.flaticon.com/128/1356/1356639.png" name="rat" value="5"  alt="happy" id="5" class="" ></div>
            </div>
              <div class="textarea">
                
                 <div class="col-md-9 g-mb-30">
        <p><%= rs.getString(2)%></p>
               
    </div>
            </div> </div>
            <div class="textarea">
                <p>Shared experience:</p>
                 <div class="col-md-9 g-mb-30">
        <p><%= rs.getString(3)%></p>
               
    </div>
            </div> </div>
                       <div class="end">
                
                
                
            </div>
           
           <%} %>
        </div>
    </div>
  </body>
</html>
<!-- <script>
function myFunction() {
  const element = document.getElementById("1");
  
  if (element.className == "") {
    element.className = "active";
    document.getElementById("val").value="1.angry";
  } else {
    element.className = "";
    document.getElementById("val").value="";
  }
}
function myFunctio() {
	  const element = document.getElementById("2");
	  
	  if (element.className == "") {
	    element.className = "active";
	    document.getElementById("val").value="2.moderate";
	  } else {
	    element.className = "";
	    document.getElementById("val").value="";
	  }
	}
	 
function myFuncti() {
	  const element = document.getElementById("3");
	  
	  if (element.className == "") {
	    element.className = "active";
	    document.getElementById("val").value="3.neutral";
	  } else {
	    element.className = "";
	    document.getElementById("val").value="";
	  }
	}
	 
function myFunct() {
	  const element = document.getElementById("4");
	  
	  if (element.className == "") {
	    element.className = "active";
	    document.getElementById("val").value="4.smile";
	  } else {
	    element.className = "";
	    document.getElementById("val").value="";
	  }
	}
	 
function myFunc() {
	  const element = document.getElementById("5");
	  
	  if (element.className == "") {
	    element.className = "active";
	    document.getElementById("val").value="5.happy";
	  } else {
	    element.className = "";
	    document.getElementById("val").value="";
	  }
	}
	 
 
</script> -->
