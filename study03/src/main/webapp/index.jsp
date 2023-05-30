<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
	<head>
		<meta charset="UTF-8">
		<title>jsp연습</title>
	</head>
	<body>
		<p>HTML로 작성한 태그입니다</p>
		<script>
			document.write("<p>JavaScript로 작성한 태그입니다</p>")
			console.log("브라우저 콘솔은 JavaScript로 남깁니다.")
		</script>
		<%
			System.out.println("<p>Java로 작성한 태그입니다<p>");
			out.print("<p>Java로 작성한 태그입니다<p>");
			System.out.println("이클립스 콘솔은 Java로 남깁니다.");
		%>
	</body>
</html>