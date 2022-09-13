<%@page import="com.mysql.cj.xdevapi.Result"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수정</title>
</head>
<body>
<%@ include file="dbconn.jsp" %>
<%	
	// 글깨짐방지
	request.setCharacterEncoding("utf-8");
	
	// 아이디 불러오기
	String id = request.getParameter("id");
	String passwd = request.getParameter("password");
	String name = request.getParameter("name");
	
	// sql문 사용을 위한 변수 설정
	PreparedStatement ps = null;
	ResultSet rs = null;
	
	try {
		String sql = "select id,password from memberTable where id = ?";
		ps = conn.prepareStatement(sql);
		ps.setString(1, id);
		
		rs = ps.executeQuery();
		if(rs.next()) {
			String rID = rs.getString("id");
			String rPW = rs.getString("password");
			if(rPW.equals(passwd)) {
				sql = "UPDATE memberTable set name=? where id=?";
				ps = conn.prepareStatement(sql);
				ps.setString(1, name);
				ps.setString(2, id);
				ps.executeUpdate();
				%>
				<script>
					alert("수정 성공");
				</script>		
			<% 					
			} else {
				%>
				<script>
					alert("비밀번호가 일치하지 않습니다.");
					history.back(-1);
				</script>
				<%
			} 	
		 
		} else {
				%>
			<script>
				alert("일치하는 아이디가 아닙니다.");
				history.back(-1);
			</script>
			<%
			}
	
	} catch (Exception e) {
		System.out.println("데이터베이스 에러");
		e.printStackTrace();
	} finally {
		conn.close();
	}
%>
</body>
</html>