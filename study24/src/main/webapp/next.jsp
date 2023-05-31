<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="data.*" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>데이터 확인 페이지</title>
	</head>
	<body>
		<%
			request.setCharacterEncoding("utf-8");
			String name;
			String kor;
			String eng;
			String math;
			
			//request
			name = request.getParameter("nm");
			kor = request.getParameter("kr");
			eng = request.getParameter("en");
			math = request.getParameter("mt");
			
			//세션 입력 처리
			//하나하나 입력해야함 - 귀찮
			session.setAttribute("nm", name);
			session.setAttribute("kr", kor);
			session.setAttribute("en", eng);
			session.setAttribute("mt", math);
			
			Student s = new Student();
			s.setName(request.getParameter("nm"));
			s.setKor(Integer.parseInt(request.getParameter("kr")));
			s.setEng(Integer.parseInt(request.getParameter("en")));
			s.setMath(Integer.parseInt(request.getParameter("mt")));
			
			session.setAttribute("obj", s);
			
			
		%>
		<h1>확인 페이지</h1>
		<p>이름 : <%=name %></p>
		<p>국어 : <%=kor %></p>
		<p>영어 : <%=eng %></p>
		<p>수학 : <%=math %></p>
		
		<a href="result.jsp">다음 페이지로 이동</a>
		
		<%--
		<a href="#" onclick="sub()">다음 페이지로 이동</a>
		
		<form id="data" method="post" action="result.jsp">
			<input type="hidden" name="nm">
			<input type="hidden" name="kr">
			<input type="hidden" name="en">
			<input type="hidden" name="mt">
		</form>
		<script>
			let data = document.getElementById("data");
			data.nm.value="<%=name%>";
			data.kr.value="<%=kor%>";
			data.en.value="<%=eng%>";
			data.mt.value="<%=math%>";
			function sub(){
				data.submit();
			}
		스크립트릿 주석, 한 번에 다 주석처리 할 수 있음--%>
		
			
		</script>
	</body>
	
</html>