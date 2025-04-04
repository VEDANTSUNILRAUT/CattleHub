package com.cattlehub.Servlet;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {
	private static Connection conn =null;
    private static final String URL = "jdbc:mysql://localhost:3306/javacattlehub";
    private static final String USERNAME = "root";
    private static final String PASSWORD = "";

    // Static method to get connection
    public static Connection getConnection() throws ClassNotFoundException, SQLException {
       try {
    	   Class.forName("com.mysql.cj.jdbc.Driver");
    	   conn= DriverManager.getConnection(URL, USERNAME, PASSWORD);
       
       
       }catch(SQLException e) {
    	   e.printStackTrace();
       }
       return conn;
    }
    
    

    public static void main(String[] args) {
        try {
            Connection conn = getConnection();
            if (conn != null) {
                System.out.println("Connection established successfully.");
                conn.close(); // Closing the connection
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    }
}

