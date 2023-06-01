<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="beans.*" %>
<!DOCTYPE html>
<html lang="ko">
	<head>
		<meta charset="UTF-8">
		<title>자바빈 사용하기</title>
	</head>
	<body>
		<!-- jsp:useBean bean의 형태(private 필드 get, set메서드)를 가진 class를 씀 -->
		<!-- class 해당 사용할 class파이의 경로와 이름 -->
		<!-- id class를 통해 제작될 객체의 이름 -->
		<!-- scope 해당 객체가 잔존해있을 범위 -->
		<jsp:useBean class="beans.Student" id="s" scope="page"></jsp:useBean>
		<!-- scope의 범위 -->
		<!-- page, request, session, application -->
		
		
		<!-- jsp:setProperty 객체 내부의 필드에 값을 입력하는 태그 -->
		<!-- name 값을 입력할 객체의 이름, useBean에서의 id -->
		<!-- property 값이 저장될 객체 내부의 필드 이름 -->
		<!-- value 저장할 값 -->
		<%--
		<%s.setName("홍길동"); %>
		<h1><%=s.getName() %></h1>
		 --%>
		<jsp:setProperty name="s" property="name" value="홍길동"></jsp:setProperty>
		<h1><jsp:getProperty name="s" property="name"></h1>
		<jsp:setProperty name="s" property="age" value="19"></jsp:setProperty>
		<h1><jsp:getProperty name="s" property="age"></jsp:getProperty></h1>
		<jsp:setProperty name="s" property="address" value="서울시 노원구"></jsp:setProperty>
		<h1><jsp:getProperty name="s" property="address"></jsp:getProperty></h1>
		
		
	</body>
</html>