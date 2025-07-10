package com.customer;

import jakarta.servlet.RequestDispatcher; 

import jakarta.servlet.ServletException; 
import jakarta.servlet.annotation.WebServlet; 
import jakarta.servlet.http.HttpServlet; 
import jakarta.servlet.http.HttpServletRequest; 
import jakarta.servlet.http.HttpServletResponse; 
import java.io.IOException; 
import java.util.List;

@WebServlet("/update") // Define servlet mapping for the update operation
public class UpdateProfileServlet extends HttpServlet {
    private static final long serialVersionUID = 1L; // Unique identifier for this servlet

    // Override the doPost method to handle POST requests for updating user profiles
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve customer ID and new profile details from the request
        String id = request.getParameter("cusid");
        String firstname = request.getParameter("firstname");
        String lastname = request.getParameter("lastname");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        
        // Hash the new password using SHA-256
        String hashedPassword = hashPassword(password); // Ensure this method is defined in your utility

        // Update customer details in the database
        boolean isTrue = CustomerDBUtil.updateCustomer(id, firstname, lastname, username, hashedPassword);
        
        if (isTrue) {
           
            List<Customer> cusDetails = CustomerDBUtil.getCustomerDetails(id);
            request.setAttribute("cusDetails", cusDetails); // Set updated details as a request attribute

            // Store updated customer details in the session
            request.getSession().setAttribute("user", cusDetails.get(0)); 

            // Redirect to user account page
            RequestDispatcher dis = request.getRequestDispatcher("useraccount.jsp");
            dis.forward(request, response); 
        } else {
            
            request.setAttribute("errorMessage", "Update failed. Please try again."); 
            RequestDispatcher dis2 = request.getRequestDispatcher("updateprofile.jsp"); 
            dis2.forward(request, response); 
        }
    }

    // Method to hash the password (placeholder implementation)
    private String hashPassword(String password) {
        // Implement your password hashing logic here (e.g., SHA-256)
        // Return the hashed password
        return password; 
    }
}
