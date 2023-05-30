<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>두번째 프로젝트</title>
	</head>
	<body>
		<h1>여기는 두번째 프로젝트입니다.</h1>
		<h2>태그로 적어서 확인</h2>
		<%
		//<h3>태그를 스크립트릿 내부에 넣게 되면</h3>
		//스크립트릿 내부에서는 모든 코드를 java로 인식하기 때문에
		//태그를 바로 집어넣으면 오류가 발생한다.
		
		//html뿐 만 아니라 javascript코드도 담아서 보내줄 수 있다.
		
		
		%>
		<%
			int number=-1;
			if(number > 0){
				out.print("<h3>" + number + "는 양수입니다.</h3>");	
			} else{ 
		%>
				<h3><%=number%>는 양수입니다.</h3>
		<%
			}
			
		%>
		
		<%
			int num = 500;
			if (num > 0){
				out.print("<h3>"+num+"는 양수입니다</h3>");
			} else {
				out.print("<h3>"+num+"는 음수입니다</h3>");
			}
			
			
			
		%>
		<a href="page1.jsp">1페이지로 이동</a>
		<%
			System.out.println("누군가 메인페이지 접속");
		%>
	</body>
</html>