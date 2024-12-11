package com.payment;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/PaymentDelete")
public class PaymentDelete extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Retrieve parameters from the request
        String paymentIdStr = request.getParameter("payment_id");

        try {
            // Parse paymentId to integer
            int paymentId = Integer.parseInt(paymentIdStr);

            // Delete payment from the database
            boolean isDeleted = PaymentDbUtil.deletePayment(paymentId);

            // Redirect based on the result of deletion
            if (isDeleted) {
                response.sendRedirect("paymentDeltSuccessful.jsp"); // Redirect to success page
            } else {
                response.sendRedirect("paymentDeltUnsuccessful.jsp"); // Redirect to failure page
            }
        } catch (NumberFormatException e) {
            // Handle case where payment_id is not a valid integer
            request.setAttribute("errorMessage", "Invalid payment ID format: " + e.getMessage());
            response.sendRedirect("paymentDeltUnsuccessful.jsp"); // Redirect to failure page
        } catch (Exception e) {
            // Handle any other exceptions
            request.setAttribute("errorMessage", "An error occurred while deleting the payment: " + e.getMessage());
            response.sendRedirect("paymentDeltUnsuccessful.jsp"); // Redirect to failure page on error
        }
    }
}
