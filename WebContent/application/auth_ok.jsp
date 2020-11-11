<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	request.setCharacterEncoding("utf-8");

	// 올바른 인증값을 적었다면 authYN이름으로 인증 성공 세션 생성. reverse.jsp로 이동
	// 올바르지 않다면 다시 인증페이지로 이동
	String code = request.getParameter("code");
	if(session.getAttribute("auth").equals(code)){
		session.setAttribute("authYN", "Y");
		response.sendRedirect("reverse.jsp");
	}
	else response.sendRedirect("auth.jsp");
	
%>