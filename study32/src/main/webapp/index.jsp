<%@page import="java.beans.Beans"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>jstl에서의 자바빈 사용</title>
	</head>
	<body>
		<h1>자바방식</h1>
		<%
			beans.Student s1 = new beans.Student();
			s1.setName("이진선");
			s1.setAge(19);
			s1.setAddress("서울시 노원구");
		
		%>
		<%=s1.getName()%>
		<%=s1.getAge()%>
		<%=s1.getAge()%>
		<%=s1 %>
		
		
		<h1>jsp액션태그방식</h1>
		<jsp:useBean id="s2" class=beans.Student></jsp:useBean>
		<jsp:setProperty name="s2" property="name" value="고희선"></jsp:setProperty>
		<jsp:setProperty name="s2" property="age" value="25"></jsp:setProperty>
		<jsp:setProperty name="s2" property="address" value="서울시 중구"></jsp:setProperty>
		<%=s2 %>
		
		<h1>jstl방식</h1>
		<c:set var="s3" value="<%=new beans.Student() %>"></c:set>
		<c:set target="s3" property="name" value="이영준"></c:set>
		<c:set target="s3" property="age" value="25"></c:set>
		<c:set target="s3" property="address" value="서울시 성북구"></c:set>
		${s3 }
		
		<h1>JSTL의 활용</h1>
		<c:set var="add" value="${3+5}"></c:set>
		value="add" : <c:out value="add"></c:out>
		<br>
		value="\${add }": <c:out value="${add }"></c:out><br>
		<c:remove var="add"></c:remove>
		삭제 후 value="\${add }": <c:out value="${add }"></c:out><br>
		<!-- c:set은 setAttribute의 기능을 수행 setAttribute("var", "value") -->
		<!-- c:remove는 removeAttribute의 기능을 수행 removeAttribute("var") -->
		
	</body>
</html>