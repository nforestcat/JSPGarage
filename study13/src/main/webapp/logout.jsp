<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>로그아웃 처리 페이지</title>
	</head>
	<body>
		<%
			//현재 세션에 입력되어 있는 정보 만료
			session.invalidate();
			
		%>
		<script>
			alert("로그아웃 되었습니다.");
			location.href="index.jsp";
		</script>
	</body>
</html>