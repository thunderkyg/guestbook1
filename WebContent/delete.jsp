<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="com.javaex.dao.GuestbookDao"%>
<%@ page import="com.javaex.vo.GuestbookVo"%>
    
<%
	String password = request.getParameter("password");
	int guestbookNo = Integer.parseInt(request.getParameter("no"))  ;
	
	GuestbookDao guestbookDao = new GuestbookDao();
	GuestbookVo deletepw = new GuestbookVo (guestbookNo, password);
	guestbookDao.guestbookDelete(deletepw);
	
	response.sendRedirect("addList.jsp");
%>

	
<%-- 	<% 
 	if(password.equals(passwordorigin)){
		guestbookDao.guestbookDelete(guestbookNo);
		response.sendRedirect("addList.jsp");
	} else {
	%>
	<!DOCTYPE html>
	<html>
	<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	</head>
	<body>
	<p> Wrong password</p>
	<a href="addList.jsp">매인으로 돌아가기</a>
	</body>
	</html>
	<% }%> 
 --%>
