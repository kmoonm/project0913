<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>정보 입력</title>
</head>
<body>
	<form name="form" method="post" action="insert_process.jsp">
		<p>아이디 : <input type="text" name="id"></p>
		<p>비밀번호 : <input type="password" name="password"></p>
		<p>이 름: <input type="text" name="name"></p>
		<input type="submit" value="입력 및 보내기">
		<input type="reset" value="취소">
	</form>
</body>
</html>