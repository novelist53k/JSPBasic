<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// form으로 전송된 데이터를 받는다
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String email = request.getParameter("email");
	String major = request.getParameter("major");
	String inter[] = request.getParameterValues("inter");
	String phone = request.getParameter("phone1");
	String txt = request.getParameter("txt");
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>req_get_parameter</title>
</head>
<body>
	
	id : <%= id %><br>
	pw : <%= pw %><br>
	email : <%= email %><br>
	major : <%= major %><br>
	inter : <%= Arrays.toString(inter) %><br>
	phone : <%= phone %><br>
	txt : <%= txt %><br>
	요청방법 : <%= request.getMethod() %>
	
</body>
</html>