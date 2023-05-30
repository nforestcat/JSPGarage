
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.net.*"%>
<div id="data">
	<%
		request.setCharacterEncoding("utf-8");
		String name=request.getParameter("name");
		String name2=URLDecoder.decode(request.getParameter("name2"),"utf-8");
	%>
	<h1><%=name %>회원님 접속을 환영합니다.</h1>
	<h1><%=name2 %>회원님 접속을 환영합니다.</h1>

</div>