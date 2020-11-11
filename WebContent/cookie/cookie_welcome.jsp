<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Cookie[] cookies = request.getCookies();
	String id = null;

	if(cookies != null){
		for(Cookie c : cookies){
			if(c.getName().equals("user_id")) id = c.getValue();
		}
	}
	if(id == null) response.sendRedirect("cookie_login.jsp");	// 쿠키 만료시 처음 화면으로
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%= id %>님 환영합니다.
	<a href="cookie_login.jsp">로그인 페이지로</a>
</body>
</html>