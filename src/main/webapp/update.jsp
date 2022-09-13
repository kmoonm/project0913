<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수정화면</title>
</head>
<body>
	<form name="form" method="post" action="update_process.jsp">
		<p>아이디 : <input type="text" name="id">
		<p>비밀번호 : <input type="password" name="password">
		<p>이 름 : <input type="text" name="name">
		<p><input type="submit" value="수정">
		<input type="reset" value="취소">
	</form>
</body>
</html>