package com.payment;

import java.io.IOException;
import java.math.BigDecimal;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/payment")
public class PaymentInsert extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        // Retrieve parameters from the request
        String studentId = request.getParameter("student_id");
        String paymentAmountStr = request.getParameter("payment_amount");
        String paymentDate = request.getParameter("payment_date");
        String paymentMethod = request.getParameter("payment_method");
        String paymentStatus = request.getParameter("payment_status");
        String receiptNumber = request.getParameter("receipt_number");
        String paymentReference = request.getParameter("payment_reference");
        String paymentNotes = request.getParameter("payment_notes");

        try {
            // Convert payment amount to BigDecimal
            BigDecimal paymentAmount = new BigDecimal(paymentAmountStr);

            // Insert payment into the database
            boolean isInserted = PaymentDbUtil.insertPayment(studentId, paymentAmount, paymentDate, paymentMethod, paymentStatus, receiptNumber, paymentReference, paymentNotes);

            // Forward to the appropriate JSP based on the result
            String targetJSP = isInserted ? "success.jsp" : "unsuccess.jsp";
            RequestDispatcher dispatcher = request.getRequestDispatcher(targetJSP);
            dispatcher.forward(request, response);
        } catch (NumberFormatException e) {
            // Handle number format exception for payment amount
            request.setAttribute("errorMessage", "Invalid payment amount format.");
            RequestDispatcher dispatcher = request.getRequestDispatcher("error.jsp");
            dispatcher.forward(request, response);
        } catch (Exception e) {
            // Handle any other exceptions
            request.setAttribute("errorMessage", "An error occurred while processing the payment: " + e.getMessage());
            RequestDispatcher dispatcher = request.getRequestDispatcher("error.jsp");
            dispatcher.forward(request, response);
        }
    }
}
