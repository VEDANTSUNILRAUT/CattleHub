<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Header</title>
<style>
/* style.css */

* {
  padding: 0;
  margin: 0;
  font-family: "Poppins", sans-serif;
}

.header {
  background-color: white;
  border: 3px solid black;
}

nav {
  display: flex;
  align-items: center;
  justify-content: space-between;
  padding: 20px;
  margin-left: 85px;
}

#nav-logo img {
  width: 12rem;
  height: auto;
}

nav ul {
  display: flex;
  gap: 2rem;
  align-items: center;
  list-style: none;
}

nav ul li a {
  text-decoration: none;
  font-weight: bold;
  font-size: 1.2rem;
  color: black;
  transition: color 0.3s ease;
}

nav ul li a:hover {
  color: #dbc79a;
}

.loginbtn {
  padding: 10px 20px;
  border: 2px solid black;
  border-radius: 20px;
  background-color: transparent;
  font-weight: bold;
  cursor: pointer;
  transition: background-color 0.3s ease, color 0.3s ease;
}

.loginbtn:hover {
  background-color: #dbc79a;
  color: white;
}

footer {
  color: black;
  padding: 50px 20px;
}

.footer-container {
  display: flex;
  flex-wrap: wrap;
  justify-content: space-between;
  max-width: 1200px;
  margin: auto;
}

.footer-logo img {
  width: 150px;
  margin-bottom: 10px;
}

.footer-contact a:hover {
  text-decoration: underline;
}


</style>
</head>
<body>

<div class="header" id="home">
    <nav>
        <div id="nav-logo">
            <img src="./img/navlogo.png" alt="Cattle Hub Logo">
        </div>
        <ul>
            <li><a href="index.jsp">Home</a></li>
            <li><a href="#about">About</a></li>
            <li><a href="services.jsp">Services</a></li>
            <li><a href="contact.jsp">Contact</a></li>
        </ul>

        <%-- Check if the user is logged in --%>
        <%
            String userName = (String) session.getAttribute("userName");
            if (userName != null) {
        %>
            <div style="display:flex; align-items:center; gap:1rem;">
                <p>Welcome, <%= userName %></p>
                <a href="userProfile.jsp">
                    <img style="height:50px; width:50px; cursor:pointer;" alt="Profile-Picture" src="./img/profile-user.png">
                </a>
            </div>
        <% 
            } else { 
        %>
            <div style="display:flex; gap:1rem;">
                <a href="registration.jsp">
                    <button class="loginbtn">Register</button>
                </a>
                <a href="login.jsp">
                    <button class="loginbtn">Login</button>
                </a>
            </div>
        <% } %>
    </nav>
</div>


</body>
</html>