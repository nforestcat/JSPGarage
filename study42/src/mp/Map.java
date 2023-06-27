package mp;

//import java.util.Map;//고장남
import java.util.HashMap;

public class Map {
	public static void main(String[] args) {
		//Map : 검색어(Key)와 값(Value)가 한 쌍으로 이루어져 저장되는 방식
		//검색의 기준인 Key는 중복될 수 없지만 Key에 매칭되는 값은 중복이 허용된다.
		//List나 Set과는 달리 데이터의 검색이 가능하므로 개발시 많이 사용된다.
		//순번이 별도로 존재하지는 않는다
		
		//HashMap<KeyType, ValueType>
		//Map<Integer, String> map = new HashMap<Integer, String>();
		java.util.Map<Integer, String> map = new HashMap<>();
		map.put(50, "오십");
		map.put(100, "일백");
		map.put(150, "일백오십");
		map.put(200, "이백");
		
		java.util.Map<Integer, Student<String>> stu = new HashMap<Integer, Student<String>>();
		
	}
}
class Student<T>{
	T name;
	T address;
}