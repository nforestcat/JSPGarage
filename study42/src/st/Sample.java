package st;

import java.util.*;
import java.util.function.*;

public class Sample {
	public static void main(String[] args) {
		//List: 순번이 엄격하게 존재해서 데이터의 중복을 허락할 수 있는 데이터 타입
		//Set: 순번이 존재하지 않기 때문에 데이터의 중복을 허락할 수 없는 데이터 타입
		Set set = new HashSet<>();
		
		//Set.add() : 데이터 입력
		set.add("apple");
		set.add("mango");
		set.add("grape");
		set.add("orange");
		System.out.println(set);
		
		//Set.add() : return의 결과로 값이 없는 경우 true반환, 있는 경우 false반환
		System.out.println(set.add("orange"));
		//Set.clear() : 모든 데이터를 다 지워줌
		//set.clear();
		System.out.println(set);
		
		//Set은 순서가 없다 보니 for문을 이용할 수 없다.
		HashSet<String> hset = (HashSet)set;
		//1.배열로 변경해서 for문으로 출력하는 방법, 배열의 테이터타입과 제네릭의 타입을 주의
		String[] array = new String[hset.size()];
		//HashSet.toArray(배열): 해당 Set을 배열로 변경하여 입력해주는 기능
		hset.toArray(array);
		for(int i = 0; i < array.length; i++) {
			System.out.println(array[i]);
		}
		//2.List타입으로 변경해서 값을 출력하는 방법
		List<String> list = new ArrayList<>(hset);
		for(int i = 0; i < list.size(); i++) {
			System.out.println(list.get(i));
		}
		//3.기준값인 index가 없이 반복하는 for문을 사용하는 방법
		for (String str : hset) {
			System.out.println(str);
		}
		//4.Iterator를 사용하는 방법
		Iterator itr = hset.iterator();
		while(itr.hasNext()) {
			System.out.println(itr.next());
		}
		//5. Set.forEach()를 사용하는 방법
		//forEach(Consumer c);
		//익명클래스 : 이름이 없는 클래스이므로 익명클래스라 한다.
		//익명클래스가 구현해야하는 추상메서드의 수가 단 하나인 경우 람다식을 사용할 수 있다.
		//hset.forEach((t)->{});
		hset.forEach(new Consumer<String>() {
			public void accept(String t) {
				System.out.println(t);
			}
		});
		hset.forEach((t)->{System.out.println(t);});//람다식
		hset.forEach(System.out::println);
	}
}

