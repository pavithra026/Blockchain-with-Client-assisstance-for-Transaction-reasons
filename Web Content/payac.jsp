<%@ page import="dbcon.dbcon" %>
<%@page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.*"%>

<%
String card=request.getParameter("gender");
String id=request.getParameter("id");
String cardholdername=request.getParameter("cardholdername");
String cardno=request.getParameter("cadrnumber");
String cvv=request.getParameter("cvvnumber");
String exp=request.getParameter("expirydate");



String status="paid";

try{
	Connection con=dbcon.create();
	Statement st=con.createStatement();
	st.executeUpdate("UPDATE `bc05-22`.bill set status='"+status+"',card='"+card+"',expdate='"+exp+"', cvv='"+cvv+"',chname='"+cardholdername+"', cardno='"+cardno+"' where billid='"+id+"'");
	response.sendRedirect("sucees.jsp?valid");
}
catch(Exception e){
	response.sendRedirect("error.jsp?inval id");
System.out.println(e);
}
%>