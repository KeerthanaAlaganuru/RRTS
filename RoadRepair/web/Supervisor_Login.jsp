<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="jakarta.servlet.http.*, jakarta.servlet.*" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>RRTS - Supervisor Login</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Link to the external CSS file -->
    <link href="Supervisor_Login.css" rel="stylesheet">
</head>
<body>

<div class="container mt-5">
    <div class="login-container">
        <h2 class="text-center">Hello Supervisor, Please Login to Continue</h2>

        <!-- Show error message if present -->
        <% 
            String errorMessage = (String) request.getAttribute("errorMessage");
            if (errorMessage != null) {
        %>
        <div class="alert alert-danger text-center"><%= errorMessage %></div>
        <% } %>

        <form action="SupervisorLoginServlet" method="post">
            <div class="mb-3">
                <label for="supervisor_id" class="form-label">Supervisor ID:</label>
                <input type="text" id="supervisor_id" name="supervisor_id" class="form-control" required>
            </div>

            <div class="mb-3">
                <label for="supervisor_password" class="form-label">Password:</label>
                <input type="password" id="supervisor_password" name="supervisor_password" class="form-control" required>
            </div>

            <button type="submit" class="btn btn-primary">Login</button>
        </form>

        <!-- Back to Home Button -->
        <form action="HomePage.jsp" method="get" class="mt-3">
            <button type="submit" class="btn btn-secondary">Back to Home</button>
        </form>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
