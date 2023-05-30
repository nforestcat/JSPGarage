<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@	page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="ko">
	<head>
		<meta charset="UTF-8">
		<title>메인페이지</title>
		<style>
			#wrap{
				width: 300px;
				padding: 50px;
				margin: 100px auto;
				border: 10px solid lightgray;
			}
		
		</style>
	</head>
	<body>
		<div id="wrap">
			<a href="register.jsp">회원가입</a>
			<br>
			<a href="member.jsp">회원조회</a>
			<br>
			<a href="edit.jsp">회원정보수정</a>
			<br>
			<a href="erase.jsp">회원 삭제</a>
		</div>
	</body>
</html>