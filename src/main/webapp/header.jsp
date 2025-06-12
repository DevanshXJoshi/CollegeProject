<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ page import="com.digitalbd.Helper,com.digitalbd.User" %>
<%
boolean isLogin = false;
if (session.getAttribute("isUserLogin") != null) {
    isLogin = (boolean) session.getAttribute("isUserLogin");
}
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/assets/owl.carousel.min.css"/>
    <link rel="stylesheet" href="css/assets/owl.theme.default.css"/>
    <link rel="stylesheet" href="css/main.css"/>
    <style>
        .header {
            background-color: #007bff;
            padding: 15px 0;
            color: white;
        }
        .nav-link {
            color: white !important;
        }
        .nav-link:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="header">
        <div class="container d-flex justify-content-between align-items-center">
            <h3 class="m-0">DK Travellers</h3>
            <nav>
                <ul class="nav">
                    <% if (isLogin) { 
                        String userId = (String) session.getAttribute("user_id");
                        User user = new User(userId);
                        if (user.rule.equals("admin")) { %>
                            <li class="nav-item"><a href="Dashboard.jsp" class="nav-link">Dashboard</a></li>
                            <li class="nav-item"><a href="TrainList.jsp" class="nav-link">Buses</a></li>
                            <li class="nav-item"><a href="StationList.jsp" class="nav-link">Stations</a></li>
                            <li class="nav-item"><a href="Destinations.jsp" class="nav-link">Destinations</a></li>
                            <li class="nav-item"><a href="Logout" class="nav-link">Logout</a></li>
                        <% } else { %>
                            <li class="nav-item"><a href="Dashboard.jsp" class="nav-link">Dashboard</a></li>
                            <li class="nav-item"><a href="Purchase.jsp" class="nav-link">Purchase Ticket</a></li>
                            <li class="nav-item"><a href="Logout" class="nav-link">Logout</a></li>
                        <% } 
                    } else { %>
                        <li class="nav-item"><a href="Register.jsp" class="nav-link">Register</a></li>
                        <li class="nav-item"><a href="Login.jsp" class="nav-link">Login</a></li>
                    <% } %>
                </ul>
            </nav>
        </div>
    </div>
    <section class="main_contents">
        <div class="container">
            <div class="main_contents_inner py-5">
