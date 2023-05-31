package data;

public class Student {
	private String name;
	private int kor;
	private int eng;
	private int math;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getKor() {
		return kor;
	}
	public void setKor(int kor) {
		if(kor<0) {
			this.kor=0;
		} else {
		this.kor = kor;
		}
	}
	public int getEng() {
		return eng;
	}
	public void setEng(int eng) {
		if(eng < 0) {
			this.eng = 0;
		} else {
			this.eng = eng;
		}
	}
	public int getMath() {
		return math;
	}
	public void setMath(int math) {
		if(math<0) {
			this.math = 0;
		} else {
			this.math = math;
		}
	}
	public int sum() {
		return kor+eng+math;
	}
	public float avg() {
		return sum()/3.0f;
	}
	//System.out.println() 등 문자 형태로 화면에 출력하는 기능 사용 시
	//해당 객체에 주어진 toString()을 먼저 실행하는 효과를 가진다.
//	public String toString() {
//		return "";
//	}
}
