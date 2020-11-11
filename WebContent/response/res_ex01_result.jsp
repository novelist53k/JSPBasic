<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");

	String name = request.getParameter("name");
	int age = Integer.parseInt(request.getParameter("age"));
	
	//age에 따라서 다른 결과 페이지를 보여주고 싶다면
	if(age >= 20) response.sendRedirect("res_ex01_ok.jsp");	// 매개변수는 URL주소
	else response.sendRedirect("res_ex01_no.jsp");
%>