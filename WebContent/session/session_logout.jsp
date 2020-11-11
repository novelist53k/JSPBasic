<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = (String)session.getAttribute("id");
	String nick = (String)session.getAttribute("nick");
	
	if(id != null) session.removeAttribute("id");
	if(nick != null) session.removeAttribute("nick");
	response.sendRedirect("session_login.jsp");
%>