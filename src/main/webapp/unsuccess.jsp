<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Payment Error</title>
    <style>
        body { font-family: 'Arial', sans-serif; background-color: #f7f9fc; margin: 0; padding: 0; text-align: center; }
        .message { margin: 40px; padding: 20px; background-color: white; border-radius: 8px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); }
        .button { background-color: #ff5c5c; color: white; padding: 10px 20px; border: none; border-radius: 5px; cursor: pointer; }
        .button:hover { background-color: #e04343; }
    </style>
</head>
<body>

<div class="message">
    <h2>Error Submitting Payment Information</h2>
    <p>There was an issue processing your payment. Please try again.</p>
    <button class="button" onclick="window.location.href='insertPayment.jsp'">Return to Insert Payment</button>
</div>

</body>
</html>
