<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>$.ajax사용</title>
		<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	</head>
	<body>
		<p>통신요청</p>
		<h1 id="response"></h1>
		<h1 id="status"></h1>
		<h1 id="xhr"></h1>
		
		<script>
			//$.ajax(url);
			//$.ajax(url,{option});
			//$.ajax(url,{type:"POST", key:value, key:function(){}})
			$("p").click(function(){
				$.ajax("JQAX",{
					type:"POST",
					data:{
						name:"똘이",
						race:"보더콜리"
					},
					success:function(response, status, xhr){
						$("#response").text(response);
						$("#status").text(status);
						$("#xhr").text(xhr);
					}
				})
			});
		</script>
	</body>
</html>