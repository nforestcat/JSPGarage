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
		<form method="post" action="Join.do" name="frm">
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
					<input type="radio" name="admin" value="0" checked="checked">일반</td>
				</tr>
				<tr>
					<td>입력</td>
					<td>
						<input type="submit" value="회원가입" onclick="return joinCheck()">
						<input type="reset" value="초기화">
					</td>
				</tr>
			</table>
		</form>
		<a href = "index.jsp">되돌아가기</a>
		<script>
			function idCheck(){
				let url="idCheck.do?userid="+document.frm.userid.value;
				let popupX=(window.screen.width/2)-400/2;
				let popupY=(window.screen.height/2)-(200/2);
				window.open(url, "_blank_1", "toolbar=no, menubar=no, scrollbar=yes, width=400, height=200, left="+popupX+", top="+popupY+"");
			}
			//회원가입 유효성 검사
			function joinCheck(){
				if(document.frm.name.value.length==0){
					alert("이름을 입력해 주세요");
					frm.name.focus();
					return false;
				}
				if(document.frm.userid.value.length==0){
					alert("아이디를 입력해 주세요");
					frm.userid.focus();
					return false;
				}
				if(document.frm.pwd.value.length==0){
					alert("비밀번호는 반드시 입력하셔야 합니다");
					frm.pwd.focus();
					return false;
				}
				
				if(document.frm.pwd.value != document.frm.pwd_check.value){
					alert("비밀번호가 일치하지 않습니다");
					frm.pwd_check.focus();
					return false;
				}
				if(document.frm.reid.value.length==0){
					alert("아이디 중복체크가 이루어지지 않았습니다.");
					frm.userid.focus();
					return false;
				}
				return true;
			}
		</script>
	</body>
</html>