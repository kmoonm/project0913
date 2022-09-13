<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>정보 입력</title>
<script>
// 유효성 검사
	function check() {
		var doc = document.form;
		if(doc.id.value == "") {
			alert("아이디를 입력해주세요.");
			doc.id.focus();
		} else if((doc.id.value.length<8) || (doc.id.value.length>15)) {
			alert("아이디를 8자 초과 15자 미만으로 작성해주세요.");
			doc.id.focus();
		} else if(doc.password.value == "") {
			alert("비밀번호를 입력해주세요.");
			doc.password.focus();
		} else if(doc.name.value == "") {
			alert("이름을 입력해주세요.");
			doc.name.focus();
		} else {
			doc.submit();
		}
	}
</script>
</head>
<body>
<%@ include file="header.jsp" %>
<%@ include file="nav.jsp" %>
<section>
<h2>회원 정보 입력</h2>
	<!-- get은 개인정보가 전부 보이니 왠만하면 쓰지 않기 -->
	<form name="form" method="post" action="insert_process.jsp">
		<p>아이디 : <input type="text" name="id"><input type="button" name="check" value="중복확인"></p>
		<p>비밀번호 : <input type="password" name="password"></p>
		<p>이 름: <input type="text" name="name"></p>
		<input type="button" value="입력 및 보내기" onclick="check()">
		<input type="reset" value="취소">
	</form>
</section>
<%@ include file="footer.jsp" %>
</body>
</html>