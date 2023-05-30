<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
	<head>
		<meta charset="UTF-8">
		<title>세션 정보 입력 페이지</title>
	</head>
	<body>
		<%
			//한글이 깨질 경우
			request.setCharacterEncoding("UTF-8");
		
			String data=request.getParameter("data");
			System.out.println(data);
			
			session.setAttribute("key", data);
			//세션에 key라는 이름으로 선택된 계절 정보를 입력
		%>
		<h1><%=data %></h1>
		<a href="view2.jsp">세션 데이터의 공유 확인</a>
	</body>
</html>