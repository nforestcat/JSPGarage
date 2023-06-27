package interObj;

public class Example {
	public static void main(String[] args) {
		INTER inter1 = new Make();
		
		Study s1 = new Study(inter1);
		//객체를 변수에 저장하지 않고 바로 매개변수로 전달하는 방법
		Study s2 = new Study(new Make());
		//3. 익명 클래스를 이용하여 객체를 매개변수로 전달하는 방법
		Study s3 = new Study(new INTER() {
			public void print() {
				
			}
		});
		//4. 람다 축약식을 이용하여 객체를 매개변수로 전달하는 방법
		Study s4 = new Study(() -> {});
		
		
	}
}
class Study{
	INTER itf;
	Study(INTER i){
		itf = i;
	}
}
interface INTER{
	void print();
}
class Make implements INTER{
	public void print() {
		System.out.println("print");
	}
}