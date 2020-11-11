<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
	int total = 0;
	Random ran = new Random();
%>
<%
	/*
	상단에 몇번째 방문자입니다. 출력하고 10의 배수라면 당첨되셨습니다. 출력
	<hr>로 구분후
	구구단을 랜덤으로 출력하시오
	*/
	
	int dan = ran.nextInt(8) + 2;
	++total;
	
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSPTag_quiz02</title>
</head>
<body>
	
	<p>
		<%= total %>번째 방문자입니다.<br>
		<% if(total % 10 == 0) { %>
			당첨되셨습니다.
		<% } %>
	</p>
	
	<hr>
	
	<h2>랜덤구구단 <%= dan %>단</h2>
	<p>
		이번에 나온 구구단 <%=dan %>단입니다<br>
		<% for(int i = 1; i < 10; ++i) { %>
			<%= dan %> X <%= i %> = <%= dan * i %><br>
		<% } %>
	</p>
	
	
</body>
</html>