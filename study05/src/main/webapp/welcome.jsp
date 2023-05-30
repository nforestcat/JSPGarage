<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>회원가입 확인</title>
	</head>
	<body>
		<%
			request.setCharacterEncoding("UTF-8");
			//*post처리시 한글 깨짐 방지
			String id = request.getParameter("id");
			String pw = request.getParameter("pw");
			String nm = request.getParameter("nm");
			String tel = request.getParameter("tel");
			String subject = request.getParameter("subject");
			String jsp = request.getParameter("jsp");
			String javascript = request.getParameter("javascript");
		%>
		<table>
			<tr>
				<td>아이디 : </td>
				<td><%=id %></td>
			</tr>
			<tr>
				<td>비밀번호 : </td>
				<td><%=pw %></td>
			</tr>
			<tr>
				<td>이름 : </td>
				<td><%=nm %></td>
			</tr>
			<tr>
				<td>전화번호 : </td>
				<td><%=tel %></td>
			</tr>
			<tr>
				<td>관심분야 : </td>
				<td><%=subject %></td>
			</tr>
			<tr>
				<td>JSP 수강 여부 : </td>
				<td><%=jsp %></td>
			</tr>
			<tr>
				<td>JavaScript 수강 여부 : </td>
				<td><%=javascript %></td>
			</tr>
		</table>
	</body>
</html>