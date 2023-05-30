<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<style>
			#wrap{
				width: 300px;
				margin: 0 auto;
				border: 10px solid black;
				padding: 20px;
			
			}
			span{
				width: 80px;
				display: inline-block;
			}
			input{
				width: 150px;
			}
			input[type=submit]{
				background-color:white;
				display:block;
				margin: 0 auto;
				margin-top: 5px;
			}
			
		</style>
	</head>
	<body>
		<div id="wrap">
			<form method="post" action="login.jsp">
				<span>아이디 : </span>
				<input type="text" name="user">
				<br>
				<span>비밀번호 : </span>
				<input type="password" name="pw">
				<br>
				<input type="submit" value="로그인!">
			
			</form>
		
		</div>
	</body>
</html>