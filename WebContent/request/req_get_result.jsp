<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String name = request.getParameter("name");
	int num = Integer.parseInt(request.getParameter("number"));
	String id = request.getParameter("id");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>req_get_result</title>
</head>
<body>
	
	<h2>GET방식으로 주소에 담겨 넘어온 값</h2>
	이름 : <%= name %><br>
	번호 : <%= num %><br>
	id : <%= id %><br>
	
</body>
</html>