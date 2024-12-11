<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Payment Update Unsuccessful</title>
    <style>
        body { font-family: 'Arial', sans-serif; background-color: #f8d7da; margin: 0; padding: 0; display: flex; flex-direction: column; min-height: 100vh; }
        .header, .footer { background-color: #1a2b49; color: white; text-align: center; padding: 20px; }
        .message-container { max-width: 600px; margin: 40px auto; padding: 20px; background-color: white; border-radius: 8px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); text-align: center; }
        .error { color: #dc3545; font-size: 1.5em; }
        .button { margin-top: 20px; padding: 10px 20px; background-color: #356abc; color: white; border: none; cursor: pointer; border-radius: 5px; text-decoration: none; }
        .button:hover { background-color: #2a4e7e; }
    </style>
</head>
<body>

    <div class="header">
        <h1>Payment Update Unsuccessful</h1>
    </div>

    <div class="message-container">
        <p class="error">An error occurred while updating the payment information.</p>
        <p>Please try again.</p>
        <a href="updatePayment.jsp" class="button">Try Again</a>
        <a href="index.jsp" class="button">Back to Home</a>
    </div>

    <div class="footer">
        <p>&copy; 2024 School Information Management System | All Rights Reserved</p>
    </div>

</body>
</html>
