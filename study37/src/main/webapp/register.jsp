<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>회원가입 페이지</title>
	</head>
	<body>
		<h1>여기는 회원가입 페이지 입니다</h1>
		<form method="post" action="insert.jsp">
			<table>
				<tr>
					<td>이름</td>
					<td><input type="text" name="name"></td>
				</tr>
				<tr>
					<td>아이디</td>
					<td><input type="text" name="userid"></td>
				</tr>
				<tr>
					<td>비밀번호</td>
					<td><input type="password" name="pwd"></td>
				</tr>
				<tr>
					<td>이메일</td>
					<td><input type="text" name="email"></td>
				</tr>
				<tr>
					<td>전화번호</td>
					<td><input type="text" name="phone"></td>
				</tr>
				<tr>
					<td>등급</td>
					<td><input type="radio" name="admin" value="1">관리자<br>
					<input type="radio" name="admin" value="0">일반</td>
				</tr>
				<tr>
					<td>입력</td>
					<td>
						<input type="submit" value="회원가입">
						<input type="reset" value="초기화">
					</td>
				</tr>
			</table>
		</form>
		<a href = "index.jsp">되돌아가기</a>
	</body>
</html>