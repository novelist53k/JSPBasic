<%@page import="com.bean.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	User u = (User)request.getAttribute("user");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	아이디 : <%=u.getId() %><br>
	비밀번호: <%=u.getPw()%><br>
	이름 : <%=u.getName() %><br>
	이메일 : <%=u.getEmail()%>
	
</body>
</html>