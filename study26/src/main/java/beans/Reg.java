package beans;

public class Reg {
	private String name;
	private String userId;
	private String pass;
	private String email;
	private String phone;
	private String first;
	private String second;
	private String third;
	
	
	public String getFirst() {
		return first;
	}
	public void setFirst(String first) {
		this.first = first;
		System.out.println("setFirst() 실행");

	}
	public String getSecond() {
		return second;
	}
	public void setSecond(String second) {
		this.second = second;
		System.out.println("setSecond() 실행");

	}
	public String getThird() {
		return third;
	}
	public void setThird(String third) {
		this.third = third;
		System.out.println("setThird() 실행");
		setPhone(this.first+"-"+this.second+"-"+this.third);
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
		System.out.println("setName() 실행");
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
		System.out.println("setUserId() 실행");
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
		System.out.println("setPass() 실행");
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
		System.out.println("setEmail() 실행");
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
		System.out.println("setPhone() 실행");
	}
	
	
}
