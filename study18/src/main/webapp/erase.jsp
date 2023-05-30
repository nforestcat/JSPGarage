<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@	page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="ko">
	<head>
		<meta charset="UTF-8">
		<title>회원 삭제 페이지</title>
		<style>
			th,td{
				border: 1px solid black;
				text-align: center;
			}
			#wrap{
				width: 700px;
				margin: 100px auto;
				padding: 50px;
				border:10px solid lightgray;
			}
		</style>
	</head>
	<body>
		<div id="wrap">
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
				%>
				<tr>
					<th>회원번호</th>
					<th>아이디</th>
					<th>비밀번호</th>
					<th>이름</th>
					<th>이메일</th>
					<th>전화번호</th>
					<th>주소</th>
					<th>삭제</th>
				</tr>
				<%
				while(rs.next()){
					out.print("<tr>");
					String num = rs.getString("num");
					String uid = rs.getString("id");
					String pass = rs.getString("pass");
					String name = rs.getString("name");
					String email = rs.getString("email");
					String phone = rs.getString("phone");
					String address = rs.getString("address");	
					%>
					<tr>
						<td><%=num %></td>
						<td><%=uid %></td>
						<td><%=pass %></td>
						<td><%=name %></td>
						<td><%=email %></td>
						<td><%=phone %></td>
						<td><%=address %></td>
						<td>
							<form method="post" action="delete.jsp">
								<input type="hidden" value="<%=num %>" name="del">
								<input type="submit" value="회원삭제">
							</form>
						</td>
					</tr>
					<%
				}
					out.print("</table>");
				}catch(Exception e){
					System.out.println("접속중 오류 발생 : "+e);
				} finally{
					try{
						System.out.println("접속 종료");
					} catch (Exception ex){
						System.out.println("접속 해제중 오류 발생 : " + ex);
					}
				}
		%>
		</div>
	</body>
</html>