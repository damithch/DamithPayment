package com.payment;

import java.math.BigDecimal;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class PaymentDbUtil {

    // Database connection details
    private static final String DB_URL = "jdbc:mysql://localhost:3306/payment";
    private static final String DB_USER = "root";
    private static final String DB_PASSWORD = "damith";

    // Load MySQL JDBC Driver
    static {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            System.err.println("MySQL JDBC Driver not found.");
            e.printStackTrace();
        }
    }

    // Method to insert a payment into the database
    public static boolean insertPayment(String studentId, BigDecimal paymentAmount, String paymentDate,
                                        String paymentMethod, String paymentStatus, String receiptNumber,
                                        String paymentReference, String paymentNotes) {
        String insertQuery = "INSERT INTO payments (student_id, payment_amount, payment_date, payment_method, " +
                             "payment_status, receipt_number, payment_reference, payment_notes) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";

        try (Connection connection = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
             PreparedStatement preparedStatement = connection.prepareStatement(insertQuery)) {
             
            preparedStatement.setString(1, studentId);
            preparedStatement.setBigDecimal(2, paymentAmount);
            preparedStatement.setString(3, paymentDate);
            preparedStatement.setString(4, paymentMethod);
            preparedStatement.setString(5, paymentStatus);
            preparedStatement.setString(6, receiptNumber);
            preparedStatement.setString(7, paymentReference);
            preparedStatement.setString(8, paymentNotes);

            return preparedStatement.executeUpdate() > 0;

        } catch (SQLException e) {
            System.err.println("Database error: " + e.getMessage());
            return false;
        }
    }

    // Method to update an existing payment in the database
    public static boolean updatePayment(int paymentId, String studentId, BigDecimal paymentAmount, String paymentDate,
                                        String paymentMethod, String paymentStatus, String receiptNumber,
                                        String paymentReference, String paymentNotes) {
        String updateQuery = "UPDATE payments SET payment_amount = ?, payment_date = ?, payment_method = ?, " +
                             "payment_status = ?, receipt_number = ?, payment_reference = ?, payment_notes = ? " +
                             "WHERE payment_id = ?";

        try (Connection connection = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
             PreparedStatement preparedStatement = connection.prepareStatement(updateQuery)) {

            preparedStatement.setBigDecimal(1, paymentAmount);
            preparedStatement.setString(2, paymentDate);
            preparedStatement.setString(3, paymentMethod);
            preparedStatement.setString(4, paymentStatus);
            preparedStatement.setString(5, receiptNumber);
            preparedStatement.setString(6, paymentReference);
            preparedStatement.setString(7, paymentNotes);
            preparedStatement.setInt(8, paymentId);

            return preparedStatement.executeUpdate() > 0;

        } catch (SQLException e) {
            System.err.println("Database error: " + e.getMessage());
            return false;
        }
    }

    // Method to delete a payment from the database
    public static boolean deletePayment(int paymentId) {
        String deleteQuery = "DELETE FROM payments WHERE payment_id = ?";

        try (Connection connection = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
             PreparedStatement preparedStatement = connection.prepareStatement(deleteQuery)) {

            preparedStatement.setInt(1, paymentId);
            return preparedStatement.executeUpdate() > 0;

        } catch (SQLException e) {
            System.err.println("Database error: " + e.getMessage());
            return false;
        }
    }

    // Method to retrieve all payments from the database
    public static List<Payment> getAllPayments() {
        List<Payment> payments = new ArrayList<>();
        String selectQuery = "SELECT * FROM payments";

        try (Connection connection = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
             PreparedStatement preparedStatement = connection.prepareStatement(selectQuery);
             ResultSet resultSet = preparedStatement.executeQuery()) {

            while (resultSet.next()) {
                Payment payment = new Payment();
                // Assuming 'payment_id' is the column name for the primary key
                payment.setId(resultSet.getInt("payment_id")); // Assuming the column is payment_id
                payment.setStudentId(resultSet.getString("student_id"));
                payment.setPaymentAmount(resultSet.getBigDecimal("payment_amount"));
                payment.setPaymentDate(resultSet.getString("payment_date"));
                payment.setPaymentMethod(resultSet.getString("payment_method"));
                payment.setPaymentStatus(resultSet.getString("payment_status"));
                payment.setReceiptNumber(resultSet.getString("receipt_number"));
                payment.setPaymentReference(resultSet.getString("payment_reference"));
                payment.setPaymentNotes(resultSet.getString("payment_notes"));
                payments.add(payment);
            }
        } catch (SQLException e) {
            System.err.println("Database error: " + e.getMessage());
        }
        return payments;
    }
}
