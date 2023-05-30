<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<h1>JSP에 오신 것을 환영합니다.</h1>
		<!-- 자바 코드는 스크립트릿 내부에 적어서 사용합니다. -->
		<%System.out.println("자바 부분은 이렇게 실행");%>
		<%//위에 거는 콘솔에 나옴. 자바 명령어는 눈에 보이지 않음%>
		<%out.print("<h1>자바부분이지만 HTML로 표현</h1>");%>
		<%//out.print는 html로 표시됨(명령어가 눈에 보이지는 않음)(태그 사용 가능)%>
		<%
			int a = 10;
			int b = 20;
			int sum = a + b;
			
		
		%>
		<h1>변수 a와 b의 합은 <i><%out.print(sum); %></i>입니다.</h1>
		<h1>변수 a와 b의 합은 <i><%=sum%></i>입니다.</h1>
		<!-- HTML의 주석을 사용하는 방법 -->
		<!-- 소스코드가 노출된다는 단점이 있음 -->
		<%-- scriptlet의 주석을 사용하는 방법 --%>
		<%// java의 주석을 사용하는 방법 %>
		
		<%
		for(int i = 1; i <= 6; i++){
			out.print("<h"+ i+">다음의 내용이 출력됩니다."+ "<h"+ i+">");
		}
		%>
	</body>
</html>