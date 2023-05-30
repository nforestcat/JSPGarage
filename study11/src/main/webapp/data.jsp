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
		//세션 값을 가져올 때는 session.getAttribute("데이터이름");
		//세션에 값을 꺼낼때는 Object 타입으로 데이터가 빠져나오므로
		//개발자가 편의한 사용을 위해서는 캐스팅을 통해 강제형변환을 해 주어야 한다.
		String msg =(String) session.getAttribute("msg");
		
		
	%>
	<h1><%=msg %></h1>
</body>
</html>