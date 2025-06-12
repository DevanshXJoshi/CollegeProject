<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ include file="header.jsp" %>
<div class="container mt-4">
    <div class="card p-4 shadow-lg">
        <h2 class="text-center text-primary">Station Information</h2>
        <form action="<%= Helper.baseUrl %>Register.jsp" method="post">
            <div class="form-group">
                <label>Station Name</label>
                <input type="text" name="station_name" class="form-control" required>
            </div>
            <div class="form-group">
                <label>Address</label>
                <input type="text" name="address" class="form-control" required>
            </div>
            <div class="form-group">
                <label>Contact</label>
                <input type="text" name="contact" class="form-control" required>
            </div>
            <div class="text-center mt-3">
                <button class="btn btn-success" name="submit" type="submit">Save</button>
            </div>
        </form>
    </div>
</div>

<style>
    .container {
        max-width: 500px;
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