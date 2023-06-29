<%@ page import="dbcon.dbcon" %>
<%@page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.*"%>
<%
String tdate=request.getParameter("tdate");
String email=request.getParameter("email");
String fname=request.getParameter("fname");
String ddate=request.getParameter("ddate");



try{
	Connection con=dbcon.create();
	Statement st=con.createStatement();
	st.executeUpdate("INSERT INTO `bc05-22`.deliver VALUES('"+email+"', '"+fname+"','"+tdate+"','"+ddate+"')");
	response.sendRedirect("serfileteam.jsp?valid");
}
catch(Exception e){
	response.sendRedirect("error.jsp?inval id");
System.out.println(e);
}
%>