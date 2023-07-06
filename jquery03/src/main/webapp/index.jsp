<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>jQuery 효과 처리</title>
		<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	</head>
	<body>
		<p>다음의 내용을 변경합니다.</p>
		<hr>
		<input type="button" id="hideBtn" value="숨기기">
		<input type="button" id="showBtn" value="보이기">
		<h1>클릭하여 페이드처리</h1>
		<div id="text" style="display:none;">이 문장을 나타나게 합니다.</div>
		<h2>클릭하여 페이드아웃처리</h2>
		<div id="text2">이 문장을 사라지게 합니다.</div>
		<h3>클릭하여 페이드 토글 처리</h3>
		<div id="text3">이 문장은 사라졌다 나타납니다.</div>
		
		<a href="slide.jsp">슬라이드 처리</a>
		<script>
			/*
			let hideBtn = document.getElementById("hideBtn");
			let showBtn = document.getElementById("showBtn");
			let p = document.getElementsByTagName("p")[0];
			hideBtn.addEventListener("click",function(){
				p.setAttribute("style","display:none;");
				//p.style.display="none";
			});
			showBtn.addEventListener("click",function(){
				p.setAttribute("style", "display:inline;");
				//p.style.display="inline";
			});
			*/
			//숨기기 나타나게하기
			$("#hideBtn").click(function(){
				$("p").hide();
			});
			$("#showBtn").click(function(){
				$("p").show();
			});
			//서서히 숨기기 서서히 나타나게하기
			$("h1").click(function(){
				$("#text").fadeIn(1000, function(){
					alert("페이드인 끝");
				});
			});
			$("h2").click(function(){
				$("#text2").fadeOut(1000, function(){
					alert("페이드아웃 끝");
				});
			});
			$("h3").click(function(){
				$("#text3").fadeToggle(1000);
			});
			/*
			setInterval(function(){
				oppacity+=0.02;
			},1);
			*/
		</script>
	</body>
</html>