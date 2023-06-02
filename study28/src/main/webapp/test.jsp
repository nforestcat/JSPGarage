<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
	<head>
		<meta charset="UTF-8">
		<title>패러미터 확인 페이지</title>
	</head>
	<body>
		<% 
			request.setCharacterEncoding("utf-8");
		%>
		<h1>${param }</h1>
		<!-- 같은 name으로 여려개의 깂이 전송되는 경우 그 중 첫번째만 보이는 경우 -->
		<h1>아이디 : ${param.user }</h1>
		<h1>비밀번호 : ${param.pw }</h1>
		${paramValues.season[0] }
		${paramValues.season[1] }
		${paramValues.season[2] }
		
		<%=request.getParameter("user")equals("admin") %><br>
		${param.user eq "admin" }
		
	</body>
</html>