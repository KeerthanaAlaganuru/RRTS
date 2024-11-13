<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="SupervisorDetails.css">
    <title>Supervisor Details</title>
</head>
<body>

    <div class="container">
        <h2>Supervisor Details</h2>
        
        <table>
            <tr>
                <th>Supervisor ID</th>
                <td><%= request.getAttribute("supervisorId") %></td>
            </tr>
            <tr>
                <th>Supervisor Name</th>
                <td><%= request.getAttribute("supervisorName") %></td>
            </tr>
            <tr>
                <th>Email</th>
                <td><%= request.getAttribute("supervisorEmail") %></td>
            </tr>
            <tr>
                <th>Phone</th>
                <td><%= request.getAttribute("supervisorPhone") %></td>
            </tr>
        </table>

        <div class="button-group">
            <a href="SupervisorPage.jsp" class="button">Back to Home</a>
            <a href="updateSupervisorDetails.jsp" class="button update-btn">Update Details</a>
           
        </div>
    </div>

</body>
</html>
