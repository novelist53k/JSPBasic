<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// post 방식은 request 객체에서 값을 얻을 때 인코딩 형식을 지정한다.
	// tomcat 8버전 이상부터는 get방식은 자동으로 UTF-8을 지원하지만 post 방식은 따로 지정해주어야 한다.
	// server.xml에서 <connector> 태그의 속성으로 URIEncoding="UTF-8"을 추가하는 방법도 있다.
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>req_post_parameter</title>
</head>
<body>
	
	아이디 : <%= id %><br>
	비밀번호 : <%= pw %><br>
	요청방식 : <%= request.getMethod() %>
	
</body>
</html>