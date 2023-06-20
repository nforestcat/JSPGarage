<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>아이디 중복 확인</title>
	</head>
	<body>
		<%--<h1>입력하신 아이디는</h1>
		<h1>${param.userid }입니다.</h1> --%>
		<form method="get" action="idCheck.do" name="frm">
		아이디<input type="text" name="userid"value=${userid }>
		<input type="submit" value="중복체크">
		
		<br>
		<c:if test="${result==1 }">
			<script>
				opener.document.frm.reid.value="";
			</script>
			${userid }는 이미 사용중인 아이디 입니다.
		</c:if>
		<c:if test="${result==-1 }">
			${userid }는 사용 가능한 아이디 입니다.
			<input type="button" value="사용하기" onclick="idok()">
		</c:if>
		</form>
		<script>
			function idok(){
				//opener: 해당 창을 열게 만든 원인이 되는 화면
				//self: 본인화면
				opener.document.frm.userid.value=document.frm.userid.value;
				opener.document.frm.reid.value=document.frm.userid.value;
				self.close();
			}
		</script>
		
	</body>
</html>