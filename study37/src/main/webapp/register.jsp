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
		<h3>*표시는 필수 입력 항목입니다</h3>
		<form method="post" action="insert.jsp" name="frm">
			<table>
				<tr>
					<td>이름</td>
					<td>
						<input type="text" name="name">*
						
					</td>
				</tr>
				<tr>
					<td>아이디</td>
					<td><input type="text" name="userid">*
						<input type="hidden" name="reid">
						<input type="button" value="중복확인" onclick="idCheck()">
					</td>
				</tr>
				<tr>
					<td>비밀번호</td>
					<td><input type="password" name="pwd">*</td>
				</tr>
				<tr>
					<td>비밀번호 확인</td>
					<td><input type="password" name="pwd_check">*</td>
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
		<script>
			function idCheck(){
				let url="idCheck.jsp?userid="+document.frm.userid.value;
				let popupX=(window.screen.width/2)-400/2;
				let popupY=(window.screen.height/2)-(200/2);
				window.open(url, "_blank_1", "toolbar=no, menubar=no, scrollbar=yes, width=400, height=200, left="+popupX+", top="+popupY+"");
			}
		</script>
	</body>
</html>