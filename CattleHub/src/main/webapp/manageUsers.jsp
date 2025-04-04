<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Manage Users</title>
    <style>
        /* Add to existing styles */
        .user-table {
            width: 100%;
            border-collapse: collapse;
            margin: 20px 0;
        }
        .user-table th, .user-table td {
            border: 1px solid #ddd;
            padding: 12px;
            text-align: left;
        }
        .user-table th {
            background-color: #333;
            color: white;
        }
        .user-table tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        .action-buttons a {
            padding: 5px 10px;
            margin: 2px;
            text-decoration: none;
            color: white;
            border-radius: 3px;
        }
        .edit-btn { background-color: #4CAF50; }
        .delete-btn { background-color: #f44336; }
        .add-user-btn {
            background-color: #2196F3;
            color: white;
            padding: 10px;
            text-decoration: none;
            display: inline-block;
            margin: 10px 0;
        }
    </style>
</head>
<body>
    <!-- Include the same header/sidebar as dashboard -->
    <div class="main-content">
        <h2>Manage Users</h2>
        <a href="userForm.jsp" class="add-user-btn">Add New User</a>
        
        <table class="user-table">
            <tr>
                <th>ID</th>
                <th>Username</th>
                <th>Email</th>
                <th>Role</th>
                <th>Actions</th>
            </tr>
            <c:forEach var="user" items="${users}">
                <tr>
                    <td>${user.id}</td>
                    <td>${user.username}</td>
                    <td>${user.email}</td>
                    <td>${user.role}</td>
                    <td class="action-buttons">
                        <a href="editUser.jsp?id=${user.id}" class="edit-btn">Edit</a>
                        <a href="ManageUsers?action=delete&id=${user.id}" 
                           class="delete-btn"
                           onclick="return confirm('Are you sure?')">Delete</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>
</body>
</html>