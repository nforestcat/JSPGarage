package iter;

import java.util.*;

public class Sample {
	public static void main(String[] args) {
		ArrayList<String> al = new ArrayList<>();
		al.add("java");
		al.add("javascript");
		al.add("HTML");
		al.add("CSS");
		al.add("SQL");
		//배열은 .length로 길이를 확인 , arraylist는 .size()로 길이를 확인
		System.out.println(al.size());
		//일반 for문을 이용하여 데이터를 추출하는 방식
		for(int i = 0; i<al.size();i++) {
			System.out.println(al.get(i));
		}
		//향상된 for문을 이용해서 데이터를 추출하는 방식 foreach
		for (String string : al) {
			System.out.println(string);
		}
		//while문을 이용해서 데이터를 추출하는 방식
		int cnt = 0;
		while(al.size()>cnt) {
			System.out.println(al.get(cnt));
			cnt++;
		}
		//iterator를 사용하는 방법
		Iterator itr = al.iterator();
		//Iterator.hasNext() : 자기 위치에서 다음번에 자료가 있는지 여부를 boolean으로 반환
		//Iterator.next():자기 위치 다음에 나오는 자료를 반환한 뒤 위치 변경
		
		while(itr.hasNext()) {
			System.out.println(itr.next());
		}
		ArrayList<Student> stu = new ArrayList<>();
		stu.add(new Student("홍길동", 101, 23));
		stu.add(new Student("홍길순", 102, 25));
		stu.add(new Student("이영준", 103, 31));
		System.out.println(stu);
	}
}
class Student{
	String name;
	int no;
	int age;
	Student(String s , int n, int a){
		name = s;
		no= n;
		age = a;
	}
	public String toString() {
		return "이름: "+name+"/"+"번호: "+no+"/"+"나이: "+age;
	}
}
