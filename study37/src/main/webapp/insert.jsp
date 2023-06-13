<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"  %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<%
			Connection conn = null;
			//Statement stmt = null;
			PreparedStatement pstmt = null;
			
			String url = "jdbc:mysql://127.0.0.1:3306/study";
			String db_id = "root";
			String db_pw = "iotiot";
			/*
			String sql = "insert into member (name, userid, pwd, email, phone, admin) values (";
			
			sql += "'"+name+"'"+",";
			sql += "'"+userid+"'"+",";
			sql += "'"+pwd+"'"+",";
			sql += "'"+email+"'"+",";
			sql += "'"+phone+"'"+",";
			sql += "'"+admin+"'"+");";
			*/
			request.setCharacterEncoding("utf-8");
			String name = request.getParameter("name");
			String userid = request.getParameter("userid");
			String pwd = request.getParameter("pwd");
			String email = request.getParameter("email");
			String phone = request.getParameter("phone");
			String admin = request.getParameter("admin");
			String sql = "insert into member(name, userid, pwd, email, phone, admin) values";
			sql+=("(?,?,?,?,?,?);");
			
			try{
				Class.forName("com.mysql.cj.jdbc.Driver");
				conn = DriverManager.getConnection(url, db_id, db_pw);
				//stmt = conn.createStatement();
				//stmt.execute(sql);
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, name);
				pstmt.setString(2, userid);
				pstmt.setString(3, pwd);
				pstmt.setString(4, email);
				pstmt.setString(5, phone);
				pstmt.setString(6, admin);
				pstmt.execute();
				
			} catch(Exception e){
				System.out.println("접속 중 오류 발생 : "+ e);
			} finally{
				try{
					//if(stmt!=null)stmt.close();
					if(pstmt!=null)pstmt.close();
					if(conn!=null)conn.close();
				} catch(Exception ex){
					System.out.println("접속 해제 중 오류 발생 : "+ex);
				}
			}
			response.sendRedirect("list.jsp");
		%>
	</body>
</html>