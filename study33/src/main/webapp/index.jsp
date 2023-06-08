<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>jstl if문 처리</title>
	</head>
	<body>
		<div id="wrap">
			<form method="get" action="result.jsp">
				<select name="color">
					<option value="1">빨강</option>
					<option value="2">주황</option>
					<option value="3">노랑</option>
					<option value="4">초록</option>
					<option value="5">파랑</option>
					<option value="6">남색</option>
					<option value="7">보라</option>
				</select>
				<input type="submit" value="전송">
			</form>
		</div>
	</body>
</html>