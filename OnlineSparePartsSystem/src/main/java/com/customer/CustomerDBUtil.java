package com.customer;

import java.sql.Connection;

import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class CustomerDBUtil {
	
	private static boolean isSuccess; 
	private static Connection con = null; 
	private static Statement stmt = null; 
	private static ResultSet rs = null; 
	
	// Method to insert customer details into the database
	public static boolean insertcustomer(String firstname, String lastname, String username, String password, String repwd) {
		
		// Check if any field is empty
		if (firstname == null || firstname.isEmpty() ||
		    lastname == null || lastname.isEmpty() ||
		    username == null || username.isEmpty() ||
		    password == null || password.isEmpty() ||
		    repwd == null || repwd.isEmpty()) {
			System.out.println("All fields must be filled."); 
			return false; 
		}

		

		try {
			// Establish database connection
			con = DBConnect.getConnection();
			stmt = con.createStatement();

			// Check if username already exists in the database
			String checkUsernameSql = "SELECT * FROM user WHERE username = '" + username + "'";
			rs = stmt.executeQuery(checkUsernameSql);
			
			if (rs.next()) {
				System.out.println("Username already exists."); 
				return false; 
			}
			
			// Hash the password using SHA-256
			String hashedPassword = hashPassword(password);
			
			// If username does not exist, proceed with the insertion
			String insertSql = "INSERT INTO user VALUES (0, '" + firstname + "', '" + lastname + "', '" + username + "', '" + hashedPassword + "')";
			int result = stmt.executeUpdate(insertSql); // Execute insert command

			// Check if the insert operation was successful
			isSuccess = (result > 0); 
		} catch (Exception e) {
			e.printStackTrace(); 
			isSuccess = false; 
		} finally {
			// Close resources (ensure resources are closed properly)
			try {
				if (rs != null) rs.close(); 
				if (stmt != null) stmt.close(); 
				if (con != null) con.close(); 
			} catch (Exception e) {
				e.printStackTrace(); 
			}
		}

		return isSuccess; 
	}
	
	// Method to hash password using SHA-256
	public static String hashPassword(String password) {
	    try {
	        MessageDigest md = MessageDigest.getInstance("SHA-256"); // Create MessageDigest instance
	        byte[] hashedBytes = md.digest(password.getBytes()); // Hash the password

	        // Convert the byte array into a hexadecimal string
	        StringBuilder sb = new StringBuilder();
	        for (byte b : hashedBytes) {
	            sb.append(String.format("%02x", b)); 
	        }

	        return sb.toString(); // Return hashed password as string
	    } catch (NoSuchAlgorithmException e) {
	        e.printStackTrace(); 
	        return null; 
	    }
	}

	// Method to validate login details
	public static boolean validate(String username, String password) {
		
		try {
			String hashedPassword = hashPassword(password); // Hash the input password
			
			// Establish database connection
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "SELECT * FROM user WHERE username='" + username + "' AND password = '" + hashedPassword + "'";
			rs = stmt.executeQuery(sql);
			
			// If rs variable returns a row, login is successful
			if (rs.next()) {
				isSuccess = true; 
			} else {
				isSuccess = false; 
			}
		} catch (Exception e) {
			e.printStackTrace(); 
		}
		return isSuccess; 
	}
	
	// Method to get customer details from the database
	public static List<Customer> getCustomer(String userName) {
		
		ArrayList<Customer> customer = new ArrayList<>(); // List to hold customer details
		
		try {
			// Establish database connection
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "SELECT * FROM user WHERE username = '" + userName + "'";
			rs = stmt.executeQuery(sql);
			
			// Loop through result set and add customers to the list
			while (rs.next()) {
				int id = rs.getInt(1); 
				String firstName = rs.getString(2); 
				String lastName = rs.getString(3); 
				String username = rs.getString(4); 
				String password = rs.getString(5); 
				
				// Create Customer object and add it to the list
				Customer cus = new Customer(id, firstName, lastName, username, password);
				customer.add(cus);
			}
		} catch (Exception e) {
			e.printStackTrace(); 
		}
		
		return customer; 
	}
	
	// Method to insert data to the database (sign up)
	public static boolean insertCustomer(String firstname, String lastName, String username, String password) {
		
		boolean isSuccess = false; 
		
		try {
			// Establish database connection
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "INSERT INTO customer VALUES (0,'" + firstname + "','" + lastName + "','" + username + "','" + password + "')";
			int rs = stmt.executeUpdate(sql); // Execute insert command
			
			// Check if insert operation was successful
			if (rs > 0) {
				isSuccess = true; 
			} else {
				isSuccess = false; 
			}
		} catch (Exception e) {
			e.printStackTrace(); 
		}
		
		return isSuccess; 
	}

	// Method to update customer details
	public static boolean updateCustomer(String id, String firstname, String lastname, String username, String pwd) {		
		
		try {
			// Establish database connection
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			// Hash the new password
			String hashedPassword = hashPassword(pwd);
			 
			// SQL update statement
			String sql = "UPDATE user SET firstName='" + firstname + "', lastName='" + lastname + "', userName='" + username + "', password='" + hashedPassword + "' WHERE id='" + id + "'";
			
			int rs = stmt.executeUpdate(sql); 
			
			// Check if update operation was successful
			if (rs > 0) {
				isSuccess = true; 
			} else {
				isSuccess = false; 
			}
		} catch (Exception e) {
			e.printStackTrace(); 
		}
		return isSuccess; 
	}

	// Method to show customer's updated data
	public static List<Customer> getCustomerDetails(String id) {
		
		ArrayList<Customer> cus = new ArrayList<>(); // List to hold customer details
		
		int convertedid = Integer.parseInt(id); 
		try {
			// Establish database connection
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "SELECT * FROM user WHERE id = '" + convertedid + "'";
			rs = stmt.executeQuery(sql);
			
			// Loop through result set and add customers to the list
			while (rs.next()) {	
				int id1 = rs.getInt(1); 
				String firstname = rs.getString(2);
				String lastname = rs.getString(3); 
				String username = rs.getString(4); 
				String password = rs.getString(5); 
				
				// Create Customer object and add it to the list
				Customer c1 = new Customer(id1, firstname, lastname, username, password);
				cus.add(c1);
			}
		} catch (Exception e) {
			e.printStackTrace(); // Print stack trace for debugging
		}
		return cus; // Return list of customers
	}
	
	// Method to delete a customer
	public static boolean deletCustomer(String id) {	
		int convertedid = Integer.parseInt(id); // Convert string id to integer
		
		try {
			// Establish database connection
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "DELETE FROM user WHERE id = '" + convertedid + "'";
			int rs = stmt.executeUpdate(sql); // Execute delete command
			
			// Check if delete operation was successful
			if (rs > 0) {
				isSuccess = true;
			} else {
				isSuccess = false; 
			}
		} catch (Exception e) {
			e.printStackTrace(); 
		}
		return isSuccess; 
	}

	// Placeholder method for updating a customer (not implemented)
	public static boolean updateCustomer(int id, String firstname, String lastname, String username, String password) {
		
		return false; // Return false as this method is not implemented
	}
}
