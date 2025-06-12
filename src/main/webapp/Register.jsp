<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ page import="com.digitalbd.User" %>
<%
    String message = "";
    if (request.getParameter("submit") != null) {
        User user = new User();
        user.name = request.getParameter("name");
        user.email = request.getParameter("email");
        user.phone = request.getParameter("phone");
        user.password = request.getParameter("password");
        user.address = request.getParameter("address");
        user.rule = "passenger";
        
        message = user.checkRegisValidation();
        if (message == null) {
            if (!request.getParameter("email_con").equals(user.email)) {
                message = "Email does not match.";
            } else if (!request.getParameter("password_con").equals(user.password)) {
                message = "Password does not match.";
            } else {
                if (user.registerUser()) {
                    session.setAttribute("islogin", true);
                    response.sendRedirect("Dashboard.jsp");
                    return;
                } else {
                    message = "User already exists with this phone number or email.";
                }
            }
        }
    }
%>

<%@ include file="header.jsp" %>
<div class="container mt-2">
    <div class="card p-4 shadow-lg">
        <h2 class="text-center text-primary">Register</h2>
        <% if (!message.isEmpty()) { %>
            <div class="alert alert-danger text-center"><%= message %></div>
        <% } %>
        <form action="Register.jsp" method="post">
            <div class="row">
                <div class="col-md-6">
                    <h4 class="text-secondary">Personal Information</h4>
                    <div class="form-group">
                        <label>Passenger Name*</label>
                        <input type="text" name="name" class="form-control" placeholder="Enter your full name" required>
                    </div>
                    <div class="form-group">
                        <label>Email Address*</label>
                        <input type="email" name="email" class="form-control" placeholder="Enter your email" required>
                    </div>
                    <div class="form-group">
                        <label>Re-Enter Email Address*</label>
                        <input type="email" name="email_con" class="form-control" placeholder="Confirm your email" required>
                    </div>
                    <div class="form-group">
                        <label>Password*</label>
                        <input type="password" name="password" class="form-control" placeholder="Create a password" required>
                    </div>
                    <div class="form-group">
                        <label>Re-Enter Password*</label>
                        <input type="password" name="password_con" class="form-control" placeholder="Confirm your password" required>
                    </div>
                </div>
                <div class="col-md-6">
                    <h4 class="text-secondary">Extra Information</h4>
                    <div class="form-group">
                        <label>Address</label>
                        <textarea name="address" class="form-control" placeholder="Enter your address"></textarea>
                    </div>
                    <div class="form-group">
                        <label>Phone Number</label>
                        <input type="text" name="phone" class="form-control" placeholder="Enter your phone number" required>
                    </div>
                </div>
                <div class="col-md-12 text-center mt-3">
                    <button class="btn btn-success" name="submit" type="submit">Register</button>
                    <a href="Login.jsp" class="btn btn-secondary">Login here</a>
                </div>
            </div>
        </form>
    </div>
</div>


<style>
    .container {
        max-width: 800px;
    }
    .card {
        border-radius: 10px;
    }
    .btn-success {
        transition: 0.3s;
    }
    .btn-success:hover {
        background-color: #28a745;
    }
</style>