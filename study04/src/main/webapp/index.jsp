<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
		<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		</head>
	<body>
		<div id="wrap">
			<form method="get" action="welcome.jsp">
				<input type="text" name="first" placeholder="첫번째 값">
				<br>
				<input type="text" name="second" placeholder="두번째 값">
				<br>
				<input type="submit" value="전송">
				<br>
			</form>
			<a href="welcome.jsp?first=data1&second=data2">눌러서 이동</a>
		</div>
	</body>
</html>