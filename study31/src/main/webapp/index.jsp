<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>JSTL의 사용</title>
	</head>
	<body>
		<!-- Jsp Standart Tag Library : JSTL -->
		<!-- jstl을 사용하기 위해서는 태그 라이브러리를 불러와줘야 한다. taglib uri -->
		
		<!-- uri : uniform resource identifier : 고유 식별자 , id -->
		<!-- url : uniform resource locator : 해당 자료의 위치 -->
		<!-- urn : uniform resource name : 해당 자료의 이름(동명이인 가능) -->
		
		<!-- 기본기능 : c : http://java.sun.com/jsp/jstl/core -->
		<!-- 형식변경 : fmt : http://java.sun.com/jsp/jstl/fmt -->
		<!-- DB조작 : sql : http://java.sun.com/jsp/jstl/sql-->
		<!-- XML조작 : x : http://java.sun.com/jsp/jstl/xml -->
		<!-- 함수처리 : fn : http://java.sun.com/jsp/jstl/fn-->
		
		<c:out value="jstl 출력"></c:out><br>
		${"EL 출력" }<br>
		<%="scriptlet 출력" %><br>
		<%out.print("java 출력"); %><br>
		
		<% pageContext.setAttribute("java", "java로 저장한 값"); %>
		${java }
		<br>
		<!--  jstl로 데이터 입력 처리 -->
		<c:set var="test" value="jstl로 저장한 값" scope="page"></c:set>
		${test}<br>
		<c:set var="number">30</c:set>
		${number }<br>
		
		<a href="test.jsp">스코프 범위 확인</a>
	</body>
</html>