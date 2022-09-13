<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>중복확인</title>
</head>
<body>
<%@ include file = "dbconn.jsp" %>
<%
	// 언어 안 깨지게 설정
	request.setCharacterEncoding("utf-8");
	// 아이디 가져오기
	String id = request.getParameter("id");
	// sql문을 작동 시키기 위한 코드 입력
	PreparedStatement ps = null;
	ResultSet rs = null;
	
	try {			
		// 1. sql문 작성
		String sql = "SELECT id FROM memberTable";
		// 2. sql문 삽입
		ps = conn.prepareStatement(sql);
		// 3. 조회 가능하게 함
		rs = ps.executeQuery();
		while(rs.next()) {
			String check_id = rs.getString(1);
			if(id.equals(check_id)) {
				%>
				<script>
					alert("중복된 아이디입니다. 다른 아이디를 입력 해주세요");
					history.back(-1);
				</script>
				<% 
			} else {
				%>
				<script>
					alert("사용가능한 아이디입니다.");
				</script>
				<%
			}
		}
				
	} catch(Exception e) {
		e.printStackTrace();
		System.out.println("조회 실패");
	}
%>

</body>
</html>