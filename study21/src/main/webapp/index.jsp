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
			<jsp:include page="header.jsp"></jsp:include>
			<p>본문은 이곳에 작성합니다.</p>
			<p>내용은 다음과 같이 보입니다.</p>
			<p>다음 페이지로 넘어가려면 <a href="next.jsp">여기</a>를 클릭하십시오.</p>
			<jsp:include page="footer.jsp"></jsp:include>
		</div>
	</body>
</html>