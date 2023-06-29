<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@page import="dbcon.dbcon"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<%@page import="bean.uploadbean" %>
<%@page import="imple.imple" %>
<%@page import="inter.inter" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
		String team=request.getParameter("team");
		System.out.println("tname"+team);
		
		String filename=request.getParameter("filename");
		System.out.println("Filename"+filename);
		
		String filesize=request.getParameter("filesize");
		System.out.println("filesize"+filesize);
		
		String date=request.getParameter("date");
		System.out.println("date"+date);
		

		uploadbean s=new uploadbean();
		s.setCate(team);
		s.setFilename(filename);
		s.setFiletype(filesize);
		/* s.setDate(date); */

		
		inter n=new imple();
		int u=n.send(s);
		if(u==1){
			response.sendRedirect("sendsuc.jsp");
			
		}else{
			response.sendRedirect("error.jsp");
		}%>

</body>
</html>