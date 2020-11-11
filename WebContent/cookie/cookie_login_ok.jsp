<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/*
	1. 아이디, 비밀번호를 받는다.
	2. id = abc, pw = 1234라면 로그인성공이라고 간주(user_id, 실제아이디)를 저장하는 쿠키 생성하고 cookie_welcome 페이지로 리다이렉트
	3. 아이디와 비밀번호가 다르다면 다시 로그인 페이지로 리다이렉트
	4. welcome 페이지에서는 쿠키 값을 꺼내서 id님 환영합니다.
	*/
	
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String idCheck = request.getParameter("idCheck");	// 아이디 기억하기 버튼
	
	
	if(id.equals("abc") && pw.equals("1234")){
		Cookie c1 = new Cookie("user_id", id);
		c1.setMaxAge(60);
		response.addCookie(c1);
		
		// idCheck 값이 y라면 기억하기에 대한 쿠키 생성
		if(idCheck != null){
			Cookie c2 = new Cookie("id_check", id);
			c2.setMaxAge(60 * 60 * 24);	// 하루
			response.addCookie(c2);
		}
		response.sendRedirect("cookie_welcome.jsp");
	}
	else response.sendRedirect("cookie_login.jsp");
	
%>