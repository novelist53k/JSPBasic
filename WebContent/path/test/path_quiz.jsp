<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String contextPath = request.getContextPath(); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<!-- 1. a 태그를 이용해서 req_video 페이지로 상대경로, 절대경로 이동 -->
	<a href="../../request/req_video.jsp">req_video로 이동(상대경로)</a><br>
	<a href="<%=contextPath %>/request/req_video.jsp">req_video로 이동(절대경로)</a>
	<hr>
	
	<!-- 2. img 태그를 사용해서 java.png 참조 -->
	<img src="../../request/img/java.png" width="160px" height="100px"><br>
	상대경로<br><br>
	
	<img src="<%=contextPath %>/request/img/java.png" width="160px" height="100px">
	<hr>
	
	<!-- 3. a 태그를 이용해서 TestServlet으로 상대경로, 절대경로 -->
	<a href="../../banana">TestServlet으로 이동(상대경로)</a><br>
	<a href="<%=contextPath %>/banana">TestServlet으로 이동(절대경로)</a><br>
	
	<% out.println("출력"); %>
	
</body>
</html>