<%@page import="com.bean.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	
	// bean(객체) 생성
	User u = new User(
				request.getParameter("id"),
				request.getParameter("pw"),
				request.getParameter("name"),
				request.getParameter("email")
			);
	
	request.setAttribute("user", u);
	request.getRequestDispatcher("bean_java_ex03.jsp").forward(request, response);


%>