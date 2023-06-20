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
	//아이디 중복체크 처리
	public int confirmID(String userid) {
		int result = -1;
		String sql = "select userid from member where userid=?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userid);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				//해당 아이디가 데이터베이스가 존재하는 경우, 중복 아이디가 있어서 회원가입을 반려해야 하는 경우
				result = 1;
			}
			//아니면 그대로 -1, 회원가입 허가
		}catch(Exception e) {
			System.out.println("MemberDAO.confirmID 접속 중 오류 발생 : "+e);
		} finally {
			try {
				if(rs!=null)rs.close();
				if(pstmt!=null)pstmt.close();
				if(conn!=null)conn.close();
			} catch(Exception e) {
				System.out.println("MemberDAO.confirmID 접속 해제 중 오류 발생 : "+e);
			}
		}
		return result;
	}
	//회원가입 메서드
	public int insertMember(Member m) {
		int result = -1;
		String sql = "insert into member( name, userid, pwd, email, phone, admin) values(?,?,?,?,?,?)";
		Connection conn = null;
		PreparedStatement pstmt = null;
		//insert문을 실행하므로 결과화면이 없어서 ResultSet은 별도로 준비하지 않는다
		try {
			conn=getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, m.getName());
			pstmt.setString(2, m.getUserid());
			pstmt.setString(3, m.getPwd());
			pstmt.setString(4, m.getEmail());
			pstmt.setString(5, m.getPhone());
			pstmt.setString(6, m.getAdmin());
			result = pstmt.executeUpdate();//변경된 row의 수가 return값이므로 1만을 반환;
		} catch(Exception e) {
			System.out.println("MemberDAO.insertMember 접속 중 오류 발생 : "+e);
		}finally {
			try {
				if(pstmt!=null)pstmt.close();
				if(conn!=null)conn.close();
			}catch(Exception ex) {
				System.out.println("MemberDAO.insertMember 접속 종료 중 오류 발생 : "+ex);
			}
		}
		return result;
	}
	public int updateMember(Member m) {
		int result = -1;
		String sql = "update member set name = ?, pwd = ?, email = ? phone = ? where userid = ?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, m.getName());
			pstmt.setString(2, m.getPwd());
			pstmt.setString(3, m.getEmail());
			pstmt.setString(4, m.getPhone());
			pstmt.setString(5, m.getUserid());
			result = pstmt.executeUpdate();
	
		} catch(Exception e) {
			System.out.println("MemberDAO.updateMember 접속 중 오류 발생 : "+e);
		} finally {
			try {
				if(pstmt!=null)pstmt.close();
				if(conn!=null)conn.close();
			} catch(Exception ex) {
				System.out.println("MemberDAO.updateMember 접속 종료 중 오류 발생 : "+ex);
			}
		}
		return result;
	}
	public int updateMember2(Member m, String name, String pwd, String email, String phone) {
		int result = -1;
		String sql = "update member set name = ?, pwd = ?, email = ? phone = ? where userid = ?";
		//String search = "search num from member where name = ?, userid = ?, pwd = ?, email = ?, phone = ?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		//PreparedStatement pstmt2 = null;
		//ResultSet rs = null;
		String mname = m.getName();
		String muserid = m.getUserid();
		String mpwd = m.getPwd();
		String memail = m.getEmail();
		String mphone = m.getPhone();
		int num = 0;
		try {
			conn = getConnection();
//			pstmt = conn.prepareStatement(search);
//			pstmt.setString(1, mname);
//			pstmt.setString(2, muserid);
//			pstmt.setString(3, mpwd);
//			pstmt.setString(4, memail);
//			pstmt.setString(5, mphone);
//			//근데 userid 중복 안되니까 그냥 userid만 있어도 되지 않나?
//			rs = pstmt.executeQuery();
//			while(rs.next()) {
//				num=rs.getInt("num");
//			}
			
			pstmt = conn.prepareStatement(sql);
			
			if(name==null) {
				name=mname;
			}
			pstmt.setString(1, name);
			if(pwd==null) {
				pwd=mpwd;
			}
			pstmt.setString(2, pwd);
			if(email==null) {
				email=memail;
			}
			pstmt.setString(3, email);
			if(phone==null) {
				phone=mphone;
			}
			pstmt.setString(4, phone);
			pstmt.setString(5, muserid);
			result = pstmt.executeUpdate();
			
			
		} catch(Exception e) {
			System.out.println("MemberDAO.updateMember 접속 중 오류 발생 : "+e);
		} finally {
			try {
				//if(rs!=null)rs.close();
				if(pstmt!=null)pstmt.close();
				//if(pstmt2!=null)pstmt2.close();
				if(conn!=null)conn.close();
			} catch(Exception ex) {
				System.out.println("MemberDAO.updateMember 접속 종료 중 오류 발생 : "+ex);
			}
		}
		return result;
	}
}
