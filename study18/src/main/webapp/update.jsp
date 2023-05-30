<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang = "ko">
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<%
			Connection conn = null;
			Statement stmt = null;
			//ResultSet rs = null; //update에는 resultset이 없음
			String url = "jdbc:mysql://127.0.0.1:3306/sample";
			String db_id = "root";
			String db_pw = "iotiot";
			
			request.setCharacterEncoding("utf-8"); //post데이터의 한글 깨짐 방지
			String number=request.getParameter("number");
			String id=request.getParameter("id");
			String pw=request.getParameter("pw");
			String name=request.getParameter("nm");
			String email=request.getParameter("em");
			String phone=request.getParameter("ph");
			String address=request.getParameter("ad");
			System.out.println(number);
			System.out.println(id);
			System.out.println(pw);
			System.out.println(name);
			System.out.println(email);
			System.out.println(phone);
			System.out.println(address);
			
			String sql="update register set ";
			
			sql+="id='";
			sql+=id;
			sql+="', ";
			sql+="pass='";
			sql+=pw;
			sql+="', ";
			sql+="name='";
			sql+=name;
			sql+="', ";
			sql+="email='";
			sql+=email;
			sql+="', ";
			sql+="phone='";
			sql+=phone;
			sql+="', ";
			sql+="address='";
			sql+=address;
			sql+="'";
			
			/*
			if(id!=null || id!=""){
				sql+="id='";
				sql+=id;
				sql+="', ";
			}
			if(pw!=null || pw!=""){
				sql+="pass='";
				sql+=pw;
				sql+="', ";
			}
			if(name!=null || name!=""){
				sql+="name='";
				sql+=name;
				sql+="', ";
			}
			if(email!=null || email!=""){
				sql+="email='";
				sql+=email;
				sql+="', ";
			}
			if(phone!=null || phone!=""){
				sql+="phone='";
				sql+=phone;
				sql+="', ";
			}
			if(address!=null || address!=""){
				sql+="address='";
				sql+=address;
				sql+="'";
			}
			*/
			sql+="where num = ";
			sql+=number;
			sql+=";";
			System.out.println(sql);
			
			try{
				Class.forName("com.mysql.cj.jdbc.Driver");
				conn=DriverManager.getConnection(url, db_id, db_pw);
				stmt=conn.createStatement();
				//여기서 쿼리문을 실행시킴
				int result = stmt.executeUpdate(sql);//executeUpdate는 return 변경된 갯수
				System.out.println(result+"개 데이터 수정");
				response.sendRedirect("member.jsp");
				
			} catch(Exception e){
				System.out.println("접속 중 오류 발생 : " + e);
			} finally {
				try{
					if(stmt!=null)stmt.close();
					if(conn!=null)conn.close();
				} catch(Exception ex){
					System.out.println("접속 해제 중 오류 발생: "+ex);
				}
			}
		
		
		
		
		%>
	</body>
</html>