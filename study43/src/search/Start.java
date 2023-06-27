package search;

import java.util.HashMap;
import java.util.Map;
import java.util.Scanner;

public class Start {
	public static void main(String[] args) {
		Map<String, String> hMap = new HashMap<>();
		hMap.put("서울", "02");
		hMap.put("경기도", "031");
		hMap.put("인천", "032");
		hMap.put("강원도", "033");
		hMap.put("충청남도", "041");
		hMap.put("대전", "042");
		hMap.put("충청북도", "043");
		hMap.put("부산", "051");
		hMap.put("울산", "052");
		hMap.put("대구", "053");
		hMap.put("경상북도", "054");
		//String str = hMap.get("대전");
		//System.out.println(str);
		//위에서 generic을 지정하지 않으면 Object str = hMap.get("대전"); 이렇게
		Scanner sc = new Scanner(System.in);
		System.out.println("검색하실 지역명을 입력해 주세요");
		String key = sc.next();
		String value = hMap.get(key);
		if(value==null) {
			System.out.println("해당하는 지역명이 없습니다.");
		} else {
			System.out.println(key+"의 지역번호는 "+value+"입니다");
		}
	}
}
