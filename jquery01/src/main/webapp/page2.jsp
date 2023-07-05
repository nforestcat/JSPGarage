<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>jQuery 선택자</title>
		<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	</head>
	<body>
		<p><b>동해물</b>과 <b>백두산</b>이 마르고 닳도록</p>
		<p><i id="green">하느님</i>이 보우하사 <i id="blue">우리나라</i> 만세</p>
		<p><span class="sp">무궁화</span> <span class="sp">삼천리</span> <span class="sp">화려강산</span></p>
		<p>대한사람 대한으로 길이 보전하세</p>
		
		<a href="page3.jsp">다음 내용 보러 가기</a>
		
		<script>
			/*
			document.getElementsByTagName("b")[0].setAttribute("style","color:blue;");
			document.getElementsByTagName("b")[1].setAttribute("style","color:green;");
			document.getElementById("green").setAttribute("style", "color:green;");
			document.getElementById("blue").setAttribute("style", "color:blue;");
			*/
			
			$("b:first-child").attr("style","color:red;");
			$("#green").attr("style", "color:green;");
			$("#blue").attr("style", "color:blue;");
			
			/*
			let span = document.getElementsByClassName("sp");
			console.log(span);
			for(let i = 0; i<span.length; i++){
				span[i].setAttribute("style","color:orange;");
			}
			*/
			$(".sp:nth-child(2)").attr("style","color:orange;");
			//console.log(b);
		</script>
	</body>
</html>