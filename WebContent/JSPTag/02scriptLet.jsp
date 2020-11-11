<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
		int a = 1;
		
		// System.out.println 입력시 콘솔에,
		// out.println 입력시 웹 페이지에 출력할 수 있다.
		if(a > 10){
			out.println("10보다 크다");
		} else{
			out.println("10보다 작다");
		}
	%>
	<hr>
	<%
		for(int i = 1; i <= 10; ++i){
			out.println(i + "<br>");	//<br>은 브라우저에서 태그로 인식, ln은 띄어쓰기로 처리된다.
		}
	%>
	<hr>
	<%
		int num = 0;
		if(num >= 10){
			out.println("<p>참이란다.</p>");
		}
		else{
			out.println("<p>거짓이란다.</p>");
		}
	%>
	<hr>
	<% if(num >= 10){%>
		<p>참입니다.</p>
	<% } else {%>
		<p>거짓입니다.</p>
	<% } %>
	<hr>
	1. 구구단 3단 out.println과 hr태그를 사용해서 브라우저 화면에 출력
	<%
		out.println("구구단 3단<br><hr>");
		for(int i = 1; i < 10; ++i){
			out.println("3 X " + i + " = " + 3*i + "<br><hr>");
		}
	%>
	<hr>
	2. 체크박스 20개를 브라우저에 생성
	<ol>
		<% for(int i = 0; i < 20; ++i){ %>
		<li><input type="checkbox" name="cb"></li>
		<% } %>
	</ol>

</body>
</html>