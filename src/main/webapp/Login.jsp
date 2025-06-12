<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ page import="com.digitalbd.User" %>
<%@ include file="header.jsp" %>

<%
    if (session.getAttribute("isUserLogin") != null && (boolean) session.getAttribute("isUserLogin")) {
        response.sendRedirect("Dashboard.jsp");
    }
    
    User user = new User();
    String message = "";
    String userName = null, passWord = null;
    long userId = 0;
    
    if (request.getParameter("submit") != null) {
        userName = request.getParameter("phone");
        passWord = request.getParameter("password");
        
        if (userName.isEmpty() || passWord.isEmpty()) {
            message = "User name and password required!";
        } else if ((userId = user.doLogin(userName, passWord)) > 0) {
            session.setAttribute("isUserLogin", true);
            user.setUserFromId(Long.toString(userId));
            user.setUserSession(session);
            response.sendRedirect("Dashboard.jsp");
        } else {
            message = "User ID or password not found!";
            session.invalidate();
        }
    }
%>

<div class="container mt-2">
    <div class="card p-4 shadow-lg">
        <h2 class="text-center text-primary">Login</h2>
        
        <% if (!message.isEmpty()) { %>
            <div class="alert alert-danger text-center"><%= message %></div>
        <% } %>
        
        <form action="Login.jsp" method="post">
            <div class="form-group">
                <label for="phone">Mobile* / Email</label>
                <input type="text" placeholder="Email" id="phone" name="phone" class="form-control" required>
            </div>
            
            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" placeholder="Password" id="password" name="password" class="form-control" required>
            </div>
            
            <div class="text-center mt-3">
                <button class="btn btn-success" name="submit" type="submit">Login</button>
                <a href="Register.jsp" class="btn btn-secondary">Register</a>
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