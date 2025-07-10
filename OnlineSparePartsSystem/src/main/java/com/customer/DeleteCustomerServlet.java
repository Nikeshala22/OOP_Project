package com.customer;

import jakarta.servlet.RequestDispatcher; 

import jakarta.servlet.ServletException; 
import jakarta.servlet.annotation.WebServlet; 
import jakarta.servlet.http.HttpServlet; 
import jakarta.servlet.http.HttpServletRequest; 
import jakarta.servlet.http.HttpServletResponse; 
import java.io.IOException; 
import java.util.List;

@WebServlet("/delete") // Define servlet mapping for the delete operation
public class DeleteCustomerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L; // Unique identifier for this servlet

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// Retrieve the customer ID from the request parameter
		String id = request.getParameter("cusid");
		
		
		boolean isTrue = CustomerDBUtil.deletCustomer(id);
		
		// Check if the deletion was successful
		if (isTrue == true) {
			
			RequestDispatcher dis = request.getRequestDispatcher("sinup.jsp");
			dis.forward(request, response); 
		} else {
			
			List<Customer> cusDetails = CustomerDBUtil.getCustomerDetails(id);
			request.setAttribute("cusDetails", cusDetails); 
			
			
			RequestDispatcher dis2 = request.getRequestDispatcher("useraccount.jsp");
			dis2.forward(request, response); 
		}
	}
}
