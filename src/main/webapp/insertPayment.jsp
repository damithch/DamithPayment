<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Insert Payment Information</title>
    <style>
        body { 
            font-family: 'Arial', sans-serif; 
            background: linear-gradient(135deg, #1a2b49, #356abc, #5c7fbc); 
            margin: 0; 
            padding: 0; 
            display: flex; 
            flex-direction: column; 
            min-height: 100vh; 
            color: #fff; 
        }
        .header, .footer { 
            background-color: rgba(26, 43, 73, 0.9); 
            color: white; 
            text-align: center; 
            padding: 20px; 
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3); 
        }
        .form-container { 
            max-width: 90%; 
            margin: 40px auto; 
            padding: 20px; 
            background-color: rgba(255, 255, 255, 0.1); 
            border-radius: 12px; 
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2); 
            backdrop-filter: blur(6px); 
            color: #fff; 
        }
        input, select, textarea { 
            width: calc(100% - 22px); 
            padding: 12px; 
            margin: 10px 0; 
            border: 1px solid rgba(255, 255, 255, 0.3); 
            border-radius: 4px; 
            background-color: rgba(255, 255, 255, 0.1); 
            color: #fff; 
            font-size: 14px; 
            box-sizing: border-box; 
        }
        select { 
            background-color: rgba(255, 255, 255, 0.3); /* Lighter background */
            color: #000; /* Darker text color for visibility */
        }
        option {
            background-color: #fff; /* Even lighter option background */
            color: #000; /* Darker text color */
        }
        input:focus, select:focus, textarea:focus { 
            outline: none; 
            border-color: #76a8ff; 
        }
        input[type="submit"] { 
            background-color: #356abc; 
            color: white; 
            border: none; 
            cursor: pointer; 
            font-size: 16px; 
            transition: background-color 0.3s ease, box-shadow 0.3s ease; 
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2); 
        }
        input[type="submit"]:hover { 
            background-color: #2a4e7e; 
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.3); 
        }
        label { 
            font-size: 16px; 
            margin-top: 10px; 
            display: block; 
        }
    </style>
</head>
<body>

    <div class="header">
        <h1>Insert Payment Information</h1>
    </div>

    <div class="form-container">
        <form action="payment" method="post">
            <label for="student_id">Student ID:</label>
            <input type="text" id="student_id" name="student_id" required>

            <label for="payment_amount">Payment Amount:</label>
            <input type="number" step="0.01" id="payment_amount" name="payment_amount" required>

            <label for="payment_date">Payment Date:</label>
            <input type="date" id="payment_date" name="payment_date" required>

            <label for="payment_method">Payment Method:</label>
            <select id="payment_method" name="payment_method" required>
                <option value="Credit Card">Credit Card</option>
                <option value="PayPal">PayPal</option>
                <option value="Bank Transfer">Bank Transfer</option>
                <option value="Cash">Cash</option>
                <option value="Debit Card">Debit Card</option>
            </select>

            <label for="payment_status">Payment Status:</label>
            <select id="payment_status" name="payment_status" required>
                <option value="Completed">Completed</option>
                <option value="Pending">Pending</option>
                <option value="Failed">Failed</option>
            </select>

            <label for="receipt_number">Receipt Number:</label>
            <input type="text" id="receipt_number" name="receipt_number" required>

            <label for="payment_reference">Payment Reference:</label>
            <input type="text" id="payment_reference" name="payment_reference">

            <label for="payment_notes">Payment Notes:</label>
            <textarea id="payment_notes" name="payment_notes" rows="4"></textarea>

            <input type="submit" name="submit" value="Submit Payment Information">
        </form>
    </div>

    <div class="footer">
        <p>&copy; 2024 School Information Management System | All Rights Reserved</p>
    </div>

</body>
</html>
