package al;

import java.util.ArrayList;
import java.util.List;

public class Sample {
	public static void main(String[] args) {
		List L = new ArrayList<>();	//List interface가 구현된 객체를 저장하는 규격
		ArrayList<Integer> al = new ArrayList<>();	//ArrayList class를 통해 제작된 객체를 저장하는 규격
		Object obj = new ArrayList<>();		//가능하면 안 쓰는게 좋음
		
		//ArrayList.add() : 해당 ArrayList에 데이터를 추가
		al.add(1);
		al.add(2);
		al.add(3);
		System.out.println(al);
		
		ArrayList<String> al2 = new ArrayList<>();
		al2.add("가");
		al2.add("나");
		al2.add("다");
		System.out.println(al2);
		//ArrayList.addAll(ArrayList): 해당 ArrayList에 다른 ArrayList의 값을 입력
		//ArrayList의 제네릭이 지정된 경우라면 다른 타임의 데이터를 넣을 수 없음.
		ArrayList al3 = new ArrayList<>();
		al3.addAll(al);
		al3.addAll(al2);
		System.out.println(al3);
		
		//인덱스를 지정하여 특정 자료를 추가할 수 있다.
		//ArrayList.add(index, data) : 해당 index위치에 data를 추가
		//대체하는게 아니라 기존 자료는 뒤로 밀림
		al3.add(0, "A");
		System.out.println(al3);
		al3.add(2, "B");
		System.out.println(al3);
		
		//서브리스트 제작
		List sub = new ArrayList<>();
		sub = al3.subList(2, 5);	//2번 앞에서 5번 앞까지, 2,3,4: index참조 위치는 자료의 앞에 있다.
		System.out.println(sub);
		
		//데이터 삭제
		al3.remove(0);	//해당 인덱스에 존재하는 데이터를 삭제;
		System.out.println(al3);
		
		//데이터 확인
		System.out.println(al3.get(5));
	}
}
