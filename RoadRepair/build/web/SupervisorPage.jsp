<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>RRTS - Supervisor</title>
    <link rel="icon" href="Images/HomeLogo.jpg" type="image/x-icon">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="SupervisorPage.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
</head>

<body>
    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg fixed-top">
        <div class="container-fluid">
            <a class="navbar-brand" href="HomePage.jsp">
                <img src="Images/HomeLogo.jpg" alt="Logo" class="img-fluid rounded-circle navbar-logo">
                <span class="navbar-text">RoadRepair</span>
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" 
                data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" 
                aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="SupervisorPage.jsp"><i class="bi bi-house-door"></i> Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="<%= request.getContextPath() %>/SupervisorDetailsServlet">
                            <i class="bi bi-person-circle"></i> Profile
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="<%= request.getContextPath() %>/SupervisorLogoutServlet">
                            <i class="bi bi-box-arrow-right"></i> Logout
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- Welcome Message -->
    <div class="welcome-message text-center mt-5 pt-5">
        <% 
            String supervisorName = (String) session.getAttribute("supervisorName");
            if (supervisorName != null) {
                out.println("Welcome, " + supervisorName);
            } else {
                out.println("Welcome, Guest");
            }
        %>
    </div>

    <!-- Main Content for Supervisor -->
    <div class="container card-container mt-4 pt-4">
        <!-- View Complaints by User Card -->
        <div class="card custom-card">
            <img src="Images/fb.jpg" class="card-img-top" alt="View Complaints by User">
            <div class="card-body text-center">
                <h5 class="card-title">View Complaints by User</h5>
                <p class="card-text">Click to view complaints raised by users.</p>
                <button class="btn custom-button" onclick="window.location.href='<%= request.getContextPath() %>/Supervisor_ViewComplaintsByUserServlet'">View Complaints</button>
            </div>
        </div>

        <!-- View Complaints by Clerk Card -->
        <div class="card custom-card">
            <img src="Images/viewcomplaint.jpg" class="card-img-top" alt="View Complaints by Clerk">
            <div class="card-body text-center">
                <h5 class="card-title">View Complaints by Clerk</h5>
                <p class="card-text">Click to view complaints raised by clerks.</p>
                <button class="btn custom-button" onclick="window.location.href='<%= request.getContextPath() %>/Supervisor_ViewComplaintsByClerkServlet'">View Complaints</button>
            </div>
        </div>

       <!-- View Pending Complaints Card -->
        <div class="card custom-card">
            <img src="Images/fb.jpg" class="card-img-top" alt="Generate Road Repair Report">
            <div class="card-body text-center">
                <h5 class="card-title">Generate Road Repair Report</h5>
                <p class="card-text">Click to generate a new road repair report based on recent data.</p>
                <button class="btn custom-button" onclick="window.location.href='<%= request.getContextPath() %>/Supervisor_RoadReport.jsp'">Generate Road Repair Report</button>
            </div>
        </div>
            
         <div class="card custom-card">
            <img src="Images/form2.jpg" class="card-img-top" alt="View Road Repair Report">
            <div class="card-body text-center">
                <h5 class="card-title">View Road Repair Report</h5>
                <p class="card-text">Click to view all existing road repair reports.</p>
                <button class="btn custom-button" onclick="window.location.href='<%= request.getContextPath() %>/showReportToSupervisor.jsp'">View Road Repair Report</button>
            </div>
        </div>


    </div>

    <!-- Include Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>