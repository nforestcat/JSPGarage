<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
	<head>
		<meta charset="UTF-8">
		<title>쿠키 처리</title>
	</head>
	<body>
		<%
			//*X5,000,000
			//쿠키는 브라우저로 전달할 때 response를 따라가고
			//값을 확인할 때 request로 가져온다.
			
			//cookie
			//쿠키 객체를 생성하면 해당 정보가 접속자의 브라우저에 저장된다.
			//브라우저가 해당 데이터를 가지고 있으므로
			//브라우저를 통해 통신되는 모든 jsp파일이 해당 데이터를 사용할 수 있다.
			//Cookie("쿠키 이름","저장할 정보");
			//쿠키 이름에는 특수문자 또는 기호가 들어갈 수 없다.
			Cookie cookie = new Cookie("data", "dookiedata123456");
			//쿠키 객체가 존재할 수 있는 시간을 초단위로 지정할 수 있다.
			cookie.setMaxAge(60*60);
			
			//구워진 쿠키는 response를 통해서 전달해주어야 사용이 가능하다.
			response.addCookie(cookie);

		%>
		<h1>쿠키 값을 저장해주는 인덱스 페이지</h1>
		<a href="view1.jsp">쿠키값 확인하러 가기</a>
	</body>
</html>