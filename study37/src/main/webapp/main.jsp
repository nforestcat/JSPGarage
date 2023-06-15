<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>메인페이지</title>
	</head>
	<body>
		<h1>안녕하세요 ${loginUser.name}님, ${loginUser.userid }</h1>
		<a href="Logout.do">로그아웃</a><br>
		<a href="Update.do">회원정보 수정</a>
	</body>
</html>