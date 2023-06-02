<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>EL의 숫자 계산</title>
	</head>
	<body>
	 <% 
	 	String first = request.getParameter("first");
	 	String second = request.getParameter("second");
	 	String result = first+second;
	 %>
	 
	 <h1>더한 값 : <%=result %></h1>
	 
	 <%
	 	int fnum=Integer.parseInt(first);
	 	int snum = Integer.parseInt(second);
	 	int rnum = fnum + snum;
	 %>
	 
	 <h1>parseInt : <%=rnum %></h1>
	 
	 <h1>EL 방식 : ${param.first + param.second }</h1>
	 <h1>기존 방식대로 처리 : ${param.first }${param.second }</h1>
	 <!-- EL의 경우 String 과 int의 판단을 자동으로 수행 -->
	</body>
</html>