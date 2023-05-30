<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@	page import="java.sql.*" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<%
			Connection conn = null;
			Statement stmt = null;
			//ResultSet rs = null;
			
			//test할 때 빼고는 숨기기
			String url="jdbc:mysql://127.0.0.1:3306/sample";
			String db_id="root";
			String db_pw="iotiot";
			
			request.setCharacterEncoding("UTF-8");
			String id = request.getParameter("id");
			String pw = request.getParameter("pw");
			String name = request.getParameter("nm");
			String email = request.getParameter("em");
			String phone = request.getParameter("ph");
			String address = request.getParameter("ad");
			
			//out.print(id+"<br>");
			//out.print(pw+"<br>");
			//out.print(name+"<br>");
			//out.print(email+"<br>");
			//out.print(phone+"<br>");
			//out.print(address+"<br>");
			
			String sql="insert into register(id, pass, name, email, phone, address) values("; //통신 전달 데이터
			sql+="'"+id+"', '"+pw+"', '"+name+"', '"+email+"', '"+phone+"', '"+address;
			sql+="');";
			try{
				//Class.forName("com.mysql.jdbc.Driver");
				Class.forName("com.mysql.cj.jdbc.Driver");
				//mysql 버전 5하고 8하고 다름
				
				conn=DriverManager.getConnection(url, db_id, db_pw);
				stmt=conn.createStatement();
				stmt.execute(sql);
				response.sendRedirect("member.jsp");//반환되는 기준점을 member.jsp로 변환
				out.print("<h1>데이터 입력 성공</h1>");
				
			}catch(Exception e){
				System.out.println("접속중 오류 발생 : "+e);
			} finally{
				try{
					if(stmt != null)stmt.close();
					if(conn != null)conn.close();
				} catch (Exception ex){
					System.out.println("접속 해제중 오류 발생 : " + ex);
				}
			}
		%>
	</body>
</html>