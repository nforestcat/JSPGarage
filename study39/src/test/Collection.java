package test;

public class Collection {
	public static void main(String[] args) {
		//Collection : java.util내부에 들어있는 잘를 이용하기 위해 구현된 일종의 프레임워크
		//사용방법이 지정되어 있어서 자유롭게 사용은 불가
		
		//자료를 보관하는 것은 쉽지만 원하는 자료만 꺼내는 것은 상당히 어렵다.
		//index를 비롯하여 검색을 위한 부가 패러미터를 제공하는 방식이 발전
		//java의 Collection은 더 과거의 기술을 최신 방식으로 구현해 두었다.
		
		//java의 Collection은 다음과 같은 자료의 형태를 사용한다.(interface로 구성되어있다.)
		//1.List : 자료에 엄격한 순서가 존재, 순번은 검색의 기준점, 자료의 중복을 허용
		//2.Set : 자료에 순서가 없음, 자료의 중복을 허락하지 않음
		//3.Map : Key(검색어), Value(자료)의 쌍으로 이루어진 데이터, Key는 중복불가, Value 중복가능
		
		//*x5,000,000
		//List l = new List(); 사용불가 
		//Interface는 class가 아니므로 생성자가 없고, 생성자가 없으므로 객체로 조립할 수 없다.
		
		//List인터페이스를 구현한 커렉션 : Vector, Stack, LinkendList, ArrayList
		//Set 인터페이스를 구현한 컬렉션 : HashSet, SortedSet, TreeSet
		//Map인터페이스를 구현한 컬렉션 : HashTable, HashMap, SortedMap, TreeMap
		
	}
}
