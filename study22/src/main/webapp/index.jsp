
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.net.*"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>인클루드 테스트</title>
	</head>
	<body>
		<div id="wrap">
		
			<jsp:include page="data.jsp">
				<jsp:param name="name" value="가나다"></jsp:param>
				<jsp:param name="name2" value='<%=URLEncoder.encode("김승진", "utf-8")%>'></jsp:param>
			</jsp:include>
		</div>
	</body>
</html>