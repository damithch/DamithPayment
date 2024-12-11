<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Delete Payment Information</title>
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
        .header h1 {
            margin: 0;
            font-size: 24px; 
        }
        .footer { 
            margin-top: auto;
        }
        .form-container { 
            max-width: 90%; /* Adjusted for responsiveness */
            margin: 40px auto; 
            padding: 20px; 
            background-color: rgba(255, 255, 255, 0.1); 
            border-radius: 12px; 
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2); 
            backdrop-filter: blur(6px); 
            color: #fff;
            flex: 1; 
        }
        input { 
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
        input:focus { 
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
        .alert { 
            margin-top: 20px; 
            padding: 10px; 
            background-color: rgba(248, 215, 218, 0.8); 
            color: #721c24; 
            border: 1px solid rgba(245, 198, 203, 0.8); 
            border-radius: 5px; 
            text-align: center; 
        }
    </style>
</head>
<body>

    <div class="header">
        <h1>Delete Payment Information</h1>
    </div>

    <div class="form-container">
        <form action="PaymentDelete" method="post">
            <label for="payment_id">Payment ID:</label>
            <input type="text" id="payment_id" name="payment_id" required>

            <p>Are you sure you want to delete this payment? This action cannot be undone.</p>

            <input type="submit" name="submit" value="Delete Payment Information">
        </form>
        
        <% if (request.getAttribute("deleteMessage") != null) { %>
            <div class="alert">
                <p><%= request.getAttribute("deleteMessage") %></p>
            </div>
        <% } %>
    </div>

    <div class="footer">
        <p>&copy; 2024 School Information Management System | All Rights Reserved</p>
    </div>

</body>
</html>
