<%@ page import="javax.naming.ContextNotEmptyException"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>

<%
	Connection conn = null;
	String driver = "com.mysql.cj.jdbc.Driver";
	String url = "jdbc:mysql://localhost/yangjung?serverTimezone=UTC";
	String user = "kmoonm";
	String pass = "1234";
	
	try {
		Class.forName(driver);
		conn = DriverManager.getConnection(url, user, pass);
		System.out.println("데이터베이스 연결 성?공");
		
	} catch (Exception e) {
		System.out.println("데이터베이스 연결 실패");
		e.printStackTrace();
	}
%>
