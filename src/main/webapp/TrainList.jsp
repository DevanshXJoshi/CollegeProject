<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ page import="com.digitalbd.Helper,com.digitalbd.trains,java.util.ArrayList,AllLayout.Train,java.util.Iterator" %>
<%@ include file="header.jsp" %>

<%
    trains trn = new trains();
    if (request.getParameter("delete") != null) {
        String trnId = request.getParameter("delete");
        trn.Delete(trnId);
    }
    ArrayList<Train> busList = trn.getAll();
    Iterator<Train> busIterator = busList.iterator();
%>

<div class="container thiscon mt-4">
    <div class="d-flex justify-content-between align-items-center">
        <h2 class="text-primary">All Bus List</h2>
        <a class="btn btn-success" href="Add.jsp">Create Bus</a>
    </div>
    <br>
    <div class="card p-4 shadow-lg">
        <table class="table table-striped table-hover">
            <thead class="bg-dark text-white">
                <tr>
                    <th>Bus Code</th>
                    <th>Name</th>
                    <th>Coach</th>
                    <th>Total Seat</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <% while (busIterator.hasNext()) {
                    Train bus = busIterator.next(); %>
                    <tr class="text-black">
                        <td><%= bus.code %></td>
                        <td><%= bus.name %></td>
                        <td><%= bus.type %></td>
                        <td><%= bus.totalSeat %></td>
                        <td>
                            <a href="?delete=<%= bus.id %>" class="btn btn-sm btn-danger">Delete</a>
                        </td>
                    </tr>
                <% } %>
            </tbody>
        </table>
    </div>
</div>
	

<style>
    .thiscon {
        max-width: 900px;
    }
    .card {
        border-radius: 10px;
    }
    .table {
        margin-top: 20px;
    }
     tbody tr {
        color: #000000 !important; /* Ensures text remains black */
    }
    .btn-success {
        transition: 0.3s;
    }
    .btn-success:hover {
        background-color: #218838;
    }
    .btn-danger {
        transition: 0.3s;
    }
    .btn-danger:hover {
        background-color: #c82333;
    }
</style>