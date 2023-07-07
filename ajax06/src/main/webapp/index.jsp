<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>외부 데이터 통신</title>
		<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	</head>
	<body>
		<input type="text" placeholder="여기에 값을 입력">
		<input type="button" value="전송">
		<h1 id="request"></h1>
		<h1 id="response"></h1>
		<h1 id="status"></h1>
		<script>
			/*$("button").click(function(){
				$("#target").load("JQS", function(response, status, xhr){
					console.log("반환값 : "+response);
					console.log("상태값 : "+status);
					console.log(xhr);	//Object데이터의 경우 String이랑 +시키면 보기힘들다.
				});
			});*/
			$("input[type=button]").click(function(){
				var data=$("input[type=text]").val();
				console.log(data);
				$.get("JQS?data="+data, function(response, status){
					$("#request").text("전송할 값 : "+data);
					$("#response").text("전송받은 값 : "+response);
					$("#status").text("통신상태 값 : "+status);
				});
			});
		</script>
	</body>
</html>