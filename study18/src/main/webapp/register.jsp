<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@	page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="ko">
	<head>
		<meta charset="UTF-8">
		<title>회원가입</title>
		<style>
			#wrap{
					width: 300px;
					padding: 50px;
					margin: 100px auto;
					border: 10px solid lightgray;
				}
			span{
				display:inline-block;
				width: 100px;
				text-align: center;
			}
			input:last-child {
				display: block;
				width:200px;
				margin: 20px auto;
			}
		</style>
	</head>
	<body>
		<div id="wrap">
			<form method="post" action="insert.jsp">
				<span>아이디</span><input type="text" name="id">
				<br>
				<span>비밀번호</span><input type="password" name="pw">
				<br>
				<span>이름</span><input type="text" name="nm">
				<br>
				<span>이메일</span><input type="text" name="em">
				<br>
				<span>전화번호</span><input type="text" name="ph">
				<br>
				<span>주소</span><input type="text" name="ad">
				<br>
				<input type="submit" value="회원가입">
			</form>
		</div>
	</body>
</html>