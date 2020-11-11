<%@page import="java.util.Random"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- 카카오 친구들 : "어피치", "라이언", "제이지", "무지", "프로도", "튜브" -->

<%
	/*
	1. 새로고침할 때마다 카카오 친구들 중 한 명을 무작위로 골라서 구성정보에 추가하고'[카카오친구]님이 입장'을 출력하시오.
	2. '현재 같은 카카오 프렌즈는 n명입니다.'를 출력하시오
	<h2>현재 구성정보</h2>
	3. 구성목록을 출력하고 (n명 참가중)을 출력하시오
	4. 10명이 되고 한 번 더 새로고침을 하면 목록을 초기화하시오
	
	*/
%>

<%! 
	List<String> list = new ArrayList<>();
	String[] kakao = {"어피치", "라이언", "제이지", "무지", "프로도", "튜브"};
	Random ran = new Random();
%>

<%
	if(list.size() >= 10) list.clear();
	
	String name = kakao[ran.nextInt(kakao.length)];
	list.add(name);
	
	int cnt = -1;
	
	for(int i = 0; i < list.size(); ++i){
		if(list.get(i).equals(name)) ++cnt;
	}

%>
     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSPTag_quiz03</title>
</head>
<body>
	
	<p>
		[<%=name %>] 님이 입장<br>
		현재 같은 카카오 프렌즈는 <%= cnt %>명입니다.
	</p>
	
	<h2>현재 구성정보</h2>
	
	<p><%=list.toString() %>(<%=list.size() %>명 참가중)</p>
	
</body>
</html>