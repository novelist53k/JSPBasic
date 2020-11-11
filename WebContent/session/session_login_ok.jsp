<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/*
	1. 아이디, 비밀번호, nick를 받습니다.
	2. 아이디와 비밀번호가 동일하면 아이디정보, 이름정보를 저장하는 세션을 생성
	   session_welcome 페이지로 이동해서 id(이름)님 환영합니다.
	3. 틀리면 로그인 페이지로
	*/
	
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String nick = request.getParameter("nick");
	String check_id = request.getParameter("check_id");
	
	if(id.equals("abc") && pw.equals("1234")){
		session.setAttribute("id", id);
		session.setAttribute("pw", pw);
		session.setAttribute("nick", nick);
		
		if(check_id != null){
			session.setAttribute("check_id", id);
		}
		else{
			if((String)session.getAttribute("check_id") != null) session.removeAttribute("check_id");
		}
		
		response.sendRedirect("session_login_welcome.jsp");
	}
	else {
%>		
	  <script>
		alert("아이디 비밀번호를 확인하세요");
		location.href="session_login.jsp";
	  </script>
<%
		// response.sendRedirect("session_login.jsp");	// 다시 로그인 화면으로
	}
%>	
	
