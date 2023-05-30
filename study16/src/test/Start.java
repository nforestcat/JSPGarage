package test;

import java.sql.*;

import java.util.*;
public class Start {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		Connection conn = null; // java와 mysql을 연결할 회선
		Statement stmt = null; // java에서 mysql방향으로 쿼리문을 전달하기 위한 객체
		ResultSet rs = null; //mysql에서 쿼리문의 실행 결과를 java로 전달하기 위한 객체
		//초기값을 null로 잡는 이유는 연결시 오류처리를 위해서 나중에 객체를 담기 때문
		
		//mysql 접속 위치 특정
		//프로토콜 접속 규약
		//프로토콜://위치(주소):고유번호(포트)/폴더명(database명)
		String url="jdbc:mysql://127.0.0.1:3306/sample"; // 통신목적지
		//jdbc를 경유하여 mysql에 도달하는 방식으로
		//mysql이 실행되고 있는 같은 PC내부의 3306번으로 통신
		String user="root"; //통신 아이디
		String pw="iotiot"; //통신 비밀번호
		
		System.out.println("어떤 필드를 검색하시겠습니까?");
		System.out.println("1. 이름  2. 국어점수  3. 수학점수  4. 영어점수  5.총점");
		int field = sc.nextInt();
		String fname = null;
		String search = null;
		switch(field) {
		case 1:
			fname = "name";
			System.out.println("검색할 이름을 적어주세요.");
			search = sc.next();
			break;
		case 2:
			fname = "kor";
			System.out.println("검색할 점수를 적어주세요.");
			search = sc.next();
			break;
		case 3:
			fname = "math";
			System.out.println("검색할 점수를 적어주세요.");
			search = sc.next();
			break;
		case 4:
			fname = "eng";
			System.out.println("검색할 점수를 적어주세요.");
			search = sc.next();
			break;
		case 5:
			fname = "sum";
			System.out.println("검색할 점수를 적어주세요.");
			search = sc.next();
			break;
		default:
			System.out.println("잘못입력하셨습니다.");
			break;
		}
		
		
		//String search = request.getParameter("input-name");
		String sql = null;
		if(field == 1) {
			sql="select * from student where "+fname+" = '" +search+"';"; //통신 전달 데이터

		} else {
			sql="select * from student where "+fname+" = '" +search+"';"; //통신 전달 데이터

		}
		
		//name부분도 받고 search도 받을 수 있을수도
		//근데 문제가 숫자면 int써야함
		
		
		
		//통신 연결
		//회선 연결시 어떤 오류가 발생할 지 모르므로 try-catch를 이용한다.
		try {
			conn=DriverManager.getConnection(url, user, pw); //회선 할당
			stmt=conn.createStatement(); //할당된 회선으로부터 Statement제작
			//select문의 경우 반환물이 존재하므로 ResultSet에 담아서 확인한다.
			//update, insert, delete문은 반환물이 존재하지 않는다. Query OK
			rs=stmt.executeQuery(sql); //미리 만들어둔 sql문장을 Statement로 전송
			
			System.out.println("접속 성공!");
			
			System.out.println(sql);
			while(rs.next()) {
				
				for(int i = 1; i <=6 ; i++) {
					 
					System.out.print(rs.getString(i)+ "\t" );
				}
				System.out.println();
				
			}
			
		} catch(Exception e) {
			System.out.println("접속 중 오류 발생 : " + e);
		} finally {
			//오류가 발생했든 하지 않았든 무조건 실행되는 부분
			try {
				//회선 연결(conn) - 전송객체(stmt) - 결과물(rs)
				//회선을 종료할 때는 반대로 닫아준다.
				if(rs!=null)
					rs.close();
				if(stmt!=null)
					stmt.close();
				if(conn!=null)
					conn.close();
				System.out.println("접속 종료");
			} catch(Exception ex) {
				System.out.println("연결 해체 중 오류 발생 : " + ex);
			}
		}
	}
}
