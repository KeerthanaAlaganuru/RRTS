import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/ViewComplaintsServlet")
public class Citizen_ViewComplaintsServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Get the citizen's email or name from session
        String citizenName = (String) request.getSession().getAttribute("citizenName");

        if (citizenName == null) {
            // Redirect to login if no citizen is logged in
            response.sendRedirect("Citizen_Login.jsp");
            return;
        }

        // Database connection details
        String url = "jdbc:mysql://localhost:3306/road_repair?useSSL=false&allowPublicKeyRetrieval=true&serverTimezone=UTC";
        String user = "root"; // DB username
        String password = "keerthana_2126"; // DB password

        Connection connection = null;
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;

        List<String> complaints = new ArrayList<>();
        try {
            // Load JDBC driver and establish connection
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(url, user, password);

            // Query to fetch complaints of the logged-in citizen based on name
            String sql = "SELECT complaint_id, phone, location, address, complaint_type, message, created_at FROM complaintsbycitizen WHERE name = ?";
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, citizenName);

            resultSet = preparedStatement.executeQuery();

            // Collecting complaint details
            while (resultSet.next()) {
                String complaintDetails = "Complaint ID: " + resultSet.getInt("complaint_id") +
                                          " | Phone: " + resultSet.getString("phone") +
                                          " | Location: " + resultSet.getString("location") +
                                          " | Address: " + resultSet.getString("address") +
                                          " | Type: " + resultSet.getString("complaint_type") +
                                          " | Message: " + resultSet.getString("message") +
                                          " | Submitted On: " + resultSet.getTimestamp("created_at");
                complaints.add(complaintDetails);
            }
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
            // Handle errors in DB connection or query execution
            request.setAttribute("errorMessage", "Error retrieving complaints.");
            request.getRequestDispatcher("CitizenPage.jsp").forward(request, response);
            return;
        } finally {
            try {
                if (resultSet != null) resultSet.close();
                if (preparedStatement != null) preparedStatement.close();
                if (connection != null) connection.close();
            } catch (SQLException ignored) {}
        }

        // Forward the complaints list to the JSP
        request.setAttribute("complaints", complaints);
        request.getRequestDispatcher("Citizen_ViewComplaints.jsp").forward(request, response);
    }
}
