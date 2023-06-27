package st;

import java.util.*;
public class Tree {
	public static void main(String[] args) {
		//TreeSet : 데이터를 저장할 때 정렬하여 저장
		TreeSet<String> tset = new TreeSet<>();
		
		tset.add("H");
		tset.add("A");
		tset.add("W");
		tset.add("K");
		System.out.println(tset);
		
		Set set = tset.subSet("A", "K");
		System.out.println(set);
		//트리 구조가 가지는 독특한 성질 때문에 subSet의 추출이 가능하다.
		//HashSet, LinkedHashSet, Set에서는 사용이 불가능하다.
		
	}
}
