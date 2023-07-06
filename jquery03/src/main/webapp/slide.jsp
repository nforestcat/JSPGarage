<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	</head>
	<body>
		<h1 id="toggle">슬라이드 토글</h1>
		<h1 id="down">슬라이드 다운</h1>
		<div id="sd" style="background-color:red; width:300px; height:300px; display:none;"></div>
		<h1 id="up">슬라이드 업</h1>
		<script>
			//슬라이드 다운을 메뉴에 적용하려는 경우 position처리를 해 주어야 한다.
			$("#down").click(function(){
				$("#sd").slideDown(5000);
			});
			$("#up").click(function(){
				$("#sd").slideUp(5000);
			});
			$("#toggle").click(function(){
				$("#sd").slideToggle(3000);
			});
		</script>
	</body>
</html>