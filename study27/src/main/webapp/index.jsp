<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
	<head>
		<meta charset="UTF-8">
		<title>EL</title>
	</head>
	<body>
		<!-- Expression Language : 표현언어 -->
		<!-- 스크립트릿 또는 jsp액션태그가 화면이 복잡해져서 가독하기 어려운 경우 -->
		<!-- EL의 방식을 이용하여 코드를 단순화하고 생산성을 높일 수 있다. -->
		
		<!-- jsp방식 -->
		<!-- null의 계산 결과는 존재하지 않으므로 표시되지 않음 -->
		<%out.print("문자"); %>
		<%="문자" %>
		${"문자"}
		<br>
		<!-- EL의 종류 -->
		정수형 : ${10 }<br>
		실수형 : ${5.6 }<br>
		문자열형 : ${"안녕하세요" }<br>
		논리형 : ${true }<br>
		null : ${null }<br>
		
		<a href="expr.jsp">계산식 확인하러 가기</a>
	</body>
</html>