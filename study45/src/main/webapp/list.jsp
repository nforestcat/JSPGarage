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
		<div id="wrap">
			<h1>상품리스트</h1>
			<table>
				<tr>
					<th>번호</th>
					<th>이름</th>
					<th>가격</th>
					<th>수정</th>
					<th>삭제</th>
					<th>이미지</th>
				</tr>
				<c:forEach items="${productList }" var="product">
					<tr>
						<td>${product.getCode() }</td>
						<td>${product.getName() }</td>
						<td>${product.getPrice() }</td>
						<td>수정</td>
						<td>삭제</td>
						<td><img src="${product.getPictureurl()}"></td>
					</tr>
				</c:forEach>
			</table>
		</div>
	</body>
</html>