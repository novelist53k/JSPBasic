<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>req_get_form</title>
</head>
<body>
	
	<!-- form에 작성된 데이터를 서버로 전송할 때 받아서 처리할 URL 정보를  action 속성에 적는다. -->
	
	<form action="req_get_parameter.jsp">
		<h3>회원가입 양식</h3>
		<hr>
		아이디 : <input type="text" name="id" required><br/>
		비밀번호 : <input type="password" name="pw" required><br/>
		이메일 : <input type="email" name="email"><br/>
		전공 :
		<input type="radio" name="major" value="경영학">경영학
		<input type="radio" name="major" value="컴퓨터">컴퓨터
		<input type="radio" name="major" value="전기전자">전기전자
		<input type="radio" name="major" value="기계공학">기계공학
		<br/>
		관심분야 :
		<input type="checkbox" name="inter" value="java">자바
		<input type="checkbox" name="inter" value="DB">DB
		<input type="checkbox" name="inter" value="JSP">JSP
		<input type="checkbox" name="inter" value="javascript">JavaScript
		<br/>
		통신사:
		<select name="phone1">
			<option>SKT</option>
			<option>KT</option>
			<option>LG</option>
		</select>
		<br/>
		자기소개 :<br/> 
		<textarea rows="5" cols="30" name="txt"></textarea><br/>
		<input type="submit" value="가입하기">
		<input type="button" value="그냥버튼">
	</form>
	
</body>
</html>