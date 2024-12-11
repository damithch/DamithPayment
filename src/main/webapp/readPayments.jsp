<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.payment.PaymentDbUtil" %>
<%@ page import="com.payment.Payment" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Read Payment Information</title>
    <style>
        body { 
            font-family: 'Arial', sans-serif; 
            background: linear-gradient(135deg, #1a2b49, #356abc, #5c7fbc); 
            margin: 0; 
            padding: 20px; 
            color: #fff; 
            display: flex; 
            flex-direction: column; 
            min-height: 100vh; 
        }
        h1 { 
            color: #fff; 
            text-align: center; 
            margin-top: 20px;
            font-size: 2.2rem;
        }
        table { 
            width: 100%; 
            border-collapse: collapse; 
            margin-top: 20px; 
            background-color: rgba(255, 255, 255, 0.1); 
            border-radius: 12px; 
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2); 
            overflow: hidden; 
            backdrop-filter: blur(6px); 
        }
        th, td { 
            border: 1px solid rgba(255, 255, 255, 0.2); 
            padding: 10px 12px; 
            text-align: center; 
            color: #fff; 
            font-size: 14px;
        }
        th { 
            background-color: rgba(42, 78, 126, 0.8); 
            color: #ffffff; 
            font-weight: bold; 
        }
        tr:hover { 
            background-color: rgba(255, 255, 255, 0.2); 
        }
        .back-button { 
            margin-top: 20px; 
            display: inline-block; 
            padding: 12px 20px; 
            background-color: #4c5f78; 
            color: white; 
            text-decoration: none; 
            border-radius: 8px; 
            text-align: center; 
            font-size: 16px; 
            transition: background-color 0.3s ease, box-shadow 0.3s ease;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }
        .back-button:hover { 
            background-color: #3d4f66; 
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.3); 
        }
    </style>
</head>
<body>
    <h1>Payment Information</h1>
    <table>
        <tr>
            <th>ID</th>
            <th>Student ID</th>
            <th>Payment Amount</th>
            <th>Payment Date</th>
            <th>Payment Method</th>
            <th>Payment Status</th>
            <th>Receipt Number</th>
            <th>Payment Reference</th>
            <th>Payment Notes</th>
        </tr>
        <%
            List<Payment> payments = PaymentDbUtil.getAllPayments(); // Fetching all payment records
            if (payments != null && !payments.isEmpty()) {
                for (Payment payment : payments) {
        %>
            <tr>
                <td><%= payment.getId() %></td>
                <td><%= payment.getStudentId() %></td>
                <td><%= payment.getPaymentAmount() %></td>
                <td><%= payment.getPaymentDate() %></td>
                <td><%= payment.getPaymentMethod() %></td>
                <td><%= payment.getPaymentStatus() %></td>
                <td><%= payment.getReceiptNumber() %></td>
                <td><%= payment.getPaymentReference() %></td>
                <td><%= payment.getPaymentNotes() %></td>
            </tr>
        <%
                }
            } else {
        %>
            <tr>
                <td colspan="9">No payment records found.</td>
            </tr>
        <%
            }
        %>
    </table>
    <a class="back-button" href="PaymentDashBoard.jsp">Back to Dashboard</a>
</body>
</html>
