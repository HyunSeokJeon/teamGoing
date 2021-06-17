package service;

public class User {
	
	private String CUSTOMERID;
	private String CUSTOMERNAME;
	
	public User(String id, String name) {
		this.CUSTOMERID = id;
		this.CUSTOMERNAME = name;
	}
	
	public String getId() {
		return CUSTOMERID;
	}

	public String getName() {
		return CUSTOMERNAME;
	}

	
}
