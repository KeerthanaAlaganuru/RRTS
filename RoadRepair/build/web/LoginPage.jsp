<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>RRTS - LOGIN</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="LoginPage.css"> <!-- Linking the external CSS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</head>

<body>

<!-- Back to Home Button -->
<div class="top-right">
    <button onclick="backToHome()">Back to Home</button>
</div>

<!-- Container for login sections -->
<div class="container">
    <!-- USER Section -->
    <div class="card">
        <img src="Images/logins.jpg" class="card-img-top" alt="User Image"> <!-- Add image -->
        <div class="card-body">
            <h5 class="card-title">USER</h5> <!-- Heading inside card -->
            <button onclick="window.location.href='Citizen_Login.jsp'" class="btn btn-primary">Login</button>
        </div>
    </div>

    <!-- CLERK Section -->
    <div class="card">
        <img src="Images/logins.jpg" class="card-img-top" alt="Clerk Image"> <!-- Add image -->
        <div class="card-body">
            <h5 class="card-title">CLERK</h5> <!-- Heading inside card -->
            <button onclick="window.location.href='Clerk_Login.jsp'" class="btn btn-primary">Login</button>
        </div>
    </div>

    <!-- SUPERVISOR Section -->
    <div class="card">
        <img src="Images/logins.jpg" class="card-img-top" alt="Supervisor Image"> <!-- Add image -->
        <div class="card-body">
            <h5 class="card-title">SUPERVISOR</h5> <!-- Heading inside card -->
            <button onclick="window.location.href='Supervisor_Login.jsp'" class="btn btn-primary">Login</button>
        </div>
    </div>

    <!-- ADMINISTRATOR Section -->
    <div class="card">
        <img src="Images/logins.jpg" class="card-img-top" alt="Administrator Image"> <!-- Add image -->
        <div class="card-body">
            <h5 class="card-title">ADMINISTRATOR</h5> <!-- Heading inside card -->
            <button onclick="window.location.href='Admin_Login.jsp'" class="btn btn-primary">Login</button>
        </div>
    </div>
</div>

<script>
    function backToHome() {
        window.location.href = "HomePage.jsp"; // Go back to the homepage
    }
</script>

</body>
</html>
