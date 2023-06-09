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
			for(int i = 0; i <= 10; i+=2){
				out.print("<h3 style='color:red;'>"+i+"</h3>");
			}
		%>
		<c:forEach var="i" begin="0" end="10" step="2" varStatus="status">
			<h3 style='color:blue;'>${i }:${status.count }</h3>
		</c:forEach>
		
		<!-- 토큰 처리 -->
		<!-- 특정 구분자로 여러 데이터가 구별된 경우 구분자를 기준으로 데이터를 쪼개는 기능 -->
		<%
			String str = "봄,여름,가을,겨울";
			pageContext.setAttribute("season", str);
			
			String msg = "iot,융합.프로그래밍?학과";
			pageContext.setAttribute("iot", msg);
		%>
		
		${season }
		<br>
		<c:forTokens var="data" items="${season }" delims=",">
			${data }<br>
		</c:forTokens>
		${iot }<br>
		<c:forTokens var="test" items="${iot }" delims=",.?">
			${test }<br>
		</c:forTokens>
		
		<c:import url="test.jsp" var="view" scope="application" charEncoding="UTF-8"></c:import>
		${view }
		<a href="next.jsp">다른 페이지에서 공유 확인</a>
	</body>
</html>