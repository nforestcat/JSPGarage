<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>서블릿의 사용</title>
	</head>
	<body>
		<h1>index.jsp입니다.</h1>
		<a href="a">get방식으로 서블릭 호출</a>
		<form method="post" action="a">
			<input type="submit" value="post방식으로 서블릿 호출">
		</form>
	</body>
</html>