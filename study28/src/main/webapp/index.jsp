<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
	<head>
		<meta charset="UTF-8">
		<title>패러미터 전송 페이지</title>
	</head>
	<body>
		<div id="wrap">
			<form method="post" action="test.jsp">
				아이디 : <input type="text" name="user"><br>
				비밀번호 : <input type="password" name="pw"><br>
				<hr>
				좋아하는 계절 
				<br>
				<input type="checkbox" name="season" value="spring">봄
				<input type="checkbox" name="season" value="summer">여름
				<input type="checkbox" name="season" value="fall">가을
				<input type="checkbox" name="season" value="winter">겨울
				<hr>
				<input type="submit" value="전송">
			</form>
			<hr>
			<hr>
			<form method="post" action="add.jsp">
				<input type="text" name="first">+
				<input type="text" name="second"><br>
				<input type="submit" value="계산하기">
			
			
			</form>
		</div>
	</body>
</html>