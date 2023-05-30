<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@	page import="java.sql.*" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
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
			span{
				display:inline-block;
				width: 150px;
				text-align: right;
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
						out.print("<td>"+num+"</td>");
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
							System.out.println("접속 종료");
						} catch (Exception ex){
							System.out.println("접속 해제중 오류 발생 : " + ex);
						}
					}
			%>
			<form method="post" action="update.jsp">
				변경하실 회원의 번호를 입력해주세요: <input type="text" name="number">
				<fieldset>
					<legend>수정사항 입력</legend>
					<span>회원 아이디 변경: </span><input type="text" name="id">
					<br>
					<span>회원 비밀번호 변경: </span><input type="text" name="pw">
					<br>
					<span>회원 이름 변경: </span><input type="text" name="nm">
					<br>
					<span>회원 이메일 변경: </span><input type="text" name="em">
					<br>
					<span>회원 연락처 변경: </span><input type="text" name="ph">
					<br>
					<span>회원 주소 변경: </span><input type="text" name="ad">
				</fieldset>
				<input type="submit" value="변경!">
		
			</form>
		</div>
	</body>
</html>