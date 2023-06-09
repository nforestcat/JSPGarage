<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
		<meta charset="UTF-8">
		<title>jstl 포멧 사용</title>
	</head>
	<body>
		<c:set var="num" value="5000000" scope="page"></c:set>
		fmt:number : <fmt:formatNumber value="${num }" type="number"></fmt:formatNumber>
		<br>
		구분기호없음 : <fmt:formatNumber value="${num }" type="number" groupingUsed="false"></fmt:formatNumber>
		<br>
		퍼센트 표기 : <fmt:formatNumber value="0.5" type="percent"></fmt:formatNumber>
		<br>
		단위 표기 : <fmt:formatNumber value="5000" type="currency"></fmt:formatNumber>
		<br>
		단위 변경 : <fmt:formatNumber value="5000" type="currency" currencySymbol="$"></fmt:formatNumber>
		<br>
		<c:set var="date" value="<%=new java.util.Date() %>" scope="page"></c:set>
		\${date } : ${date }<br>
		fmt:date : <fmt:formatDate value="${date }"></fmt:formatDate><br>
		시간 출력 : <fmt:formatDate value="${date }" type="time"></fmt:formatDate><br>
		모두 출력 : <fmt:formatDate value="${date }" type="both"></fmt:formatDate><br>
		서식 지정 : <fmt:formatDate value="${date }" pattern="yy년 M월 dd일 h시 m 분 s초"></fmt:formatDate>
		<br>
		
		<!-- 일반적인 수의 패턴 표기 -->
		<fmt:formatNumber value="1234.5678987" pattern="000000,000.00000#"></fmt:formatNumber>
		<!-- 0.0# : 0은 자릿수 빈 공간도 작성/ #은 빈 공간일 경우 작성하지 않음, 뒷 자리가 비어있지 않으면 뒤에서 반올림-->
		<!-- 0,00~ : ,구분기호를 00~자리마다(여기서는 두자리) 사용 -->
		<br>
		<a href="change.jsp">국적 변경하러 가기</a>
		
	</body>
</html>