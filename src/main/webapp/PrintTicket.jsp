<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<html>
<head>
    <title>Payment Information</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            margin: 50px;
        }
        .payment-container {
            border: 1px solid #ddd;
            padding: 20px;
            width: 300px;
            margin: auto;
            border-radius: 10px;
            box-shadow: 2px 2px 10px rgba(0, 0, 0, 0.1);
        }
        .qr-code img {
            width: 200px;
            height: 200px;
        }
    </style>
</head>
<body>

    <div class="payment-container">

        <div class="qr-code">
            <h3>Scan to Pay</h3>
            <img src="images/qr.png" alt="QR Code for Payment"> <!-- Replace with actual QR code image -->
        </div>

        <p>Use any UPI app or bank scanner to complete your payment.</p>
    </div>

</body>
</html>
