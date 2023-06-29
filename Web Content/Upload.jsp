<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@page import="dbcon.dbcon"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<%@page import="java.io.FileInputStream" %>
<%@page import="java.io.IOException" %>
<%@page import="java.io.PrintWriter" %>
<%@page import="javax.servlet.http.HttpSession"%>
<%@page import="javax.swing.JDialog"%>
<%@page import="javax.swing.JOptionPane"%>
<%@page import="javax.servlet.http.HttpSession"%>
 
 
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript"  src='required'></script>
</head>
<body>

<%
String status="upload";


String key2=request.getParameter("filekey");

String id=request.getParameter("id");

HttpSession sess=request.getSession();
sess.setAttribute("cid", id);

System.out.println("keyyy"+key2);   
JOptionPane joptionpane =new JOptionPane("CLICK OK");


JDialog jdialog= joptionpane.createDialog("Alert");

jdialog.setAlwaysOnTop(true);

jdialog.show();

String newkey =JOptionPane.showInputDialog("Enter Your filekey");



 if(newkey.equals(key2) && newkey.length()!=0)

{
try
{
	Connection con=dbcon.create();
	Statement st=con.createStatement();
	st.executeUpdate("UPDATE `bc05-22`.`apply` set status='"+status+"',appointkey=''  where id='"+id+"' ");
/* st.executeUpdate("DELETE FROM `bc05-22`.`apply`  WHERE appointkey='"+key2+"'  ");  */

	response.sendRedirect("requirementupload.jsp?valid");
}
catch(Exception e)
{
	e.printStackTrace();
}

}


else
{
System.out.println("failed");
	
	JOptionPane.showMessageDialog(null, "Sorry Your key is wrong");
	
	response.sendRedirect("Error.jsp");
}		

%>
<script>
function required(inputtx) 
{
  if (inputtx.value.length == 0)
   { 
      alert("message");  	
      return false; 
   }  	
   return true; 
 } </script>
</body>

</html>