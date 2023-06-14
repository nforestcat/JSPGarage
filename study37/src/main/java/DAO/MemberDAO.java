package DAO;

import java.sql.*;
import beans.Member;

public class MemberDAO {
	private MemberDAO() {
		
	}
	private static MemberDAO instance= new MemberDAO();
	
	public static MemberDAO getInstance() {
		return instance;
	}
	public Connection getConnection() throws Exception{
		Connection conn = null;
		String url="jdbc:mysql://127.0.0.1:3306/study";
		String id = "root";
		String pass = "iotiot";
		
		Class.forName("com.mysql.cj.jdbc.Driver");
		conn = DriverManager.getConnection(url, id, pass);
		return conn;
	}
	public void closeConnection(ResultSet rs, Statement stmt, Connection conn)throws Exception{
		if(rs!=null)rs.close();
		if(stmt!=null)stmt.close();
		if(conn!=null)conn.close();
	}
	public int userCheck(String userid, String pwd) {
		//-1:아이디가 존재하지 않는 경우
		//0: 비밀번호가 틀린 경우
		//1: 비밀번호가 동일한 경우
		//같은 방식으로 규칙을 정해서 보냄
		int result=-1;
		String sql = "select pwd from member where userid = ?;";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		//String pass = null;
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userid);
			rs = pstmt.executeQuery();
			//System.out.println("매개변수로 받은 아이디: "+userid );
			//System.out.println("매개변수로 받은 비밀번호: "+pwd );
			if(rs.next()) {
				if(rs.getString("pwd").equals(pwd)&&rs.getString("pwd")!=null) {
					result=1;//로그인이 된 경우
				} else {
					result=0;//비밀번호가 틀렸을 경우
				}
				//pass = rs.getString(1);
				//System.out.println(pass);
			} else {
				result = -1;//아이디가 존재하지 않는 경우
			}
			/*
			if(pass == null) {
				
			}else if(pass.equals(pwd)) {
				result = 1;
			} else {
				result = 0;
			}
			*/
			
		}catch(Exception e) {
			System.out.println("userCheck() 오류 발생: "+e);
		} finally{
			try {
				if(rs!=null)rs.close();
				if(pstmt!=null)pstmt.close();
				if(conn!=null)conn.close();
			}catch(Exception ex) {
				System.out.println("userCheck() 접속 해재 중 오류 발생 : "+ex);
			}
		}
		return result;
	}
	public Member getMember(String userid) {
		Member m = null;
		String sql = "select * from member where userid=?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userid);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				m=new Member();
				m.setNum(rs.getString("num"));
				m.setName(rs.getString("name"));
				m.setUserid(rs.getString("userid"));
				m.setPwd(rs.getString("pwd"));
				m.setEmail(rs.getString("email"));
				m.setPhone(rs.getString("phone"));;
				m.setAdmin(rs.getString("admin"));
				 
			}
		} catch(Exception e){
			System.out.println("DAO.getMember() 접속 중 오류 발생 : " + e);
		} finally {
			try {
				if(rs!=null)rs.close();
				if(pstmt!=null)pstmt.close();
				if(conn!=null)conn.close();
			} catch(Exception e){
				System.out.println("DAO.getMember() 접속 해제 중 오류 발생 : " + e);
			}
		}
		return m;
	}
}
