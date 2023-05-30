package test;

public class Sample {

	public static void main(String[] args) {
		//메서드와 펑션의 차이
		//펑션은 동작 자체를 정의
		//메서드는 객체가 수행할 동작
		//class= 설계도
		//class -> new -> object
		//static 객체로 조립하지 않아도 작동(힙이 아님)
		//프로그램 종료 될 때 까지 메모리 점유
		Test c = new Test();
		c.start();
		new Test().start();
		Sample s = new Sample();
		run();
		Test t1 = new Test();
		Test t2 = new Test();
		Test t3 = new Test();
		Test.stnum = 50;
		t1.num = 10;
		t2.num = 20;
		t3.num = 30;
		System.out.println(t1.num);
		System.out.println(t2.num);
		System.out.println(t3.num);
		System.out.println(Test.stnum);
		Test.stmethod();
		Test t= new Test();
		t.sum(10, 20);
		Test.minus(100,50);
		Dog ddoli = new Dog();
		System.out.println(ddoli.cola());
		String data = ddoli.cola();
		System.out.println(data);
	}
	static void run() {
		System.out.println("실행");
	}
}
class Test{
	int num;
	static int stnum;
	void start() {
		System.out.println("동작 수행");
	}
	static void stmethod() {
		System.out.println("동작 확인");
	}
	void sum(int a , int b) {
		System.out.println(a+b); 
	}
	static void minus (int a , int b) {
		System.out.println(a-b);
	}
}

class Dog{
	void bbangya(){
		System.out.println("죽은척");
	}
	
	String cola() {
		return "콜라";
	}
	String[] coke() {
		return new String[] {"코카콜라","펩시"};
		
		
	}
}
//객체 조립 불가
//구체적이지 않은 동작(추상 메서드) 포함 가능
abstract class Animal{
	abstract void eat();
}

class Cat extends Animal{
	//상속받은 추상메서드를 반드시 구현해야 함. 추상메서드 -> 일반메서드
	void eat() {
		System.out.println("고양이가 츄르를 먹는다");
	}
}
