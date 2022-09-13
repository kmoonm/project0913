<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>파일 삽입 확인</title>
<%@ include file = "dbconn.jsp" %>
<%
	request.setCharacterEncoding("utf-8");

	String id = request.getParameter("id");
	String password = request.getParameter("password");
	String name = request.getParameter("name");
	
	try {
		// 1. sql 문 만들기
		String sql = "insert into memberTable(id, password, name) values(?,?,?)";
		// 2. sql 문 사용을 위해 대기 시키는 변수 설정
		PreparedStatement ps = conn.prepareStatement(sql);
		// 3. 데이터를 받기 위한 설정
		ps.setString(1, id);
		ps.setString(2, password);
		ps.setString(3, name);
		//4. 데이터 업데이트
		ps.executeUpdate();
		System.out.println("데이터 삽입에 성공했습니다.");
		%>
		<script>
			alert("저장성공!");
		</script> 
				
		<%
	} catch (Exception e) {
		e.printStackTrace();
		System.out.println("데이터 삽입에 실패했습니다.");
	} finally {
		conn.close();
	}
 %>
</head>
<body>
아이디 : <%=id %>
비밀번호 : <%=pass %>
이 름 : <%=name %>
</body>
</html>