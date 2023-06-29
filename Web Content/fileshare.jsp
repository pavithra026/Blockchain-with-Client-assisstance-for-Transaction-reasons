<%@ page import="dbcon.dbcon" %>
<%@page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.*"%>

<%
String id=request.getParameter("id");

String status="forwarded";

try{
	Connection con=dbcon.create();
	Statement st=con.createStatement();
	st.executeUpdate("UPDATE `bc05-22`.upload set status='"+status+"' where email='"+id+"'");
	st.executeUpdate("UPDATE `bc05-22`.bill set status='"+status+"' where email='"+id+"'");
	response.sendRedirect("forw.jsp?valid");
}
catch(Exception e){
	response.sendRedirect("error.jsp?inval id");
System.out.println(e);
}
%>