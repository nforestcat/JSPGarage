<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>jQuery 이벤트 처리</title>
		<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	</head>
	<body>
		<p>p태그를 클릭</p>
		<h1>h1태그를 더블클릭</h1>
		<input type="text" placeholder="마우스를 여기로 이동">
		<script>
			/*function test(){
				alert("p태그가 클릭되었습니다.");
			}
			var p=document.getElementsByTagName("p")[0];
			p.addEventListener("click",test);
			var h1=document.getElementsByTagName("h1")[0];
			h1.addEventListener("dblclick",function(){
				alert("h1태그가 더블클릭되었습니다.");
			});
			var input=document.getElementsByTagName("input")[0];
			input.addEventListener("mouseover", function(){
				input.setAttribute("style","background-color:red;");
			});
			input.addEventListener("mouseout", function(){
				input.setAttribute("style","");
			});*/
			
			//jQuery란? 이름이 $인 function으로 매개변수로 String타입의 CSS생성자를 받아
			//태그를 DOM으로 분리한 객체를 return한다.
			$("p").click(function(){
				alert("p태그가 클릭되었습니다.");
			});
			$("h1").dblclick(function(){
				alert("h1태그가 클릭되었습니다.");
			});
			/*$("input").mouseenter(function(){
				$("input").attr("style","background-color:red;");
			});
			$("input").mouseleave(function(){
				$("input").attr("style","");
			});*/
			$("input").hover(function(){
				$("input").attr("style","background-color:red;");
			}, function(){
				$("input").attr("style","");
			});
			$("input").on("click",function(){
				alert("인풋이 클릭되었습니다.");
			});
		</script>
	</body>
</html>