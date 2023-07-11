<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>게시물 목록 보기</title>
	</head>
	<body>
		<h1>currentPage : ${currentPage}</h1>
		<h1>recordsPerPage : ${recordsPerPage}</h1>
		<table>
			<tr>
				<th>num</th>
				<th>title</th>
				<th>content</th>
			</tr>
			<c:forEach items="${data}" var="data">
				<tr>
					<td>${data.getNum() }</td>
					<td>${data.getTitle() }</td>
					<td>${data.getContent() }</td>
				</tr>
			</c:forEach>
		</table>
		<ul >
			<c:if test="${currentPage != 1 }">
				<li style="display:inline-block;"><a href="ReadPage?currentPage=${currentPage -1 }&recordsPerPage=${recordsPerPage}">[이전페이지]</a></li>
			</c:if>
			<c:forEach begin="1" end="${nPage }" var="i">
			<c:choose>
				<c:when test="${currentPage eq i}">
					<li style="display:inline-block;">[<a>${i }(현재)</a>]</li>
				</c:when>
				<c:otherwise>
					<li style="display:inline-block;">[<a href="ReadPage?currentPage=${i }&recordsPerPage=${recordsPerPage}">${i }</a>]</li>
				</c:otherwise>
			</c:choose>
				
			</c:forEach>
			<c:if test="${currentPage lt nPage }">
				<li style="display:inline-block;"><a href="ReadPage?currentPage=${currentPage +1 }&recordsPerPage=${recordsPerPage}">[다음페이지]</a></li>
			</c:if>
		</ul>
	</body>
</html>