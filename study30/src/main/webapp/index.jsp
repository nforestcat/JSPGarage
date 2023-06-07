<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>scope 처리 실습</title>
	</head>
	<body>
		<%
			pageContext.setAttribute("page", "page단위 데이터");
			request.setAttribute("req", "request단위 데이터");
			session.setAttribute("ses","session단위 데이터");
			application.setAttribute("app", "application단위 데이터");
			
		%>
		<!-- 호출명이 중복되지 않는다면 scope범위를 생략해서 사용할 수 있다 -->
		<!-- 호출명이 중복된다면 pageScope가 우선 호출된다. -->
		<h1>\${page } : ${page }</h1>
		<h1>\${req } : ${req }</h1>
		<h1>\${ses } : ${ses }</h1>
		<h1>\${app } : ${app }</h1>
		
		<a href="index.jsp">페이지 단위의 scope확인</a>
		<br>
		<a href="#" onclick="sub()">리퀘스트 단위의 scope 확인</a>
		<br>
		<a href="session.jsp">세션 단위의 scope확인</a>
		<br>
		<a href="application.jsp">어플리케이션 단위의 scope확인</a>
		
		<form id="req" method="get" action="request.jsp">
			<input type="hidden" name="req" value="request단위 데이터">
		</form>
		<script>
			let req=document.getElementById("req");
			function sub(){
				req.submit();
			}
		</script>
	</body>
</html>