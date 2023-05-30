<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
	<head>
		<meta charset="UTF-8">
		<title>메인 페이지</title>
		<link rel="stylesheet" href="css/style.css">
	</head>
	<body>
		<%
			String num= null;
			String name = null;
			String email = null;
			boolean login = false;
			if(session.getAttribute("login")!=null){
				login=(boolean)session.getAttribute("login");
				num=(String)session.getAttribute("num");
				name=(String)session.getAttribute("name");
				email=(String)session.getAttribute("email");
			}
		
		%>
		<div id="wrap">
			<h1>테스트 사이트 입니다.<%=login %></h1>
			<div class="menus">
				<ul>
					<li>메인페이지</li>
					<li>회원목록</li>
					<li>상품목록</li>
					<li>상품입력</li>
				
				</ul>
			
			</div>
			<div class="tab">
				<%if(!login){%>
			
				<form method="post" action="login.jsp">
					<span>아이디</span>
					<input type="text" name="id">
					<br>
					<span>비밀번호</span>
					<input type="password" name="pw">
					<br>
					<input type="submit" value="로그인">
				</form>
			<%} else { %>
				<p><%=num %></p>
				<p><%=name %></p>
				<p><%=email %></p>
				<input type="button" value="로그아웃" onclick="logout()">
			<%} %>
			</div>
		</div>
		<script>
			function logout(){
				location.href="logout.jsp";
			}
		</script>
	</body>
</html>