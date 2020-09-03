<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>

<%
	// 데이터베이스 입력 로직
Connection con = null;
String driver = "oracle.jdbc.driver.OracleDriver";
String url = "jdbc:oracle:thin:@localhost:1521:XE";

Class.forName(driver);
con = DriverManager.getConnection(url, "hr", "hr");
%>