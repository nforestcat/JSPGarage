<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<%
			request.getAttribute("req");
			session.getAttribute("ses");
			application.getAttribute("app");
			
		
		%>
		<h1>\${page } : ${page }</h1>
		<h1>\${param.req } : ${param.req }</h1>
		<h1>\${ses } : ${ses }</h1>
		<h1>\${app } : ${app }</h1>
		<%
		application.removeAttribute("app");
		//어플리케이션 스코프에서 데이터 제거
		//application은 모든 상황, 모든 사용자에게 연동되는 데이터이므로
		//사용 시 보안 등 문제에 주의한다.
		%>]
		<h1>어플리케이션 정보 만료 후</h1>
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