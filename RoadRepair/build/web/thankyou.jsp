<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Thank You - RRTS</title>
    <link rel="stylesheet" href="styles.css"> <!-- Optional: link to your main CSS for styling consistency -->
    <style>
        /* Basic styles for the thank you page */
        body {
            font-family: Arial, sans-serif;
            background-color: #f9f9f9;
            color: #333;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
            margin: 0;
        }

        .thank-you-container {
            text-align: center;
            max-width: 600px;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }

        h1 {
            color: #4CAF50;
        }

        p {
            font-size: 1.1em;
        }

        .home-button {
            margin-top: 20px;
            padding: 10px 20px;
            font-size: 1em;
            color: #fff;
            background-color: #4CAF50;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            text-decoration: none;
        }

        .home-button:hover {
            background-color: #45a049;
        }
    </style>
</head>

<body>
    <div class="thank-you-container">
        <h1>Thank You!</h1>
        <p>Your message has been successfully submitted. We appreciate you taking the time to reach out to us.</p>
        <p>Our team will review your message and get back to you as soon as possible.</p>
        
        <!-- Button to redirect to Home Page -->
        <a href="HomePage.jsp" class="home-button">Back to Home</a>
    </div>
</body>

</html>
