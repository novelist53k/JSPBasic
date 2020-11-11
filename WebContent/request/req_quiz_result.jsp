<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
	int kor = Integer.parseInt(request.getParameter("kor"));
	int eng = Integer.parseInt(request.getParameter("eng"));
	int math = Integer.parseInt(request.getParameter("math"));
	int total = kor + eng + math;
	double avg = (int)(total / 3.0 * 100) / 100.0;
	String grade = "";
	
	if(avg < 0 || avg > 100) grade="입력 오류";
	else if(avg <= 100 && avg >= 80) grade="고득점";
	else if(avg >= 60) grade = "중간";
	else if(avg >= 0) grade = "저득점";
	
	// 둘째 자리까지 자르는 방법은 여러가지고 있다.
	// double avg = Double.parseDouble(String.format("%.2f", avg));
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	이름 : <%= name %><br>
	국어 : <%= kor %>점<br>
	영어 : <%= eng %>점<br>
	수학 : <%= math %>점<br>
	총점 : <%= total %>점<br>
	평균 : <%= avg %>점<br>
	등급 : <%= grade %><br>
	
</body>
</html>