package dao;

import java.sql.*;
import java.util.*;

import dto.PageDTO;

public class PageDAO {
	private PageDAO() {}
	private static PageDAO instance = new PageDAO();
	public static PageDAO getInstance() {
		return instance;
	}
	
	//데이터베이스 접속처리 메서드
	public Connection getConnection() throws Exception{
		Connection conn = null;
		String url="jdbc:mysql://127.0.0.1:3306/study";
		String id = "root";
		String pw = "iotiot";
		Class.forName("com.mysql.cj.jdbc.Driver");
		conn=DriverManager.getConnection(url, id, pw);
		return conn;
	}
	
	//리스트 출력을 위한 메서드
	//현재 페이지가 몇 페이지인지, 페이지당 몇개씩 자료를 보여줄껀지를 매개변수로 전달
	public List<PageDTO> findList(int currentPage, int recordsPerPage){
		List<PageDTO> list = new ArrayList<>();
		int start = (currentPage - 1)*recordsPerPage ;
		String sql = "select * from page limit ?, ?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn=getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, start);
			pstmt.setInt(2, recordsPerPage);
			rs=pstmt.executeQuery();
			while(rs.next()) {
				PageDTO p = new PageDTO();
				p.setNum(rs.getInt("num"));
				p.setTitle(rs.getString("title"));
				p.setContent(rs.getString("content"));
				list.add(p);
			}
			
		}catch (Exception e) {
			System.out.println("findList 접속 중 오류 발생 : "+e);
		} finally {
			try {
				if(rs!=null)rs.close();
				if(pstmt!=null)pstmt.close();
				if(conn!=null)conn.close();
					
			} catch( Exception ex) {
				System.out.println("findList 접속 해제 중 오류 발생 : "+ex);
			}
		}
		
		return list;
	}
	
	//1페이지가 0~9까지
	//2페이지가 10~19까지
	//3페이지가 20~29까지
	//전체 게시물 수를 가져올 메서드
	public int getCount() {
		String sql = "select count(num) from page";
		int count = 0;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			rs.next();
			//count = rs.getInt("count(num)");
			count = rs.getInt(1);
		} catch (Exception e) {
			System.out.println("getCount 접속 중 오류 발생 : "+e);
		} finally {
			try {
				if(rs!=null)rs.close();
				if(pstmt!=null)pstmt.close();
				if(conn!=null)conn.close();
			} catch (Exception ex) {
				System.out.println("getCount 접속 해제 중 오류 발생 : "+ex);
			}
		}
		
		
		return count;
	}
}
