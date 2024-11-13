<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Road Repair Report Form</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #eef2f7;
            margin: 0;
            padding: 0;
        }

        .container {
            width: 50%;
            margin: 40px auto;
            background-color: #ffffff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }

        h2 {
            text-align: center;
            color: #333333;
        }

        form {
            display: flex;
            flex-direction: column;
        }

        label {
            margin-top: 10px;
            font-weight: bold;
            color: #444;
        }

        input[type="text"],
        input[type="number"],
        select {
            padding: 12px;
            margin-top: 5px;
            margin-bottom: 20px;
            border: 1px solid #cccccc;
            border-radius: 4px;
            font-size: 16px;
            width: 100%;
        }

        button {
            background-color: #007bff;
            color: #ffffff;
            padding: 12px;
            font-size: 16px;
            font-weight: bold;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        button:hover {
            background-color: #0056b3;
        }

        .back-button,
        .home-button {
            background-color: #6c757d;
            color: #ffffff;
            border-radius: 4px;
            padding: 8px 12px;
            text-decoration: none;
            font-size: 14px;
            display: inline-block;
            margin-bottom: 20px;
            transition: background-color 0.3s ease;
            text-align: center;
        }

        .back-button:hover,
        .home-button:hover {
            background-color: #5a6268;
        }

        .button-container {
            display: flex;
            justify-content: space-between;
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="button-container">
            
            <a href="SupervisorPage.jsp" class="home-button">Home</a>
        </div>

        <h2>Road Repair Report Form</h2>
        <form action="RoadRepairReportServlet" method="post">
            <!-- Main focus fields -->
            <label for="road_location">Road Location:</label>
            <input type="text" id="road_location" name="road_location" placeholder="Enter location" required>

            <label for="complaint_type">Complaint Type:</label>
            <select id="complaint_type" name="complaint_type" required>
                <option value="">Select Complaint Type</option>
                <option value="cracks">Cracks</option>
                <option value="flooding">Flooding</option>
                <option value="erosion">Erosion</option>
                <option value="uneven_surface">Uneven Surface</option>
                <option value="drainage_issue">Drainage Issue</option>
                <option value="faded_road_markings">Faded Road Markings</option>
                <option value="damaged_signs">Damaged Road Signs</option>
                <option value="street_lighting_issue">Street Lighting Issue</option>
                <option value="debris_obstruction">Debris Obstruction</option>
                <option value="guardrail_damage">Guardrail Damage</option>
                <option value="sidewalk_repair">Sidewalk Repair</option>
                <option value="bridge_maintenance">Bridge Maintenance</option>
                <option value="speed_bump_repair">Speed Bump Repair</option>
                <option value="Potholes">Potholes</option>
                <option value="Road Damage">Road Damage</option>
                <option value="Street Light Issue">Street Light Issue</option>
                <option value="Traffic Signal Issue">Traffic Signal Issue</option>
                <option value="Blocked Drain">Blocked Drain</option>
                <option value="Roadside Garbage">Roadside Garbage</option>
                <option value="Speed Bumps Issue">Speed Bumps Issue</option>
                <option value="Road Construction Delay">Road Construction Delay</option>
                <!-- Add other relevant complaint types as needed -->
            </select>

            <!-- Additional details section -->
            <label for="raw_material">Raw Materials Needed:</label>
            <select id="raw_material" name="raw_material" required>
                <option value="">Select Raw Materials</option>
                <option value="Asphalt">Asphalt</option>
                <option value="Concrete">Concrete</option>
                <option value="Gravel">Gravel</option>
                <option value="Sand">Sand</option>
                <option value="Steel">Steel</option>
                <!-- Add other raw materials as needed -->
            </select>

            <label for="machine_required">Machines Needed:</label>
            <select id="machine_required" name="machine_required" required>
                <option value="">Select Machines</option>
                <option value="Bulldozer">Bulldozer</option>
                <option value="Excavator">Excavator</option>
                <option value="Paver">Paver</option>
                <option value="Roller">Roller</option>
                <option value="Grader">Grader</option>
                <!-- Add other machines as needed -->
            </select>

            <label for="labour_count">Number of Workers Needed:</label>
            <select id="labour_count" name="labour_count" required>
                <option value="">Select Labour Count</option>
                <option value="5">5</option>
                <option value="10">10</option>
                <option value="15">15</option>
                <option value="20">20</option>
                <option value="25">25</option>
                <!-- Add other numbers as needed -->
            </select>

            <label for="priority">Priority Level (1-10):</label>
            <input type="number" id="priority" name="priority" min="1" max="10" placeholder="Enter priority level" required>

            <button type="submit">Generate Report</button>
        </form>
    </div>
</body>
</html>
