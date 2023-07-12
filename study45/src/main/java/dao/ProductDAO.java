package dao;

import java.util.*;
import java.sql.*;
import dto.ProductDTO;

public class ProductDAO {
	private ProductDAO() {}
	private static ProductDAO instance = new ProductDAO();
	public static ProductDAO getInstance() {
		return instance;
	}
	
	public Connection getConnection() throws Exception{
		Connection conn = null;
		String url="jdbc:mysql://127.0.0.1:3306/study";
		String id= "root";
		String pw = "iotiot";
		
		Class.forName("com.mysql.cj.jdbc.Driver");
		conn=DriverManager.getConnection(url, id, pw);
		return conn;
	}
	
	public static void close(Connection conn, Statement stmt, ResultSet rs) {
		try {
			rs.close();
			stmt.close();
			conn.close();
		} catch(Exception e) {
			System.out.println("연결 해제 중 오류 발생 : " + e);
		}
	}
	public static void close(Connection conn, Statement stmt) {
		try {
			stmt.close();
			conn.close();
		} catch(Exception e) {
			System.out.println("연결 해제 중 오류 발생 : " + e);
		}
	}
	//preparedstatement는 statement를 상속받았기 때문에 statement만으로도 돌아감
	/*
	public static void close(Connection conn, PreparedStatement pstmt, ResultSet rs) {
		try {
			rs.close();
			pstmt.close();
			conn.close();
		} catch(Exception e) {
			System.out.println("연결 해제 중 오류 발생 : " + e);
		}
	}
	public static void close(Connection conn, PreparedStatement pstmt) {
		try {
			pstmt.close();
			conn.close();
		} catch(Exception e) {
			System.out.println("연결 해제 중 오류 발생 : " + e);
		}
	}
	*/
	
	//상품 목록 출력용 메서드
	public List<ProductDTO> selectAll(){
		List<ProductDTO> list = new ArrayList<>();
		String sql = "select * from product order by code desc";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn= getConnection();
			pstmt = conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			while(rs.next()) {
				ProductDTO p = new ProductDTO();
				p.setCode(rs.getInt("code"));
				p.setName(rs.getString("name"));
				p.setPrice(rs.getInt("price"));
				p.setPictureurl(rs.getString("pictureurl"));
				p.setDescription(rs.getString("description"));
				list.add(p);
			}
		} catch (Exception e) {
			System.out.println("selectAll 접속 중 오류 발생 : " + e);
		} finally {
			close(conn, pstmt, rs);
		}
		return list;
	}
	public void insert(ProductDTO p) {
		String sql = "insert into product (name, price, pictureurl, description) values (?,?,?,?)";
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, p.getName());
			pstmt.setInt(2, p.getPrice());
			pstmt.setString(3, p.getPictureurl());
			pstmt.setString(4, p.getDescription());
			pstmt.execute();
		} catch (Exception e) {
			System.out.println("insert 접속 중 오류 발생 : " + e);
		} finally {
			close(conn, pstmt);
		}
	}
}
