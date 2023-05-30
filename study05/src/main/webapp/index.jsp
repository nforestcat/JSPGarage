<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
	<head>
		<meta charset="UTF-8">
		<title>회원가입</title>
		<link rel="stylesheet" href="css/style.css">
	</head>
	<body>
		<div id="wrap">
		<!-- form 태그를 이용하면 request정보를 요청할 수 있다 -->
		<!-- form태그 내부에 type=submit이 눌리면 요청이 진행된다 -->
		<!-- form 태그 내부의 input은 name을 가지고 있어야 parameter를 전송할 수 있다 -->
		<!-- 전송받는 페이지에서는 request.getParameter(name)을 이용하여 데이터를 받을 수 있다 -->
		<!-- post방식의 경우 request자체의 encoding규격을 utf-8로 변경하지 않으면 한글이 깨진다 -->
		
		<!-- 보내는 input의 name과 getParameter()의 매개변수와 일치하지 않으면 값을 받을 수 없다 -->
		<!-- radio의 경우 name이 아닌 value를 통해 보낸다(name은 통일해야함) -->
		<!-- 받아온 값은 변수에 저장하여야 여러번 사용이 가능하다 -->
			<form method="post" action="welcome.jsp">
				<h1>회원가입</h1>
				<hr>
				<span>ID : </span>
				<input type="text" name="id" placeholder="아이디 입력">
				<br>
				<span>비밀번호 : </span>
				<input type="password" name="pw" placeholder="비밀번호 입력">
				<br>
				<span>이름 : </span>
				<input type="text" name="nm" placeholder="성명 입력">
				<br>
				<span>전화번호 : </span>
				<input type="tel" name="tel" placeholder="전화번호 입력">
				<br>
				<fieldset>
					<legend>관심분야</legend>
					JAVA<input type="radio" name="subject" value="java">
					HTML<input type="radio" name="subject" value="html">
					CSS<input type="radio" name="subject" value="css">
				</fieldset>
				<fieldset>
					<legend>수강과목</legend>
					JSP<input type="checkbox" name="jsp">
					JavaScript<input type="checkbox" name="javascript">
				</fieldset>
				<hr>
				<input type="submit" value="회원가입">
			</form>
		</div>
	</body>
</html>