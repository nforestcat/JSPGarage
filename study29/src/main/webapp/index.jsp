<%@page import="org.eclipse.jdt.internal.compiler.parser.RecoveredRequiresStatement"%>
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
		//*X5,000,000
		//scope 범위 : 제작된 자료가 어디까지 존재할 수 있을지에 대한 범위
		//page scope : 현재 페이지에서의 스코프
		//request scope : 리퀘스트 단위에서의 스코프
		//session scope : 세션 단위(단일 사용자의 전체 페이지 공유)
		//application scope : 어플리케이션 전체에서 공유되는 스코프
		
		pageContext.setAttribute("name", "page scope");
		request.setAttribute("name","request scope");
		session.setAttribute("name","session scope");
		application.setAttribute("name", "application scope");
		
		
		%>
		<!-- 아무것도 지정하지 않았다면 page scope를 기준으로 데이터를 가져온다. -->
		<h1>기본형 : ${name }</h1>
		<h1>\${pageScope.name } : ${pageScope.name }</h1>
		<!-- 다른 범위의 scope들은 별도의 범위를 지정하여 가져올 수 있다. -->
		<h1>\${requestScope.name } : ${requestScope.name }</h1>
		<h1>\${sessionScope.name } : ${sessionScope.name }</h1>
		<h1>\${applicationScope.name } : ${applicationScope.name }</h1>
	</body>
</html>