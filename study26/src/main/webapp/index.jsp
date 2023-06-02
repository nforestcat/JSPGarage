<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
	<head>
		<meta charset="UTF-8">
		<title>자바빈 사용하기</title>
		<style>
			#wrap{
				width: 300px;
				margin: 0 auto;
				border: 10px solid gray;
			}
			span{
				display:inline-block;
				width:80px;
			}
			input[type=submit]{
				display:block;
				width:100%;
			}
			.phone{
			 width: 45px;
			}
		</style>
	</head>
	<body>
		<div id="wrap">
			<form method="post" action="register.jsp">
				<span>이름</span><input type="text" name="name">
				<br>
				<span>아이디</span><input type="text" name="userId">
				<br>
				<span>비밀번호</span><input type="text" name="pass">
				<br>
				<span>이메일</span><input type="text" name="email">
				<br>
				<span>연락처</span>
				<input type="text" class="phone" name="first">
				<input type="text" class="phone" name="second">
				<input type="text" class="phone" name="third">
				<br>
				<input type="submit" value="입력하기">
			</form>
		</div>
	</body>
</html>