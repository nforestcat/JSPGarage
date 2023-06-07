<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<%
			pageContext.setAttribute("page", "페이지 단위");
			request.setAttribute("request", "리퀘스트 단위");
			session.setAttribute("session", "세션 단위");
			application.setAttribute("application", "어플리케이션 단위");
			
		%>
		<h1>EL의 출력</h1>
		<h1>\${page } : ${page }</h1>
		<h1>\${request } : ${request }</h1>
		<h1>\${session } : ${session }</h1>
		<h1>\${application } : ${application }</h1>
		
		<!-- jstl의 데이터 scope 조절 -->
		<c:set var="page" scope="page">페이지 단위</c:set>
		<c:set var="request" scope="request">리퀘스트 단위</c:set>
		<c:set var="session" scope="session">세션 단위</c:set>
		<c:set var="application" scope="application">어플리케이션 단위</c:set>
		<h1>JSTL의 출력</h1>
		<c:out value="${page }"></c:out>
		<c:out value="${request }"></c:out>
		<c:out value="${session }"></c:out>
		<c:out value="${application }"></c:out>
	</body>
</html>