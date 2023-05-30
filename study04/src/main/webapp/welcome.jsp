<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>데이터를 전송받은 페이지 입니다.</title>
	</head>
	<body>
		<h1>페이지가 이동되었습니다.</h1>
		<%
			String first=request.getParameter("first");
			String second=request.getParameter("second");
			System.out.println(first + " , "+ second);
					
		%>
		<h1>첫번째로 입려받은 내용 : <%out.print(first); %></h1>
		<h1>두번째로 입력받은 내용 : <%=second%></h1>
	</body>
</html>