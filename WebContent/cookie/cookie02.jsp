<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/*
	show쿠키가 있으면 쿠키가 가지고 있는 날짜를 화면에 출력.
	만약 쿠키가 없으면 쿠키가 없네용~ 출력
	*/
	
	Cookie[] cookies = request.getCookies();
	String str = "쿠키가 없네용~";	

	if(cookies != null){
		for(Cookie c : cookies){
			if(c.getName().equals("show")) str = c.getValue();
		}
	}
	
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%=str %>
</body>
</html>