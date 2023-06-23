<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<style type="text/css">
			th, td{
				border:1px solid black;
				text-align:center;
			}
		</style>
	</head>
	<body>
		<table>
			<tr>
				<th>번호</th>
				<th>이름</th>
				<th>아이디</th>
				<th>비밀번호</th>
				<th>이메일</th>
				<th>전화번호</th>
				<th>관리자여부</th>
			</tr>
			<c:forEach items="${list }" var="member">
				<tr>
					<td>${member.getNum() }</td>
					<td>${member.getName() }</td>
					<td>${member.getUserid() }</td>
					<td>${member.getPwd() }</td>
					<td>${member.getEmail() }</td>
					<td>${member.getPhone() }</td>
					<td>${member.getAdmin() }</td>
				</tr>
			</c:forEach>
		</table>
		<a href = "index.jsp">되돌아가기</a>
	</body>
</html>