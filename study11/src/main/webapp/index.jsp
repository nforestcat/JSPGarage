<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>세션 데이터 입력</title>
	</head>
	<body>
		<%
			//Cookie는 서버에서 제작해서 브라우저에 저장한 정보들
			// response를 통해서 목적한 브라우저에게 전달해 주어야 사용가능
			// request를 통해서 브라우저로부터 데이터를 전달 받아야 사용가능
			// 브라우저와 서버사이에 1:1 매칭되는 정보를 저장할 수 있다.
			// Cookie는 서버에서 만들어줘야해서 new Cookie()로 객체를 생성해야 한다.
			
			//session은 서버 내부에서 미리 제장되어 있고 정보를 부가적으로 저장할 수 있다
			// 그냥 쓰면 된다.
			// 그냥 쓰면 된다
			// 브라우저와 서버사이에 1:1 매칭되는 정보를 저장할 수 있다.
			// session은 미리 제작되어 있어서 별도의 객체 생성 작업이 필요없다.
			// 데이터의 반환규격이 Object이기 때무에 캐스팅하여 사용하여야 한다. *X5,000,000
			
			//session : 따로 만들지 않아도 서버가 내부에 두고 있는 데이터 저장 규격
			//클라이언트마다 1:1 매칭된 데이터를 저장함
			String str="세션에 대해 공부합니다";
			//session.setAttribute("데이터이름",데이터값);
			session.setAttribute("msg",str);
		%>
	</body>
</html>