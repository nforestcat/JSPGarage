package st;

public class Start {
	public static void main(String[] args) {
		
	}
}
//interface는 클래스의 구성에 대하여 강제할 수 있는 강력한 수단이다. 용도의 결정
//interface를 구현하기 위해서는 class는 인터페이스가 가진 추상 메서드의 몸통을 반드시 구현하여야 한다.
//interface는 class하나에 여려개가 구현될 수 있다.
//-공통된 원칙으로 설계도를 만들기 위한 가이드라인 역할을 수행한다.
//-다중상속이 불가능한 클래스*의 단점을 보완해주는 역할을 수행한다.

//class는 필드, 메서드, 생성자를 가질 수 있다.

//interface는 필드를 가질 수 없다. - public static final 상수를 가진다
//interface는 메서드를 가질 수 없다. - public abstract 추상메서드를 가진다
//interface는 생성자를 가질 수 없다. - 객체를 만들 수 없으므로 생성자를 가질 수 없다
//interface는 객체로 조립할 수 없다. - interface를 구현한 class를 객체로 조립해야 한다.
// = interface는 class가 아니다 *X5,000,000
interface inter{
	// (public static final) int a = 10;
	int add(int a, int b); //(public abstract)
}
interface test{
	
}
//클래스 Student를 이용하여 숫자 두 개를 매개변수로 받아 값을 더해주는 메서드를 제작하시오
class Student{
	void sum(int a, int b) {
		System.out.println(a+b);
	}
}
class Student2{
	int plus(int a, int b) {
		return a+b;
	}
}
class Student3 implements inter, test{
	public int add(int a, int b) {
		return a+b;
	}
}