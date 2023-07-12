<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>메인페이지</title>
	</head>
	<body>
		<p>파일 입력용 form</p>
		<form name="form" method="post" enctype="multipart/form-data">
			<input type="file" name="file_name">
		</form>
		<a href="ProductList">ProductList</a>
		
	</body>
</html>