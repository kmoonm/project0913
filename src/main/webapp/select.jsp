<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>데이터 확인</title>
</head>
<body>
<%@ include file="header.jsp" %>
<%@ include file="nav.jsp" %>
<section>
<h2>회원 정보 조회</h2>
<%@ include file = "dbconn.jsp" %>
	<table border=1>
		<tr>
			<th>아이디</th>
			<th>비밀번호</th>
			<th>이름</th>
		</tr>
	<%		
		// 데이터 조회
		ResultSet rs = null;	
		try {
			String sql = "select * from memberTable";
			PreparedStatement ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			while (rs.next()) {
				String id = rs.getString("id");
				String passwd = rs.getString(2);
				String name = rs.getString("name");
			
	%>
		<tr>
			<td><%=id %></td>
			<td><%=passwd %></td>
			<td><%=name %></td>
		</tr>
<% 		
	}
		} catch(Exception e) {
			System.out.println("데이터 출력 실패");
			e.printStackTrace();		
		} finally {
			conn.close();
		}
%>
	</table>
</section>
<%@ include file="footer.jsp" %>
</body>
</html>