<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// application은 session과 사용방법이 거의 동일하고
	// 생명주기가 톰캣을 stop할 때까지 유지된다.
	
	int totalSession = session.getAttribute("total") == null ? 0 : (int)session.getAttribute("total");
	totalSession++;
	session.setAttribute("total", totalSession);
	
	int totalApp = application.getAttribute("total2") == null ? 0 : (int)application.getAttribute("total2");
	totalApp++;
	application.setAttribute("total2", totalApp);
	
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	세션값 : <%=totalSession %>
	어플리케이션값: <%=totalApp %>
</body>
</html>