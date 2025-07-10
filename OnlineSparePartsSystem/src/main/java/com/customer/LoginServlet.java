package com.customer;

import jakarta.servlet.RequestDispatcher; 

import jakarta.servlet.ServletException; 
import jakarta.servlet.annotation.WebServlet; 
import jakarta.servlet.http.HttpServlet; 
import jakarta.servlet.http.HttpServletRequest; 
import jakarta.servlet.http.HttpServletResponse; 
import jakarta.servlet.http.HttpSession; 

import java.io.IOException; 
import java.io.PrintWriter;
import java.util.ArrayList; 
import java.util.List; 

@WebServlet("/login") // Define servlet mapping for the login operation
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L; // Unique identifier for this servlet

    // Override the doPost method to handle POST requests
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out = response.getWriter(); // Create PrintWriter to write response
        response.setContentType("text/html"); // Set the response content type to HTML

        // Retrieve username and password from request parameters
        String username = request.getParameter("username");
        String pwd = request.getParameter("password");

        // Initialize a list to hold error messages
        List<String> errors = new ArrayList<>();

        // Server-side validation
        if (username == null || username.isEmpty()) {
            errors.add("Username is required."); 
        }
        if (pwd == null || pwd.isEmpty()) {
            errors.add("Password is required."); // Add error message if password is empty
        }

        // Check for errors
        if (!errors.isEmpty()) {
            request.setAttribute("errors", errors); // Set error messages as a request attribute
            RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp"); 
            dispatcher.forward(request, response); 
            return; 
        }

        // Validate user credentials by calling the database utility method
        boolean isTrue = CustomerDBUtil.validate(username, pwd);

        if (isTrue) {
            
            List<Customer> cusDetails = CustomerDBUtil.getCustomer(username);
            request.setAttribute("cusDetails", cusDetails); 
            
            // Save user details in the session
            HttpSession session = request.getSession(); 
            session.setAttribute("user", cusDetails.get(0)); 

            RequestDispatcher dis = request.getRequestDispatcher("index.jsp"); 
            dis.forward(request, response); 
        } else {
            
            errors.add("Your Username or password is incorrect.");
            request.setAttribute("errors", errors); 
            RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp"); 
            dispatcher.forward(request, response); 
        }
    }
}
