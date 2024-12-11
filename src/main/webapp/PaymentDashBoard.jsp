<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>School Information Management System</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background: linear-gradient(135deg, #5c7fbc 0%, #356abc 50%, #1a2b49 100%);
            background-size: cover; /* Ensure the background covers the entire viewport */
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            min-height: 100vh;
            color: white;
        }
        .header {
            background: rgba(26, 43, 73, 0.9);
            color: #ffffff;
            padding: 20px;
            text-align: center;
            position: relative;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }
        .header h1 {
            margin: 0;
            font-size: 2.5rem;
        }
        .logout {
            position: absolute;
            right: 20px;
            top: 15px;
            background-color: #ff5c5c;
            color: #ffffff;
            padding: 10px 18px;
            border: none;
            cursor: pointer;
            font-size: 14px;
            border-radius: 5px;
            transition: background-color 0.3s ease, box-shadow 0.3s ease;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.2);
        }
        .logout:hover {
            background-color: #e04343;
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.3);
        }
        .dashboard {
            display: flex; /* Changed to flex */
            justify-content: center; /* Center tiles horizontally */
            align-items: center; /* Center tiles vertically */
            flex-wrap: wrap; /* Wrap tiles if they exceed the width */
            padding: 40px;
            max-width: 1200px;
            margin: 60px auto;
            gap: 20px;
        }
        .tile {
            background-color: rgba(42, 78, 126, 0.5); /* More transparent background */
            color: white;
            height: 180px;
            display: flex;
            justify-content: center;
            align-items: center;
            text-align: center;
            font-size: 20px; /* Increased font size */
            font-weight: bold;
            border-radius: 12px;
            backdrop-filter: blur(10px); /* Optional: Blurs the background behind the tile */
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.15);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            position: relative;
            width: 220px; /* Fixed width for tiles */
        }
        .tile:hover {
            transform: translateY(-5px); /* Slightly reduced hover effect */
            box-shadow: 0 12px 24px rgba(0, 0, 0, 0.3);
        }
        .tile a {
            text-decoration: none;
            color: white;
            z-index: 1;
        }
        .footer {
            background-color: rgba(26, 43, 73, 0.9);
            color: white;
            text-align: center;
            padding: 20px;
            width: 100%;
            margin-top: auto;
            box-shadow: 0 -4px 8px rgba(0, 0, 0, 0.2);
        }
        @media (max-width: 992px) {
            .dashboard {
                flex-direction: column; /* Stack tiles on small screens */
            }
        }
    </style>
</head>
<body>
    <div class="header">
        <h1>School Information Management System</h1>
        <button class="logout" onclick="window.location.href='logout.jsp'">Log Out</button>
    </div>
    <div class="dashboard">
        <div class="tile"><a href="readPayments.jsp">Read Payment Information</a></div>
        <div class="tile"><a href="insertPayment.jsp">Insert Payment Information</a></div>
        <div class="tile"><a href="updatePayment.jsp">Update Payment Information</a></div>
        <div class="tile"><a href="deletePayment.jsp">Delete Payment Information</a></div>
    </div>
    <div class="footer">
        <p>&copy; 2024 School Information Management System | All Rights Reserved</p>
    </div>
</body>
</html>
