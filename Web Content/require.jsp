<%@ page import="dbcon.dbcon" %>
<%@page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.*"%>
<%
String id=request.getParameter("id");

String key=request.getParameter("key");


String status="Appoint";
try{
	Connection con=dbcon.create();
	Statement st=con.createStatement();
	st.executeUpdate("UPDATE `bc05-22`.`apply` set status='"+status+"',appointkey='"+key+"' where id='"+id+"' ");
	response.sendRedirect("userfile.jsp?valid");
}
catch(Exception e){
	response.sendRedirect("error.jsp?inval id");
System.out.println(e);
}
%>