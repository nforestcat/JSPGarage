<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="test.Sample" %>
<!DOCTYPE html>
<html lang="ko">
	<head>
		<meta charset="UTF-8">
		<title>자바 클래스의 이용</title>
	</head>
	<body>
		<%
			Sample s = new Sample();
		
		%>
		<h1>이름 : <%=s.name %></h1>
		<h1>나이 : <%=s.age %></h1>
		<h1>주소 : <%=s.address %></h1>
		
	</body>
</html>