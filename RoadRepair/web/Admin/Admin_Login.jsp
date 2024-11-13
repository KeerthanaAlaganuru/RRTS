<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="jakarta.servlet.http.*, jakarta.servlet.*" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>RRTS - Admin Login</title>
    <link href="Admin_Login.css" rel="stylesheet">
</head>
<body>

<div class="login-container">
    <h2>Hello Admin, Please Login to Continue</h2>

    <!-- Show error message if present -->
    <% 
        String errorMessage = (String) request.getAttribute("errorMessage");
        if (errorMessage != null) {
    %>
    <div class="error-message"><%= errorMessage %></div>
    <% } %>

    <form action="AdminLoginServlet" method="post">
        <div class="form-group">
            <label for="admin_email">Admin Email:</label>
            <input type="email" id="admin_email" name="admin_email" class="form-control" required>
        </div>

        <div class="form-group">
            <label for="admin_password">Password:</label>
            <input type="password" id="admin_password" name="admin_password" class="form-control" required>
        </div>

        <button type="submit" class="btn-login">Login</button>
    </form>
</div>

</body>
</html>
