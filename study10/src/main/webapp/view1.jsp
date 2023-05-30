<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키 확인 페이지</title>
</head>
<body>
	<%
		//Cookie객체가 여러개 반환되므로 cookie타입의 배열로 값을 확인한다.
		Cookie[] cookies=request.getCookies();
		int size=cookies.length;
		
		
	%>
	
	<h1>쿠키 값 확인</h1>
	<p>쿠키의 수는 다음과 같습니다 : <%=size %></p>
	
	<%
	for (int i = 0; i < cookies.length; i++){
		%>
		<p>쿠키 값의 이름 확인 : <%=cookies[i].getName() %></p>
		<p>쿠키 값의 내용 확인 : <%=cookies[i].getValue() %></p>
		<% 
	}
	%>
	<a href="view2.jsp">쿠키값 공유 확인하러 가기</a>
</body>
</html>