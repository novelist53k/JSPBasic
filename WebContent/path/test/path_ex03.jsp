<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<h2>path_ex03</h2>
	
	<a href="../path_ex01.jsp">path_ex01로 이동(상대경로)</a><br>
	<a href="<%=request.getContextPath() %>/path/path_ex01.jsp">path_ex01로 이동(절대경로)</a>

	
</body>
</html>