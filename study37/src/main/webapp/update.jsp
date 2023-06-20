<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>개인정보 수정</title>
</head>
<body>
	<form method="post" action="Update.do" name="frm">
		
		<table>
			<tr>
				<td>이름</td>
				<td><input type="text" name="name" value = "${mem.name }"></td>
			</tr>
			<tr>
				<td>아이디</td>
				<td><input type="text" name="userid" value = "${mem.userid }" readonly="readonly"></td>
				</tr>
			<tr>
				<td>비밀번호</td>
				<td><input type="text" name="pwd"></td>
			</tr>
			<tr>
				<td>비밀번호 확인</td>
				<td><input type="password" name="pwd_check"></td>
			</tr>
			<tr>
				<td>이메일</td>
				<td><input type="text" name="email" value = "${mem.email }"></td>
			</tr>
			<tr>
				<td>전화번호</td>
				<td><input type="text" name="phone" value = "${mem.phone }"></td>
			</tr>
			<tr>
				<td>등급</td>
				<td>	
					<c:choose>
					<c:when test="${mem.admin==0 }">
						<input type="radio" name="admin" value="1" onclick="return false">관리자<br>
						<input type="radio" name="admin" value="0" checked="checked" onclick="return false">일반
					</c:when>
					<c:otherwise>
						<input type="radio" name="admin" value="1"checked="checked" onclick="return false">관리자<br>
						<input type="radio" name="admin" value="0" onclick="return false">일반
					</c:otherwise>
					</c:choose>
				</td>
			</tr>
		</table>
		<input type="submit" value="수정하기" onclick="return updateCheck()">
	
	</form>
	<script>
		function updateCheck(){
			if(document.frm.name.value.length==0){
				alert("이름을 입력해 주세요");
				frm.name.focus();
				return false;
			}
			if(document.frm.pwd.value != document.frm.pwd_check.value){
				alert("비밀번호가 일치하지 않습니다");
				frm.pwd_check.focus();
				return false;
			}
			if(document.frm.email.value.length==0){
				alert("이메일을 입력해 주세요");
				frm.email.focus();
				return false;
			}
			if(document.frm.phone.value.length==0){
				alert("전화번호를 입력해 주세요");
				frm.phone.focus();
				return false;
			}
			return true
		}
		
	</script>
</body>
</html>