<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>삭제</title>
</head>
<body>
<%@ include file="header.jsp" %>
<%@ include file="nav.jsp" %>
<section>
<h2>회원 정보 삭제</h2>
	<form name="form" method="post" action="delete_process.jsp">
		<p>아이디 : <input type="text" name="id"></p>
		<p>비밀번호 : <input type="password" name="password"></p>
		<input type="submit" value="삭제">
		<input type="reset" value="취소">
	</form>
</section>
<%@ include file="footer.jsp" %>
</body>
</html>