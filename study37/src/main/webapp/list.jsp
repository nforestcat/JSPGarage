<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<style type="text/css">
			th, td{
				border:1px solid black;
				text-align:center;
			}
		</style>
	</head>
	<body>
		<%
			Connection conn = null;	//데이터베이스와 접속할 회선
			Statement stmt = null;	//자바에서 데이터베이스쪽으로 쿼리문을 전달해줄 객체
			ResultSet rs = null;	//데이터베이스쪽에서 자바로 보내오는 결과물을 담은 객체
			
			String url = "jdbc:mysql://127.0.0.1:3306/study";
			String id="root";
			String pass = "iotiot";
			
			String sql = "select * from member;";
			
			try{
				Class.forName("com.mysql.cj.jdbc.Driver");
				conn=DriverManager.getConnection(url, id, pass);
				stmt = conn.createStatement();
				rs = stmt.executeQuery(sql);
				out.print("<table>");
			%>
			<tr>
				<th>이름</th>
				<th>아이디</th>
				<th>비밀번호</th>
				<th>이메일</th>
				<th>전화번호</th>
				<th>관리자</th>
			</tr>
			<%
				while(rs.next()){
					out.print("<tr>");
					out.print("<td>"+rs.getString("name")+"</td>");
					out.print("<td>"+rs.getString("userid")+"</td>");
					out.print("<td>"+rs.getString("pwd")+"</td>");
					out.print("<td>"+rs.getString("email")+"</td>");
					out.print("<td>"+rs.getString("phone")+"</td>");
					out.print("<td>"+rs.getString("admin")+"</td>");
					out.print("</tr>");
				}
				out.print("</table>");
			} catch(Exception e){
				System.out.println("접속 중 오류 발생: "+ e);
			} finally{
				try{
				if(rs!=null)rs.close();
				if(stmt!=null)stmt.close();
				if(conn!=null)conn.close();
				} catch( Exception e){
					System.out.println("접속 종료 중 오류 발생: "+e);
				}
			}
			
		
		%>
		<a href = "index.jsp">되돌아가기</a>
	</body>
</html>