<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>

<html>
<head>
    <title>View Complaints by Clerk</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 20px;
        }

        h1 {
            text-align: center;
            color: #333;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin: 20px 0;
        }

        table, th, td {
            border: 1px solid #ddd;
        }

        th, td {
            padding: 10px;
            text-align: left;
        }

        th {
            background-color: #4CAF50;
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        tr:hover {
            background-color: #ddd;
        }

        .button {
            display: inline-block;
            padding: 10px 20px;
            background-color: #4CAF50;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            margin-top: 20px;
            text-align: center;
        }

        .button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <h1>Complaints by Clerk</h1>

    <%-- Get the list of complaints from the request attribute --%>
    <%
        List<String[]> complaintsList = (List<String[]>) request.getAttribute("complaintsList");
        if (complaintsList != null && !complaintsList.isEmpty()) {
    %>
        <table>
            <thead>
                <tr>
                    <th>Complaint ID</th>
                    <th>Clerk Name</th>
                    <th>Phone</th>
                    <th>Location</th>
                    <th>Address</th>
                    <th>Complaint Type</th>
                    <th>Message</th>
                    <th>Created At</th>
                </tr>
            </thead>
            <tbody>
                <%-- Loop through the list of complaints and display their details --%>
                <%
                    for (String[] complaint : complaintsList) {
                %>
                    <tr>
                        <td><%= complaint[0] %></td>
                        <td><%= complaint[1] %></td>
                        <td><%= complaint[2] %></td>
                        <td><%= complaint[3] %></td>
                        <td><%= complaint[4] %></td>
                        <td><%= complaint[5] %></td>
                        <td><%= complaint[6] %></td>
                        <td><%= complaint[7] %></td>
                    </tr>
                <%
                    }
                %>
            </tbody>
        </table>
    <% } else { %>
        <p>No complaints found.</p>
    <% } %>

    <a href="SupervisorPage.jsp" class="button">Back to Home</a>
</body>
</html>
