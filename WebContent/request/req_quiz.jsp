<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<!-- 
	1. form 태그를 이용해서 post 형식으로 이름, 국, 영, 수 값을 입력받는다 (태그에서는 반드시 값을 입력하도록
	2. req_quiz_result.jsp로 전송한다
	3. 해당 페이지에서는 평균, 합계를 구하고 80점 이상은 고득점, 60점 이상은 중간, 60 아래는 저득점으로 출력하시오
	 -->
	
	<form action="req_quiz_result.jsp" method="post">
		<table>
			<tr>
				<td>이름</td>
				<td><input type="text" name="name" required="required"></td>
			</tr>
			<tr>
				<td>국어</td>
				<td><input type="text" name="kor" pattern="[0-9]{1,3}" required="required" ></td>
			</tr>
			<tr>
				<td>영어</td>
				<td><input type="text" name="eng" pattern="[0-9]{1,3]" required="required"></td>
			</tr>
			<tr>
				<td>수학</td>
				<td><input type="text" name="math" pattern="[0-9]{1,3}"required="required"></td>
			</tr>
			<tr>
				<td colspan="2"> <input type="submit" value="성적입력" ></td>
			</tr>
		</table>
	</form>
	
</body>
</html>