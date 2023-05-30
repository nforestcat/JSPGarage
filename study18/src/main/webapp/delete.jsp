<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@	page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="ko">
	<head>
		<meta charset="UTF-8">
		<title>회원 정보 삭체 처리기</title>
	</head>
	<body>
	<%
		Connection conn = null;
		Statement stmt = null;
		//ResultSet rs = null;
		
		String url="jdbc:mysql://127.0.0.1:3306/sample";
		String db_id ="root";
		String db_pw = "iotiot";
		
		//post로 request된 데이터의 한글이 깨지는 경우
		request.setCharacterEncoding("utf-8");
		String del = request.getParameter("del");
		String sql = "delete from register where num =";
		sql+=del;
		sql+=";";
		out.print("<h1>받아온 데이터 "+del+"</h1>");
		//System.out.println(sql);
		try{
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn=DriverManager.getConnection(url, db_id, db_pw);
			stmt=conn.createStatement();
			System.out.println("접속성공");
			int result = stmt.executeUpdate(sql);
			System.out.println("삭제된 데이터의 수 : "+result);
			response.sendRedirect("member.jsp");
		} catch(Exception e){
			System.out.println("접속 중 오류 발생 : "+e);
		} finally{
			try{
				if(stmt!=null)stmt.close();
				if(conn!=null)conn.close();
				
			} catch(Exception ex){
				System.out.println("접속 해제 중 오류 발생 : "+ex);
			}
		}
	%>
	</body>
</html>