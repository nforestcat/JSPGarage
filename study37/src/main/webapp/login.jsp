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
		<form method="post" action="Login.do" name="frm">
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
					<td colspan="3">
						<input type="submit" value="로그인" onclick="return check()">
						<input type="reset" value="취소">
						<input type="button" value="회원가입" onclick="reg()">
					</td>
				</tr>
			</table>
		</form>
		<script>
		function reg(){
			location.href="register.jsp"
		}
		function check(){
			if(document.frm.userid.value.length==0){
				//이렇게 쓰면 실수로 = 하나여도 오류 없이 실행됨
				alert("아이디를 입력하셔야 합니다.");
				frm.userid.focus();
				return false
			}
			if(document.frm.pwd.value==""){
				//위 처럼 쓰면 ==이 아니라 =을 입력해서 비밀번호에 공백이 들어갈 수 있음
				alert("비밀번호를 입력하셔야 합니다.");
				frm.pwd.focus();
				return false
			}
			return true;
		}
		</script>
	</body>
</html>