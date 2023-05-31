<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="data.Student" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>최종 도착 페이지</title>
	</head>
	<body>
		<%
			
			//request.setCharacterEncoding("utf-8");
			Student s=(Student) session.getAttribute("obj");
			String name;
			//String kor;
			//String eng;
			//String math;
			int kor;
			int eng;
			int math;
			//name =(String)session.getAttribute("name");
			//kor =(String)session.getAttribute("kr");
			//eng =(String)session.getAttribute("en");
			//math =(String)session.getAttribute("mt");
			name = s.getName();
			kor = s.getKor();
			eng =s.getEng();
			math =s.getMath();
			
			//int sum = Integer.parseInt(kor)+Integer.parseInt(eng)+Integer.parseInt(math);
			//int sum = kor + eng + math;
			int sum = s.sum();
			float avg = s.avg();
			//name = request.getParameter("nm");
			//kor = request.getParameter("kr");
			//eng = request.getParameter("en");
			//math = request.getParameter("mt");
			
		%>
		<h1 style="color:red;">최종 도착 페이지</h1>
		<p>이름 : <%=name %></p>
		<p>국어 : <%=kor %></p>
		<p>영어 : <%=eng %></p>
		<p>수학 : <%=math %></p>
		<p>총점 : <%=sum %></p>
		<p>평균 : <%=avg %></p>
		<%-- <p><%=s %></p>--%>
		
		<a href="result.jsp">다음 페이지로 이동</a>
	</body>
</html>