<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ page import="com.digitalbd.Helper,com.digitalbd.User,com.digitalbd.trains,java.util.*" %>
<%
    String message = "";
    if (request.getParameter("createTrain") != null) {
        trains trn = new trains();
        trn.name = request.getParameter("name");
        trn.code = request.getParameter("code");
        trn.type = request.getParameter("coach");
        trn.totalSeat = Integer.parseInt(request.getParameter("totalseat"));
        trn.Save();
        message = "Bus Created Successfully!";
    }
%>
<%@ include file="header.jsp" %>

<div class="container mt-5">
    <% if (!message.isEmpty()) { %>
        <div class="alert alert-success text-center text-black">
            <p><%= message %></p>
        </div>
    <% } %>
    <div class="card shadow-lg p-4">
        <h3 class="text-center mb-4 text-black">Bus Information</h3>
        <form action="Add.jsp" method="post">
            <div class="form-group mb-3">
                <label for="name" class="text-black">Bus Name</label>
                <input type="text" name="name" id="name" class="form-control text-black" placeholder="Enter Bus name" required>
            </div>
            <div class="form-group mb-3">
                <label for="code" class="text-black">Bus Code</label>
                <input type="text" name="code" id="code" class="form-control text-black" placeholder="Enter Bus code" required>
            </div>
            <div class="form-group mb-3">
                <label for="totalseat" class="text-black">Bus Seats</label>
                <input type="number" name="totalseat" id="totalseat" class="form-control text-black" placeholder="Enter total seats" required>
            </div>
            <div class="form-group mb-3">
                <label for="coach" class="text-black">Class</label>
                <select class="form-control text-black" name="coach" id="coach" required>
                    <% 
                        HashMap<String, String> coach = Helper.TrainsCoach();
                        for (Map.Entry<String, String> temp : coach.entrySet()) { 
                    %>
                        <option class="text-black" value="<%= temp.getKey() %>"><%= temp.getValue() %></option>
                    <% } %>
                </select>
            </div>
            <div class="text-center">
                <button class="btn btn-primary text-black" name="createTrain" type="submit"> Save Bus Details</button>
            </div>
        </form>
    </div>
</div>

<style>
    /* Ensure all text is black */
    body, label, p, h3, .form-control, .alert {
        color: black !important;
    }

    /* Override Bootstrap styles */
    .btn {
        color: black !important;
    }
</style>
