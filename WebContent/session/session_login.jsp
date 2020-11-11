<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String check_id = (String)session.getAttribute("check_id");
	if(check_id == null) check_id = "";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<h2>세션 로그인 연습</h2>
	
	<form action="session_login_ok.jsp" method="post">
		아이디 : <input type="text" name="id" value="<%=check_id%>"><br>
		비밀번호 : <input type="password" name="pw"><br>
		닉네임 : <input type="text" name="nick"><br>
		<input type="checkbox" name="check_id" value="y" <%if(check_id.equals("")) {} else {%> checked <% } %>>아이디 기억하기
		<input type="submit" value="로그인">
	</form>
	
</body>
</html>