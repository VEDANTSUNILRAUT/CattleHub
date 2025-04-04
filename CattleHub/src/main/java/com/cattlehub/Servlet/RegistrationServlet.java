package com.cattlehub.Servlet;

import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.Connection; // Correct import

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RegistrationServlet
 */
@WebServlet("/RegistrationServlet")
public class RegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegistrationServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		    String full_name = request.getParameter("name");
	        String email = request.getParameter("email");
	        String password = request.getParameter("password");
	        String phone = request.getParameter("phone");
	        String address = request.getParameter("address");
	        String role = request.getParameter("role");
	     
	      
	        
	        try {
	        	 Connection conn = DBConnection.getConnection();
	            
	            String sql = "INSERT INTO users (full_name, email, password, phone, address, role) VALUES (?, ?, ?, ?, ?, ?)";
	            
	            PreparedStatement pstmt = conn.prepareStatement(sql);
	            pstmt.setString(1, full_name);
	            pstmt.setString(2, email);
	            pstmt.setString(3, password);
	            pstmt.setString(4, phone);
	            pstmt.setString(5, address);
	            pstmt.setString(6, role);
	            
	            int rowsAffected = pstmt.executeUpdate();
	            
	            if (rowsAffected > 0) {
	                // Redirect back to register.jsp with success parameter
	                response.sendRedirect("registration.jsp?success=true");
	            } else {
	                response.sendRedirect("registration.jsp?error=true");
	            }
	            
	        } catch (Exception e) {
	            e.printStackTrace();
	            response.sendRedirect("registration-error.jsp");
	        } 
	        
	        
	}

}
