<%@page import="java.util.Arrays"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	
	// 1. 좌석 정보를 받는다.
	String[] arr = request.getParameterValues("seat");
	
	boolean reservation = false;
	
	// 2. 좌석 정보를 저장할 List 생성
	List<String> seat = new ArrayList<>();
	
	if(arr != null){
		
		// 3. application에서 좌석 정보가 존재하면 2번 리스트에 저장
		if(application.getAttribute("seat") != null) seat = (List<String>)application.getAttribute("seat");
		
		// 4. 좌석 정보를 비교해서 중복이 없을 떄 하나씩 저장해 놓을 사본 리스트 생성
		// 4. 좌석 정보와 2번의 리스트를 비교해서 중복된 좌석이 아니라면 사본 리스트에 추가
		List<String> list = new ArrayList<>();
		for(String s : arr){
			if(seat.contains(s)){
				break;
			}
			list.add(s);
		}
		// 5. 사본리스트와 좌석정보 길이가 같다면 중복이 없으므로 2번의 리스트에 통째로 사본리스트를 추가
		
		if(list.size() == arr.length){
			seat.addAll(list);
			reservation = true;
		}
		
		// 6. application에 같은 이름으로 저장
		application.setAttribute("seat", seat);
		
		// 7.화면에 예약 성공실패의 결과를 출력하시오
	}
	else
		response.sendRedirect("reverse.jsp");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<div align="center">
		<h2>예약 결과</h2>
		좌석 예약 현황 :
		<% for(String s : seat) { %>
			[<%=s %>]
		<% } %><br>
		<b><%= reservation ? "예약성공" : "예약실패" %></b><br>
		
		<button type="button" onclick="location.href='reverse.jsp'">다시 예약하기</button>
		
	</div>
	
</body>
</html>