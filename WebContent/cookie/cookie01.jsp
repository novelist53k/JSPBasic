<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/*
	1. Date 클래스를 이용해서 xxxx년 xx월 xx일 형태로 날짜를 생성
	쿠키 이름은 show쿠키로 생성
	
	*/
	Date date = new Date();
	SimpleDateFormat smf = new SimpleDateFormat("yyyy년MM월dd일");
	String str = smf.format(date);
	
	Cookie c = new Cookie("show", str);
	c.setMaxAge(60);
	response.addCookie(c);
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<a href="cookie02.jsp">쿠키 사용하기</a>	
</body>
</html>