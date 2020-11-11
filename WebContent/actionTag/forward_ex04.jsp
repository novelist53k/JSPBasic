<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = request.getParameter("id");
	String pw = (String)request.getAttribute("name");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	포워드로 넘어온 값 : <%=request.getParameter("id") %><br>
	서블릿에서 설정한 리퀘스트 값 : <%= request.getAttribute("name")%>
</body>
</html>