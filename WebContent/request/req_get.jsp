<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>req_get</title>
</head>
<body>
	
	<!--
	GET방식은 주소를 통해서 강제로 parameter를 전달할 수 있으므로 form이 반드시 필요하지는 않다.
	
	파라미터 값은 주소명 뒤에 ?를 붙이고 변수명=값으로 전달하고 여러값이라면 변수명=값 끼리 &로 연결한다.
	-->
	<a href="req_get_result.jsp?name=홍길자&number=1234&id=kkk1234">req_get_result.jsp 페이지로</a>
	<a href="req_get_result.jsp?name=안뇽&number=151&id=hahaha">다른 아이디로 이동</a>
	
	
</body>
</html>