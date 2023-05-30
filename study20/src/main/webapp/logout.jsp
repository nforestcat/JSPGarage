<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<%
			session.invalidate();//기존에 들어있었던 세션 정보를 만료.
			response.sendRedirect("index.jsp");
		%>
	</body>
</html>