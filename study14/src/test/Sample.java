package test;

import java.sql.*;

public class Sample {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		Connection conn = null; // java - mysql 통신할 회선
		Statement stmt = null; // java측에서 mysql로 보낼 데이터
		ResultSet rs = null; //mysql측에서 java로 보낼 데이터
		
		String url="jdbc:mysql://127.0.0.1:3306/sample"; // 통신경로
		//jdbc를 경유하여 mysql에 도달하는 방식으로
		//mysql이 실행되고 있는 같은 PC내부의 3306번으로 통신
		
		String id = "root";
		String pw = "iotiot";
		String sql = "select * from student where math=80;";
		
		//*X5,000,000 통신 실행시 회선은 반드시 try-catch로 묶어줘야 연결된다
		try {
			//접속 수행
			conn = DriverManager.getConnection(url, id, pw);
			stmt = conn.createStatement(); //회선을 통해서 명령어를 mysql로 전달해줄 객체
			rs = stmt.executeQuery(sql);
			System.out.println("회선연결확인");
			
			String[] data = new String[6];
			//갯수가 많기 때문에 다 볼 필요 없음
			
			while(rs.next()) {
				
				for(int i = 0; i < data.length; i++) {
					data[i]= rs.getString(i+1); 
					System.out.print(data[i]+ "\t" );
				}
				System.out.println();
				
			}
			
			//ResultSet.next(); 한 줄을 읽는 기능
			
			
			
//			rs.next();
//			String num = rs.getString(1);
//			String name = rs.getString(2);
//			String kor = rs.getString(3);
//			String math = rs.getString(4);
//			String eng = rs.getString(5);
//			String sum = rs.getString(6);
//			System.out.println(num + "\t" + name + "\t" + kor + "\t" + math + "\t" + eng + "\t" + sum + "\t");
//			
//			rs.next();
//			num = rs.getString(1);
//			name = rs.getString(2);
//			kor = rs.getString(3);
//			math = rs.getString(4);
//			eng = rs.getString(5);
//			sum = rs.getString(6);
//			System.out.println(num + "\t" + name + "\t" + kor + "\t" + math + "\t" + eng + "\t" + sum + "\t");
//			
		} catch(Exception e) {
			//접속시 오류 발생 확인
			System.out.println("오류발생 : "+e);
		}
		
	}

}


