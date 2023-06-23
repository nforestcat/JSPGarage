package test;

public class Generic {
	public static void main(String[] args) {
		Normal n;
		Normal normal = new Normal("안녕하세요");
		System.out.println(normal.print());
		//제네릭
		//클래스를 객체로 조립하는 과정에서 타입을 지정하는 문법
		//제네릭을 통해 타입 지정을 하는 경우 int와 같은 축약어가 아니라 class의 풀네임을 적어주어야 한다.
		//float, double, boolean, long 앞문자만 대문자로 변경해서 사용하면 class명이 됨.
		//int 타입은 class 명이 Integet이므로 전체를 다 적어줘야 함
		//String은 String( 클래스명임)
		
		Gen<String> g = new Gen<>("hello");
		Gen<Integer> ge = new Gen<>(1);
		Gen<Boolean> gene = new Gen<>(true);
	}
}
class Normal{
	String a;
	Normal(String s){
		a = s;
	}
	String print() {
		return a;
	}
}
//<type>
class Gen<T>{
	T a;
	String str;
	Gen(T s){
		a = s;
	}
	T print() {
		return a;
	}
}