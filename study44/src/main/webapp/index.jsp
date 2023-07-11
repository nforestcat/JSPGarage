<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>자료 목록</title>
	</head>
	<body>
		<form action="ReadPage" method="get">
			<input type="hidden" name="currentPage" value="1">
			한 페이지에 보여줄 수를 골라주세요
			<select name="recordsPerPage">
				<option value="5">5</option>
				<option value="10" selected>10</option>
				<option value="15">15</option>
			</select>
			<input type="submit" value="보기">
		</form>
	</body>
</html>