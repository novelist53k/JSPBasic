<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 쿠키 사용하기
	// 쿠키는 서버에 요청이 들어올 때 자동으로 전송된다.
	Cookie[] cookies = request.getCookies();

	if(cookies != null){
		for(Cookie c : cookies){
			out.println(c.getName() + "<br>");
			out.println(c.getValue() + "<br>");
		}
	}
	out.println("----------------------");
	
	if(cookies != null){
		for(int i = 0; i < cookies.length; ++i){
			out.println(cookies[i].getName() + "<br>");
			out.println(cookies[i].getValue() + "<br>");
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
</body>
</html>