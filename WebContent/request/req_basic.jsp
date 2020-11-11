<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 스크립트릿으로 가장 위쪽에서 필요한 정보를 받는다.
	String path = request.getContextPath();		// 톰캣이 프로젝트를 구분하는 경로
	
	StringBuffer url = request.getRequestURL();	// 전체 주소
	
	String uri = request.getRequestURI();		// 폴더경로, 전체 주소 - contextPath
	
	String addr = request.getRemoteAddr();		// 접속 IP
	
	String query = request.getQueryString();	// 주소 뒤에 전달되는 문자열, JSP에서는 쓸 일이 거의 없다.
	
	String method = request.getMethod();		// 요청방식
	
	System.out.println("접속주소 : " + addr);
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	contextPath : <%= path %><br>
	URL 정보 : <%= url %><br>
	URI 정보 : <%= uri %><br>
	접속 IP :<%= addr %><br>
	주소 뒤 문자열 : <%= query %><br>
	요청방식 : <%= method %><br>
	
	
	
</body>
</html>