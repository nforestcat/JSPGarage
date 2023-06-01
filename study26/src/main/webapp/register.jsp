<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<%
			request.setCharacterEncoding("utf-8");
			/*
			String name = request.getParameter("name");
			String userId = request.getParameter("userId");
			String pass = request.getParameter("pass");
			String email = request.getParameter("email");
			String phone = request.getParameter("phone");
			*/
		%>
		<jsp:useBean class="beans.Reg" id="r"></jsp:useBean>
		<jsp:setProperty name="r" property="*"></jsp:setProperty>
		<!-- setProperty *을 사용하기 위해서는 -->
		<!-- class의 변수명과 input의 name이 일치해야 한다 -->
		
		<h1>전송받은 데이터 확인</h1>
		<p>이름 : <%=r.getName() %></p>
		<p>이름 : <jsp:getProperty name="r" property="name"></jsp:getProperty></p>
		<p>아이디 : <%=r.getUserId() %></p>
		<p>아이디 : <jsp:getProperty name="r" property="userId"></jsp:getProperty></p>
		<p>비밀번호 : <%=r.getPass() %></p>
		<p>비밀번호 : <jsp:getProperty name="r" property="pass"></jsp:getProperty></p>
		<p>이메일 : <%=r.getEmail() %></p>
		<p>이메일 : <jsp:getProperty name="r" property="email"></jsp:getProperty></p>
		<p>연락처 : <%=r.getPhone() %></p>
		<p>연락처 : <jsp:getProperty name="r" property="phone"></jsp:getProperty></p>
		
	</body>
</html>