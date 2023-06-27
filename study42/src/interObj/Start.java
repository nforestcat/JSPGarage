package interObj;

public class Start {
	public static void main(String[] args) {
		test();
		test2(new Sample());
		test2(new ITF() {
			public void print() {
				System.out.println("print");
			}
		});
		test2(()->{System.out.println("print");}); 
		//람다식 : 익명클래스를 제작할 때 인터페이스의 추상 메서드가 단 하나인 경우
		//해당 메서드의 명칭이나 인터페이스의 명칭이 의미가 없으므로
		//필요한 정보 의외의 내용을 제거하여 가독성을 높이는 방법
	}
	static void test() {
		ITF i = new Sample();
		i.print();
	}
	static void test2(ITF i) {
		
	}
}
//클래스의 창설이 불가하거나 지나치게 소모적인 경우 익명클래스를 이용하여 사용 가능하다.
//익명클래스 : 이름이 없는 클래스
//존재할리 없는 인터페이스의 생성자를 작성, 뒤에 {}를 표기하여 class의 범위를 지정

interface ITF{
	void print();
}
class Sample implements ITF{
	public void print() {
		System.out.println("print");
	}
}