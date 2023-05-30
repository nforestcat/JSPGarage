<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
	<head>
		<meta charset="UTF-8">
		<title>메인페이지</title>
		<style>
			#wrap{
				width: 500px;
				margin: 0 auto;
				border: 1px solid black;
			}
			ul{
				list-style: none;
				margin: 0;
				padding: 0;
			}
			li{
				width: 75px;
				height: 20px;
				padding: 10px;
				border: 2px solid black;
				float: left;
				text-align:center;
				font-weight:bold;
			
			}
			li:hover{
				background-color:black;
				color: white;
			}
		</style>
	</head>
	<body>
		<%
			String grade = (String) session.getAttribute("grade");
			if(grade==null){
				response.sendRedirect("index.jsp");
			} else{
			%>

		<div id="wrap">
			<h1><%=grade %>님 접속을 환영합니다.</h1>
			<ul>
				<li>메뉴1</li>
				<li>메뉴2</li>
				<li>메뉴3</li>
				<%
					if(grade.equals("관리자")){
					%><li>관리메뉴</li><%
					}
				%>
				<li id="out">로그아웃</li>
			</ul>
		</div>
		<script>
			let out=document.getElementById("out");
			out.addEventListener("click", function(){
				location.href="logout.jsp";
				
			});
		</script>
		<%
			}
			
		%>
	</body>
</html>