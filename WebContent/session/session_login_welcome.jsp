<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = (String)session.getAttribute("id");
	if(id == null) response.sendRedirect("session_login.jsp");
	
	String nick = (String)session.getAttribute("nick");
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<%=id %>(<%=nick %>)님 환영합니다.
	<br><a href="session_logout.jsp">로그아웃</a>
	
</body>
</html>