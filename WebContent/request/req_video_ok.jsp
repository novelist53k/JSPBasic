<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String course = request.getParameter("course");
	String src = null;

	switch(course){
	case "java":
		src = "https://www.youtube.com/embed/L0a6N-rj-CI";
		break;
	case "javascript":
		src = "https://www.youtube.com/embed/nOTpuof2YG8";
		break;
	case "oracle":
		src = "https://www.youtube.com/embed/DEVR_R2Hva0";
		break;
	default:
		src=null;	
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<!-- 앞에서 어떤 동영상을 클릭하느냐에 따라, 각각 알맞은 동영상이 보여지도록 처리 -->
	<% if(src == null) { %>
		잘못된 접근방식입니다.
	<% } else{ %>
		<div align="center">
			<h2>강의영상</h2>
			<hr>
			<p><%=course %> 수업 소개</p>
			<iframe width="560" height="315"
				src="<%=src %>" frameborder="0"
				allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
				allowfullscreen>
			</iframe>
		</div>
	<% } %>
</body>
</html>