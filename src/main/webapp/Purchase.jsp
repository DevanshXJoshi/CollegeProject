<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.*,com.digitalbd.*,AllLayout.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%
    Stations stations = new Stations();
    ArrayList<Station> allStations = stations.getAll();
%>
<%@ include file="header.jsp" %>
<div class="container thiscon mt-4">
    <div class="card p-4 shadow-lg">
        <h2 class="text-center text-primary">Purchase Ticket</h2>
        <form action="TicketDisplay.jsp" method="post">
            <div class="form-group">
                <label>Station From:</label>
                <select class="form-control" name="from">
                    <% for (Station stn : allStations) { %>
                        <option value="<%= stn.id %>"><%= stn.name %></option>
                    <% } %>
                </select>
            </div>
            <div class="form-group">
                <label>Journey Date:</label>
                <select class="form-control" name="journey_date">
                    <%
                    SimpleDateFormat dateFormat = new SimpleDateFormat("dd-MM-yyyy");
                    Calendar cal = Calendar.getInstance();
                    for (int i = 0; i < 10; i++) {
                        cal.add(Calendar.DAY_OF_YEAR, 1);
                        String tempDate = dateFormat.format(cal.getTime());
                    %>
                        <option value="<%= tempDate %>"><%= tempDate %></option>
                    <% } %>
                </select>
            </div>
            <div class="form-group">
                <label>Station To:</label>
                <select class="form-control" name="to">
                    <% for (Station stn : allStations) { %>
                        <option value="<%= stn.id %>"><%= stn.name %></option>
                    <% } %>
                </select>
            </div>
            <div class="form-group">
                <label>Coach Type:</label>
                <select class="form-control" name="coach">
                    <option value="any">Any Coach</option>
                    <% HashMap<String, String> coach = Helper.TrainsCoach();
                    for (Map.Entry<String, String> temp : coach.entrySet()) { %>
                        <option value="<%= temp.getKey() %>"><%= temp.getValue() %></option>
                    <% } %>
                </select>
            </div>
            <div class="text-center mt-3">
                <button class="btn btn-success" type="submit">Search</button>
            </div>
        </form>
    </div>
</div>

<style>
    .thiscon {
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