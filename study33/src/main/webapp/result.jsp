<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<%
			request.setCharacterEncoding("utf-8");
			String color = request.getParameter("color");
			int num = Integer.parseInt(color);
		%>
		<h1><%=color %></h1>
		<%
		switch(num){
		case 1:
			%><h1>빨강</h1><%
			break;
		case 2:
			%><h1>주황</h1><%
			break;
		case 3:
			%><h1>노랑</h1><%
			break;
		case 4:
			%><h1>초록</h1><%
			break;
		case 5:
			%><h1>파랑</h1><%
			break;
		case 6:
			%><h1>남색</h1><%
			break;
		case 7:
			%><h1>보라</h1><%
			break;
		default:
			break;
		}
		%>
		<h1>jstl방식</h1>
		<c:if test="${param.color==1 }">
			<span style="color:red;">빨강</span>
		</c:if>
		<c:if test="${param.color==2 }">
			<span style="color:red;">주황</span>
		</c:if>
		<c:if test="${param.color==3 }">
			<span style="color:red;">노랑</span>
		</c:if>
		<c:if test="${param.color==4 }">
			<span style="color:red;">초록</span>
		</c:if>
		<c:if test="${param.color==5 }">
			<span style="color:red;">파랑</span>
		</c:if>
		<c:if test="${param.color==6 }">
			<span style="color:red;">남색</span>
		</c:if>
		<c:if test="${param.color==7 }">
			<span style="color:red;">보라</span>
		</c:if>
	</body>
</html>