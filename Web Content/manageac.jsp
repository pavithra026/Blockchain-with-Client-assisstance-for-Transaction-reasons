
<%@ page import="dbcon.dbcon" %>
<%@page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.*"%>
<%
String email=request.getParameter("email");
String password=request.getParameter("pass");
if("Admin@gmail.com".equals(email)&& "Admin".equals(password))
{
response.sendRedirect("manafgement.jsp");
}
else
{
response.sendRedirect("error");

}
%>