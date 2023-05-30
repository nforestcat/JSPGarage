<%@page import="org.apache.jasper.tagplugins.jstl.core.Out"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@	page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="ko">
	<head>
		<meta charset="UTF-8">
		<title>데이터베이스 연결 확인</title>
		<style>
		td{
			border: 1px solid black;
		}
		</style>
	</head>
	<body>
		<%
			Connection conn = null;
			Statement stmt = null;
			ResultSet rs = null;
			
			//test할 때 빼고는 숨기기
			String url="jdbc:mysql://127.0.0.1:3306/sample";
			String id="root";
			String pw="iotiot";
			String sql="select * from register;";
			
			try{
				//Class.forName("com.mysql.jdbc.Driver");
				Class.forName("com.mysql.cj.jdbc.Driver");
				//mysql 버전 5하고 8하고 다름
				conn=DriverManager.getConnection(url, id, pw);
				stmt = conn.createStatement(); 
				rs = stmt.executeQuery(sql);
				out.print("<table>");
				while(rs.next()){
					out.print("<tr>");
					String uid = rs.getString("id");
					String pass = rs.getString("pass");
					String name = rs.getString("name");
					String email = rs.getString("email");
					String phone = rs.getString("phone");
					String address = rs.getString("address");
					
					out.print("<td>"+uid+"</td>");
					out.print("<td>"+pass+"</td>");
					out.print("<td>"+name+"</td>");
					out.print("<td>"+email+"</td>");
					out.print("<td>"+phone+"</td>");
					out.print("<td>"+address+"</td>");
					out.print("</tr>");
				}
				out.print("</table>");
			}catch(Exception e){
				System.out.println("접속중 오류 발생 : "+e);
			} finally{
				try{
					
				} catch (Exception ex){
					System.out.println("접속 해제중 오류 발생 : " + ex);
				}
			}
		%>
	</body>
</html>