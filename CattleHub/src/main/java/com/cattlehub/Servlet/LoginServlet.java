package com.cattlehub.Servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        
        try {
            conn = DBConnection.getConnection();
            String sql = "SELECT * FROM users WHERE email = ? AND password = ?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, email);
            pstmt.setString(2, password);
            rs = pstmt.executeQuery();
            
            if (rs.next()) {
                HttpSession session = request.getSession();
                String role = rs.getString("role");
                
                // Set common user attributes
                session.setAttribute("userEmail", email);
                session.setAttribute("userName", rs.getString("full_name"));
                session.setAttribute("userPhone", rs.getString("phone"));
                session.setAttribute("userAddress", rs.getString("address"));
                session.setAttribute("userRole", role);
                session.setAttribute("userId", rs.getInt("user_id"));

                // Set role-specific attributes
                if ("admin".equalsIgnoreCase(role)) {
                    session.setAttribute("admin", true);
                    response.sendRedirect("admin/adminDashboard.jsp");
                } else if ("seller".equalsIgnoreCase(role)) {
                    session.setAttribute("seller", true);
                    response.sendRedirect("seller/sellerDashboard.jsp");
                } else {
                    // Default user role
                    session.setAttribute("user", true);
                    response.sendRedirect("home.jsp");
                }
                
                System.out.println("Login Successful for: " + email + " | Role: " + role);
                
            } else {
                System.out.println("Invalid credentials for: " + email);
                response.sendRedirect("login.jsp?error=invalid");
            }
            
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("login.jsp?error=database");
        } finally {
            // Close resources (rs, pstmt, conn) here
        }
    }
}