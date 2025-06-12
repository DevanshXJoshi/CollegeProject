<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.util.*, com.digitalbd.*, AllLayout.*" %>

<%
    // Retrieve parameters from the request
    String totalSeat = request.getParameter("totalSeat");
    String date = request.getParameter("date");
    String destination = request.getParameter("destination");
    String actionType = request.getParameter("actionType");

    // Initialize variables
    Double bankCharge = 0.0;
    String userId = (String) session.getAttribute("user_id");

    // Debugging output
    out.println("<div class='debug'>Debug Info: userId=" + userId + ", destination=" + destination + ", date=" + date + ", totalSeat=" + totalSeat + ", actionType=" + actionType + "</div>");

    // Check if all required parameters are present
    if (totalSeat != null && date != null && destination != null && "search".equals(actionType)) {
        Booking booking = new Booking();
        HashMap<String, String> tickDetails = booking.Find(destination, date, totalSeat);

        if (tickDetails.get("is_avaiable") != null && tickDetails.get("is_avaiable").equals("yes")) {
            Double totalamount = Double.parseDouble(tickDetails.get("fare")) * Double.parseDouble(totalSeat);

            Stations tempStation = new Stations();
            Station stationFrom = tempStation.getStation(tickDetails.get("from"));
            Station stationTo = tempStation.getStation(tickDetails.get("to"));
%>
        <div class="ticket_info">
            <h2>Ticket Details</h2>
            <table class="table">
                <tr>
                    <td>
                        <ul>
                            <li><strong>Journey Date:</strong> <span><%= tickDetails.get("j_date") + " " + tickDetails.get("time") %></span></li>
                            <li><strong>From Station:</strong> <span><%= stationFrom.name %></span></li>
                            <li><strong>To Station:</strong> <span><%= stationTo.name %></span></li>
                        </ul>
                    </td>
                    <td>
                        <ul>
                            <li><strong>Train Number:</strong> <span><%= tickDetails.get("train_name") %></span></li>
                            <li><strong>Class/Coach:</strong> <span><%= tickDetails.get("train_type") %></span></li>
                            <li><strong>Total Seat:</strong> <span><%= totalSeat %></span></li>
                        </ul>
                    </td>
                    <td>
                        <ul>
                            <li><strong>Fare:</strong> <span><%= totalamount + " " + Helper.Currency %></span></li>
                            <li><strong>Bank Charge:</strong> <span><%= bankCharge + " " + Helper.Currency %></span></li>
                            <li><strong>Total Amount:</strong> <span><%= (totalamount + bankCharge) + " " + Helper.Currency %></span></li>
                        </ul>
                    </td>
                </tr>
            </table>
           <div class="rs_btn_sections">
			    <!-- Start of the form -->
			    <form action="<%= request.getRequestURI() %>" method="get" class="ticket_confirm_form">
			        <input type="hidden" name="actionType" value="ticketConfirm">
			        <input type="hidden" name="date" value="<%= date %>">
			        <input type="hidden" name="totalSeat" value="<%= totalSeat %>">
			        <input type="hidden" name="destination" value="<%= destination %>">
			        
			        <!-- Submit Button -->
			        <button type="submit" class="btn btn-success">Confirm/Book Now</button>
			    </form>
			    <!-- End of the form -->
</div>

        </div>
<%
        } else {
%>
        <div class="alert alert-danger text-center">
            No tickets available for the selected date and destination.
        </div>
<%
        }
    } else {
        // Handle booking request
        String destinationId = request.getParameter("destination");
        boolean isError = false;
        String message = "";
        Destination destObj = null;

        // Validate destinationId
        if (destinationId == null || destinationId.trim().isEmpty()) {
            isError = true;
            message = "Destination ID is missing.";
        } else {
            destObj = new Destination(destinationId);
        }

        // Initialize booking object
        Booking booking = new Booking();

        try {
            if (destObj != null && !booking.IsAvailable(destObj, date, totalSeat)) {
                isError = true;
                message = "Seat is not available!";
            }
        } catch (Exception e) {
            isError = true;
            message = "Error checking seat availability: " + e.getMessage();
            e.printStackTrace();
        }

        // Display error message if there's an issue
        if (isError) {
%>
        <div class="alert alert-danger text-center">
            <%= message %>
        </div>
<%
        } else {
                if (booking != null && destObj != null && userId != null) {
                    long bookedId = booking.BookNow(destObj, userId, date, totalSeat);
%>
        <div class="ticket_info">
            <h2>Congratulations! Your ticket has been booked.</h2>
            <p class="text-center">Please pay your ticket amount and print your ticket from the Dashboard page.</p>
        </div>
        <%@ include file="PrintTicket.jsp" %>
<%
                } else {
%>
        <div class="alert alert-danger text-center">
            Error: Booking process failed due to invalid input.
        </div>
<%
                }
            
        }
    }
%>
<%@ include file="PrintTicket.jsp" %>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

