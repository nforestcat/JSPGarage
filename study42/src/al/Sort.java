package al;

import java.util.*;

public class Sort {
	public static void main(String[] args) {
		
		//ArrayList의 정렬처리
		//Collections.sort(Collection); 오름차순 변경
		//sort를 이용한 정렬처리의 경우 변경사항이 영구적으로 ArrayList에 남는다
		ArrayList<String> arr = new ArrayList<>();
		arr.add("IOT");
		arr.add("JAVA");
		arr.add("Android");
		arr.add("C++");
		arr.add("SQL");
		System.out.println(arr);
		Collections.sort(arr); // 오름차순
		System.out.println(arr);
		Collections.sort(arr,Collections.reverseOrder()); //내림차순
		System.out.println(arr);
	}
}
