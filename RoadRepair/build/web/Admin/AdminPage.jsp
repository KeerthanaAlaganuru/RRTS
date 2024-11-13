<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>RRTS</title>
    <link rel="icon" href="../Images/HomeLogo.jpg" type="image/x-icon">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="AdminPage.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
</head>
<body>
    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg fixed-top">
        <div class="container-fluid">
            <a class="navbar-brand" href="HomePage.jsp">
                <img src="../Images/HomeLogo.jpg" alt="Logo" class="img-fluid rounded-circle navbar-logo">
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
                        <a class="nav-link" href="AdminPage.jsp"><i class="bi bi-house-door"></i> Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#"><i class="bi bi-envelope"></i> Contact Us</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#"><i class="bi bi-info-circle"></i> About Us</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="<%= request.getContextPath() %>/LogoutServlet">
                            <i class="bi bi-box-arrow-right"></i> Logout
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- Main Content -->
    <div class="container d-flex justify-content-evenly mt-10 pt-5">
        <div class="flex-box">
            <h4>Manage Supervisors</h4>
            <button class="btn custom-button" data-bs-toggle="modal" data-bs-target="#manageSupervisorsModal">
                Click Here
            </button>
        </div>

        <div class="flex-box">
            <h4>Manage Repair Teams</h4>
            <button class="btn custom-button" data-bs-toggle="modal" data-bs-target="#manageRepairTeamsModal">
                Click Here
            </button>
        </div>
    </div>

    <!-- Manage Supervisors Modal -->
    <div class="modal fade" id="manageSupervisorsModal" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" role="dialog" aria-labelledby="manageSupervisorsModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="manageSupervisorsModalLabel">Managing the Supervisors</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <button class="btn btn-primary" onclick="window.location.href='AddSupervisor.jsp'">Add</button>

                    <button class="btn btn-warning" onclick="openEditSupervisorModal()">Edit</button>
                    <button class="btn btn-danger" onclick="openDeleteSupervisorModal()">Delete</button>
                </div>
            </div>
        </div>
    </div>

    <!-- Manage Repair Teams Modal -->
    <div class="modal fade" id="manageRepairTeamsModal" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" role="dialog" aria-labelledby="manageRepairTeamsModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="manageRepairTeamsModalLabel">Managing the Repair Teams</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <button class="btn btn-primary" onclick="openAddRepairTeamModal()">Add</button>
                    <button class="btn btn-warning" onclick="openEditRepairTeamModal()">Edit</button>
                    <button class="btn btn-danger" onclick="openDeleteRepairTeamModal()">Delete</button>
                </div>
            </div>
        </div>
    </div>

    <!-- Include Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

    <script>
        function openAddSupervisorModal() {
            alert("Open Add Supervisor Modal");
        }

        function openEditSupervisorModal() {
            alert("Open Edit Supervisor Modal");
        }

        function openDeleteSupervisorModal() {
            alert("Open Delete Supervisor Modal");
        }

        function openAddRepairTeamModal() {
            alert("Open Add Repair Team Modal");
        }

        function openEditRepairTeamModal() {
            alert("Open Edit Repair Team Modal");
        }

        function openDeleteRepairTeamModal() {
            alert("Open Delete Repair Team Modal");
        }
    </script>
</body>
</html>
