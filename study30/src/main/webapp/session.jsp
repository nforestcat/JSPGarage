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
		<% session.invalidate(); %>
		<h1>세션 정보 만료 후</h1>
		<h1>\${ses } : ${ses }</h1>
		
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