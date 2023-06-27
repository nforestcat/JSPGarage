package al;
import java.util.*;
public class ObjSort {
	public static void main(String[] args) {
		ArrayList<Student> arr = new ArrayList<>();
//		Student s1 = new Student("이영준",105,19);
//		s1.name="이영준";
//		s1.no =105;
//		s1.age = 19;
		arr.add(new Student("이영준",105,19));
		arr.add(new Student("김철수",102,22));
		arr.add(new Student("주인백",104,35));
		arr.add(new Student("고희선",101,17));
		System.out.println(arr);
		Collections.sort(arr);
		System.out.println(arr);
		
	}
}
class Student implements Comparable{
	String name;
	int no;
	int age;
	void setAge(int a) {
		age =a;
	}
	int getAge() {
		return age;
	}
	Student(String n, int a, int b){
		name = n;
		no = a;
		age = b;
	}
	public String toString() {
		return "["+name + " / " + no + " / " + age+"]";
	}
	public int compareTo(Object o) {
		//객체에 Comparable인터페이스를 구현한 뒤 compareTo를 메서드를 구현해주고
		//내부에서 기준점을 특정한 뒤 빅 대상과 현재 객체간의 우열을 return해주면 된다.
		int cage=((Student) o).getAge();
		//System.out.println(cage);
		//기준점끼리 뺄샘을 계산했을 때 this.age-Object.age
		//결과가 0이라면, 둘이 값이 똑같음.
		//결과가 0보다 크면, 비교 전 값이 비교 후 값보다 크다
		//결과가 0보다 작으면, 비교 전 값이 비교 후 값보다 작다
		return this.age-cage;
	}
}