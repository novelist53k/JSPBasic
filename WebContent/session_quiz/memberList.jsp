<%@page import="com.session.UserRepository"%>
<%@page import="com.session.User"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	List<User> list = UserRepository.showAllUser();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border="1">
		<tr>
			<th>회원아이디</th>
			<th>이름</th>
			<th>생일</th>
		</tr>
		<% for(User u : list) { %>
			<tr>
				<td><%=u.getId() %></td>
				<td><%=u.getName() %></td>
				<td><%=u.getBirth() %></td>
			</tr>
		<% } %>
	</table>
</body>
</html>