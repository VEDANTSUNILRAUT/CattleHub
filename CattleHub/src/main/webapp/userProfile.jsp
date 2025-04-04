<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*, com.cattlehub.Servlet.DBConnection" %>
<%
    // Get the logged-in user's email
    String userEmail = (String) session.getAttribute("userEmail");
    
    if (userEmail == null) {
        response.sendRedirect("login.jsp"); // Redirect to login if not logged in
        return;
    }

    String full_name = (String) session.getAttribute("userName");
    String userPhone = (String) session.getAttribute("userPhone");
    String userAddress = (String) session.getAttribute("userAddress");
    String userRole = (String) session.getAttribute("userRole");
%>
<!DOCTYPE html>
<html>
<head>
    <title>User Profile</title>
    <style>
        body { font-family: Arial, sans-serif; background-color: #f4f4f4; }
        .profile-container {
            width: 40%;
            margin: auto;
            background: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            margin-top: 50px;
        }
        .profile-container h2 {
            text-align: center;
            color: #333;
        }
        .profile-details {
            margin-top: 20px;
        }
        .profile-details p {
            font-size: 18px;
            margin: 10px 0;
        }
        .profile-details label {
            font-weight: bold;
            color: #555;
        }
        .logout-btn {
            display: block;
            text-align: center;
            margin-top: 20px;
            padding: 10px;
            background: #007bff;
            color: white;
            text-decoration: none;
            border-radius: 5px;
        }
        .logout-btn:hover {
            background: #0056b3;
        }
        .home-btn{
        width:100px;
        height:auto;
        position:absolute;
        right:15px;
        top:15px;
        border-radius: 5px;
        padding:10px;
        background-color: #007bff;
        
        }
        .home-btn:hover{
        background-color: #0056b3;
        }
        .home-btn a{
        text-decoration:none;
        color:white;
        font-weight:bold;
        }
    </style>
</head>
<body>
    <button class="home-btn"><a href="home.jsp" >Home</a></button>
    <div class="profile-container">
        <h2>User Profile</h2>
        <div class="profile-details">
            <p><label>Full Name:</label> <%= full_name %></p>
            <p><label>Email:</label> <%= userEmail %></p>
            <p><label>Phone:</label> <%= userPhone %></p>
            <p><label>Address:</label> <%= userAddress %></p>
            <p><label>Role:</label> <%= userRole %></p>
        </div>
        <a href="LogoutServlet" class="logout-btn">Logout</a>
    </div>
</body>
</html>
