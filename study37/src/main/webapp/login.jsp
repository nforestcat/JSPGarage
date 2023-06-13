<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>로그인 페이지</title>
	</head>
	<body>
		<h1>로그인</h1>
		<form method="post" action="Login.do">
			<table>
				<tr>
					<td>아이디</td>
					<td><input type="text" name="userid"></td>
				</tr>
				<tr>
					<td>비밀번호</td>
					<td><input type="password" name="pwd"></td>
				</tr>
				<tr>
					<td colspan="3"><input type="submit" value="로그인">
					<input type="reset" value="취소">
					<input type="button" value="회원가입">
					
					</td>
				</tr>
			</table>
		</form>
	</body>
</html>