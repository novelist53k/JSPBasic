<%@page import="com.session.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/* login03.jsp
	1. 로그인 하지 않은 사용자가 주소창에 이 페이지의 URL을 적고
	들어오는 경우 로그인 창으로 돌려보내는 코드를 작성하세요.
	   	 
	2. 로그인 한 회원의 아이디와 별명을 통해 "nick(id)님 환영합니다!"
	를 출력하세요. (세션에 다 있습니다.)
	   	 
	3. 로그인 화면으로, 로그아웃하기 (logout.jsp), 회원 탈퇴하기(delete.jsp)
	로 이동할 수 있는 링크를 제공하세요.
	회원탈퇴는 deleteUser(???)라는 이름으로 메서드 선언.
	리스트에서 해당 아이디에 부합하는 User객체를 찾은 후 리스트 문법으로 해당 객체의
	주소값을 지워주시면 됩니다.
	그리고 세션 데이터도 삭제해 주세요.
	*/
	
	User user = (User)session.getAttribute("login");
	String nick = "";
	String id = "";
	if(user == null) response.sendRedirect("login01.jsp");
	else{
		nick = user.getName();
		id = user.getId();		
	}
	
	
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%=nick %>(<%=id %>)님 환영합니다!<br>
	<a href="login01.jsp">로그인 화면으로</a><br>
	<a href="logout.jsp">로그아웃하기</a><br>
	<a href="delete.jsp">회원 탈퇴하기</a>
	<a href="memberList.jsp">회원 목록보기</a>
</body>
</html>