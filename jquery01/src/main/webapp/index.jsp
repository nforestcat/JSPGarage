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
		<p>눌러서 지우기</p>
		<p>p태그가 여러개라면</p>
		<p>무슨 문제가 생길까요?</p>
		<a href="page2.jsp">다음 내용 보러 가기</a>
		<script>
			//jQuery : DOM에 접근을 CSS선택자를 통해서 수행할 수 있도록 만든 JS라이브러리
			//라이브러리이므로 외부에서 불러와서 사용해야 한다
			//이름이 $인 남이 만들어 놓은 function이다.
			//$();
			//기본 javascript 방식
			/*
			let p = document.getElementsByTagName("p")[0];
			p.addEventListener("click", function(){
				p.style.display="none";
			});
			function(e){
				e.target.style.display="none";
			}
			*/
			//jQuery 방식
			$("p").click(function(){
				$(this).hide(); //this로 지정 가능
			});
			
			//$(); jQuery는 String타입의 매개변수를 받아 동작하는 함수이다.
			//return되는 결과는 jQueryObject타입으로 반환되며 배열의 형태를 가지고 있다.
			//$("선택자").동작(function(){동작시 수행될 내용});
			console.log($("p"));
			
		</script>
	</body>
</html>