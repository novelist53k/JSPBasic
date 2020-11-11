<%@page import="java.util.Collections"%>
<%@page import="java.util.HashSet"%>
<%@page import="java.util.Set"%>
<%@page import="java.util.Random"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/*
	1. 정수를 저장하는list를 생성
	2. 1~45까지 랜덤한 번호를 생성하고 리스트에 저장
	3. 중복되지 않는 숫자로 6개의 번호를 저장
	4. 화면에 출력
	5. set를 이용해서도 처리
	*/
	
	List<Integer> list = new ArrayList<>();
	Random ran = new Random();

	while(list.size() != 6){
		int num = ran.nextInt(45) + 1;
		if(!list.contains(num)) list.add(num);
	}
	
	/*
	start:for(int i = 0; i < 6; ++i){
		int num = ran.nextInt(45) + 1;
		for(int j = 0; j < list.size(); ++j){
			if(num == list.get(j)){
				--i;
				continue start;
			}
		}
		list.add(num);
	}
	*/
	
	Collections.sort(list);	// 리스트 정렬
	
	Set<Integer> set = new HashSet<>();
	while(set.size() < 6){
		set.add(ran.nextInt(45) + 1);
	}
	
	
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSPTag_quiz01</title>
</head>
<body>
	
	<h2> list ver</h2>
	<p>랜덤번호 : <%= list.toString() %></p>
	
	<hr>
	
	<h2> set ver</h2>	
	<p>랜덤번호 : <%= set %></p>
	
</body>
</html>