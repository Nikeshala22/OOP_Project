package com.customer;

public class Customer {
    //  Customer attributes
	private int id;
	private String firstname; 
	private String lastName; 
	private String username; 
	private String password; 
	
	// Constructor to initialize all fields
	public Customer(int id, String firstname, String lastName, String username, String password) {
		this.id = id; 
		this.firstname = firstname; 
		this.lastName = lastName; 
		this.username = username; 
		this.password = password; 
	}

	
	public Customer() {
		
	}

	public int getid() {
		return id;
	}

	
	public String getfirstname() {
		return firstname;
	}

	
	public String getlastName() {
		return lastName; 
	}

	
	public String getusername() {
		return username; 
	}

	
	public String getpassword() {
		return password; 
	}
}
