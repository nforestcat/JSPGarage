package DAO;

import java.sql.*;

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
}
