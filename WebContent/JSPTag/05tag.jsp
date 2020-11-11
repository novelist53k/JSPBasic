<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
	// 선언자와 스크립트릿의 차이
	// 선언자 - 멤버변수(누적), 메서드를 선언할 때 사용
	public int total = 0;
	public int randomNum(){
		Random ran = new Random();
		return ran.nextInt(10);	// 0 ~ 9;
	};
%>
<%
	// 스크립트릿 - JSP페이지가 실행될 때마다 한 번씩 실행되는 코드
	int each = 0;	// 스크릿트릿에서는 public을 사용할 수 없다.
	total++;	// 1증가
	each++;		// 1증가
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	선언자값 : <%= total %><br>
	스크립트릿 : <%= each %><br>
	랜덤메서드 : <%= randomNum() %><br>
	
	
	
</body>
</html>