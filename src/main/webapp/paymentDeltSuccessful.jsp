<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Payment Deletion Successful</title>
    <style>
        body { 
            font-family: 'Arial', sans-serif; 
            background: linear-gradient(135deg, #5c7fbc, #1a2b49); /* Gradient background for consistency */
            margin: 0; 
            padding: 0; 
            display: flex; 
            justify-content: center; 
            align-items: center; 
            height: 100vh; 
            color: white; 
            text-align: center; 
        }
        .message { 
            padding: 30px 40px; 
            background-color: rgba(255, 255, 255, 0.15); /* Transparent white background */
            border-radius: 12px; 
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.2); 
            backdrop-filter: blur(5px); /* Subtle blur effect */
            max-width: 500px; 
        }
        h1 {
            margin: 0 0 20px;
            font-size: 28px;
            color: #28a745; /* Success color */
        }
        p {
            font-size: 16px;
            margin-bottom: 20px;
        }
        .button { 
            background-color: #ff7b5a; /* Button color */
            color: white; 
            padding: 12px 24px; 
            border: none; 
            border-radius: 6px; 
            cursor: pointer; 
            font-size: 16px;
            transition: background-color 0.3s ease, box-shadow 0.3s ease;
            text-decoration: none; /* Remove underline from link */
            display: inline-block; /* Align like a button */
        }
        .button:hover { 
            background-color: #e66747; 
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3); 
        }
    </style>
</head>
<body>

<div class="message">
    <h1>Payment Deletion Successful</h1>
    <p>Your payment information has been successfully deleted.</p>
    <a href="deletePayment.jsp" class="button">Back to Delete Payment</a>
</div>

</body>
</html>
