<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ include file="header.jsp" %>
<div class="container mt-4">
    <div class="card p-4 shadow-lg">
        <h2 class="text-center text-primary">Bus Information</h2>
        <form action="Register.jsp" method="post">
            <div class="form-group">
                <label>Select Bus</label>
                <select class="form-control">
                    <option value="tista_101">Tista</option>
                    <option value="tista_102">Tista</option>
                    <option value="tista_103">Tista</option>
                    <option value="tista_104">Tista</option>
                </select>
            </div>
            <div class="form-group">
                <label>Code</label>
                <input type="text" name="code" class="form-control" required>
            </div>
            <div class="form-group">
                <label>Total Seat</label>
                <input type="text" name="total_seat" class="form-control" required>
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