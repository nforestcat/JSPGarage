package servlet;

public class PetList {
	private String race;
	private String size;
	private String name;
	
	public PetList(String r, String s, String n) {
		race = r;
		size = s;
		name = n;
	}

	public String getRace() {
		return race;
	}

	public void setRace(String race) {
		this.race = race;
	}

	public String getSize() {
		return size;
	}

	public void setSize(String size) {
		this.size = size;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
}
