<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="ko">
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<%
			Connection conn = null;
			Statement stmt = null;
			ResultSet rs = null;
			String url = "jdbc:mysql://127.0.0.1:3306/sample";
			String db_id="root";
			String db_pw="iotiot";
			
			request.setCharacterEncoding("UTF-8");
			String id = request.getParameter("id");
			String pw = request.getParameter("pw");
			
			String sql = "select * from register where id = '"+id+"';";
			System.out.println(sql);
		
			try{
				Class.forName("com.mysql.cj.jdbc.Driver");
				conn = DriverManager.getConnection(url, db_id,db_pw);
				stmt = conn.createStatement();
				rs=stmt.executeQuery(sql);
				
				while(rs.next()){
					String num = rs.getString("num"); 
					String pass = rs.getString("pass");//DB내의 pass정보 획득
					String name = rs.getString("name");
					String email = rs.getString("email");
					if(pw.equals(pass)){
						//사용자가 입력한 비밀번호와 DB내부의 pass정보가 일치하면
						System.out.println("로그인 성공");
						session.setAttribute("num", num);//획득 정보를 session에 저장
						session.setAttribute("name",name);
						session.setAttribute("email",email);
						session.setAttribute("login",true);//로그인 여부 저장
						//session은 모든 형태의 정보를 저장할 수 있는 Object규격이다.
						//때문에 데이터를 뺄 떄는 캐스팅(강제형변환) 해 주어야 한다.
					}
				}
				
			}catch(Exception e){
				System.out.println("login.jsp 접속 중 오류 발생 : "+e);
			}finally{
				try{
					if(rs!=null)rs.close();
					if(stmt!=null)stmt.close();
					if(conn!=null)conn.close();
					
				}catch (Exception ex){
					System.out.println("접속 해제 중 오류 발생 : "+ex);
				}
			}
			
			//세션 내 정보 확인
			/*
			System.out.println(session.getAttribute("num"));
			System.out.println(session.getAttribute("name"));
			System.out.println(session.getAttribute("email"));
			System.out.println(session.getAttribute("login"));
			*/
			response.sendRedirect("index.jsp");
		%>
	</body>
</html>