<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	request.setCharacterEncoding("UTF-8");
	
	String password = request.getParameter("pw");
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="./delete.jsp" method="post"></form>
	비밀번호 <input type="text" name="password" value="">
	<input type="hidden" name="passwordorigin" value=<%=password %>>
	<button type="submit">확인</button><br>
	<a href="addList.jsp">매인으로 돌아가기</a>
</body>
</html>