<%@page import="java.util.List"%>
<%@page import="com.session.User"%>
<%@page import="com.session.UserRepository"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	
	User user = (User)session.getAttribute("login");
	List<User> list = UserRepository.showAllUser();
	
	if(user != null){
		if(list.contains(user)){
			UserRepository.deleteUser(user);
			session.removeAttribute("login");
%>
			<script>
				alert("회원탈퇴하셨습니다.");
				location.href="login01.jsp";
			</script>
<%
		}
	}
%>