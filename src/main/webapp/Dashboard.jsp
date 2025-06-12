<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="com.digitalbd.Helper,com.digitalbd.*,java.sql.ResultSet,AllLayout.*" %>
<%@ include file="header.jsp" %>

<%
String message = "";
    // Check if the user is logged in by checking the session
    String userId = null;
    if(session.getAttribute("user_id") != null){
        userId = (String) session.getAttribute("user_id");
    } else {
        // Redirect to login page if the user is not logged in
        response.sendRedirect("Login.jsp");
        return;  // Stop further execution
    }
    
    // Initialize the User object using the userId (ensure your User class has this constructor)
    User user = new User(userId);
    
    // Check if user data is null or not loaded properly
    if (user == null) {
        message = "User data could not be fetched.";
     // Handle case where the user object could not be fetched (perhaps invalid userId)
    }
%>

<div class="dashboard">
    <!-- Personal Information Box -->
    <div class="box personal_info mb-5">
        <h2 class="box_title">Personal Information</h2>
        <table class="table table-bordered">
            <tr>
                <td><strong>Full Name</strong></td>
                <td><%= (user != null) ? user.name : "Not Available" %></td>
            </tr>
            <tr>
                <td><strong>Email Address</strong></td>
                <td><%= (user != null) ? user.email : "Not Available" %></td>
            </tr>
            <tr>
                <td><strong>Cell Phone Number</strong></td>
                <td><%= (user != null) ? user.phone : "Not Available" %></td>
            </tr>
            <tr>
                <td><strong>Address</strong></td>
                <td><%= (user != null) ? user.address : "Not Available" %></td>
            </tr>
        </table>
    </div>

    <!-- Successfully Purchased Ticket Information -->
    <div class="box successfully_purchse_ticket">
        <h2 class="box_title">Successful Purchase Information</h2>
        <table class="table table-bordered">
            <tr>
                <td>Bus Name</td>
                <td>Coach/Class</td>
                <td>Purchase Date</td>
                <td>Journey Date</td>
                <td>Station From</td>
                <td>Station To</td>
                <td>Total Seat</td>
                <td>Option</td>
            </tr>
            <%
                // Initialize Booking object and fetch booked tickets for the user
                Booking booking = new Booking();
                ResultSet bookedTicket = booking.FindByUser(user.id); // Ensure this method is correct and returns ResultSet
                
                while(bookedTicket.next()){
                    // Get destination and train info
                    Destination tempDestination = new Destination(bookedTicket.getString("destination_id"));
                    trains trnTemp = new trains(tempDestination.train_id);
                    Station stationFromTemp = new Stations().getStation(tempDestination.station_from);
                    Station stationToTemp = new Stations().getStation(tempDestination.station_to);
            %>
                <tr>
                    <td><%= trnTemp.name %></td>
                    <td><%= trnTemp.type %></td>
                    <td><%= bookedTicket.getString("booking_date") %></td>
                    <td><%= bookedTicket.getString("journey_date") %></td>
                    <td><%= stationFromTemp.name %></td>
                    <td><%= stationToTemp.name %></td>
                    <td><%= bookedTicket.getString("number_of_seat") %></td>
                    <td><a class="btn btn-success btn-sm">Print</a></td>
                </tr>
            <%
                }
            %>
        </table>
    </div>
</div>

