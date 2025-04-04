<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
    <link rel="stylesheet" href="styles.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }

        .navbar {
            background-color: #333;
            color: white;
            padding: 15px;
            text-align: center;
        }

        .sidebar {
            height: 100%;
            width: 200px;
            position: fixed;
            top: 0;
            left: 0;
            background-color: #222;
            padding-top: 20px;
        }

        .sidebar a {
            padding: 10px 15px;
            text-decoration: none;
            font-size: 18px;
            color: white;
            display: block;
        }

        .sidebar a:hover {
            background-color: #575757;
        }

        .main-content {
            margin-left: 220px;
            padding: 20px;
        }

        .card {
            background-color: white;
            padding: 20px;
            margin: 10px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            border-radius: 5px;
            display: inline-block;
            width: 45%;
        }

        .card h2 {
            margin-top: 0;
        }

        .card .value {
            font-size: 36px;
            font-weight: bold;
            color: #333;
        }

        .footer {
            background-color: #333;
            color: white;
            text-align: center;
            padding: 10px;
            position: absolute;
            bottom: 0;
            width: 100%;
        }
    </style>
</head>
<body>
    <div class="navbar">
        <h1>Admin Dashboard</h1>
    </div>

    <div class="sidebar">
        <a href="dashboard.jsp">Dashboard</a>
        <a href="manageUsers.jsp">Manage Users</a>
        <a href="viewReports.jsp">View Reports</a>
        <a href="logout.jsp">Logout</a>
    </div>

    <div class="main-content">
        <div class="card">
            <h2>Total Users</h2>
            <div class="value">150</div>
        </div>
        <div class="card">
            <h2>Total Orders</h2>
            <div class="value">320</div>
        </div>
        <div class="card">
            <h2>Total Revenue</h2>
            <div class="value">$5000</div>
        </div>
        <div class="card">
            <h2>Pending Orders</h2>
            <div class="value">50</div>
        </div>
    </div>

    <div class="footer">
        <p>&copy; 2025 Cattle Hub Management | All Rights Reserved</p>
    </div>
</body>
</html>
