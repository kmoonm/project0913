<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>삭제 완료</title>
</head>
<body>
<%@ include file = "dbconn.jsp" %>
<%
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	String passwd = request.getParameter("password");
	
	PreparedStatement ps = null;
	ResultSet rs = null;
	
	try {
		String sql = "select id,password from memberTable where id=?";
		ps = conn.prepareStatement(sql);
		ps.setString(1, id);
		rs=ps.executeQuery();
		
		if(rs.next()) {
			String rPass = rs.getString(2);
			if (passwd.equals(rPass)) {
				sql = "delete from memberTable where id=?";
				ps=conn.prepareStatement(sql);
				ps.setString(1, id);
				ps.executeUpdate();
				%>
				<script>
					alert("데이터가 삭제 되었습니다.");
					location.href="select.jsp";
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
	} catch(Exception e) {
		e.printStackTrace();
		
	} finally {
		if (ps != null) {
			ps.close();
		}		
		if (rs != null) {
			rs.close();
		}		
		if (conn != null) {
			conn.close();
		}
	} 
%>
</body>
</html>