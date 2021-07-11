<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import = "com.javaex.vo.GuestbookVo" %>
<%@ page import = "com.javaex.dao.GuestbookDao" %>

<% 
	//Parameter
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
	String password = request.getParameter("password");
	String content = request.getParameter("content");
	
	//Vo
	GuestbookDao guestbookDao = new GuestbookDao();
	GuestbookVo guestbookVo = new GuestbookVo(name, password, content);
	//Save
	guestbookDao.guestbookInsert(guestbookVo);
	
	//Redirect
	response.sendRedirect("addList.jsp");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>