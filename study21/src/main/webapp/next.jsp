<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>인클루드</title>
		<link rel="stylesheet" href="css/style.css">
	</head>
	<body>
		<div id="wrap">
			<jsp:include page="header.jsp">
			
			</jsp:include>
			<h1>다음 페이지에 오신 것을 환영합니다.</h1>
			<h1>헤더와 푸터가 유지되고 있는 것을 확인!</h1>
			<jsp:include page="footer.jsp"></jsp:include>
		</div>
	</body>
</html>