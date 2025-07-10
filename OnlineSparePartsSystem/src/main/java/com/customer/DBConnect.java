package com.customer;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {

    private static String url = "jdbc:mysql://localhost:3306/vehicle";
    private static String userName = "root";
    private static String password = "Ns0765727840@";
    private static Connection con;

    public static Connection getConnection() {
        try {
            // Load MySQL JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection(url, userName, password);
        } catch (Exception e) {
            System.out.println("Database connection is not success!!!");
            e.printStackTrace();
        }
        return con;
    }
}
