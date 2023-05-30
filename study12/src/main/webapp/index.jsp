<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<form method="get" action="view1.jsp">
			좋아하는 계절은?
			<select name="data">
				<option>봄</option>
				<option>여름</option>
				<option>가을</option>
				<option>겨울</option>
			</select>
			<input type="submit" value="전송!">
		</form>
	</body>
</html>