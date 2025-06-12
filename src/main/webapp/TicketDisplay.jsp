<%@page import="java.util.*,AllLayout.*,com.digitalbd.*,AllLayout.*"%>
<%
ArrayList<HashMap<String, String>> trains = new ArrayList<HashMap<String, String>>();
trains trnObj = new trains();
String stationTo = request.getParameter("to");
String stationFrom = request.getParameter("from");
String sCoach = request.getParameter("coach");
String journey_date = request.getParameter("journey_date");
Station stationFromObj = new Station();
Station stationToObj = new Station();
if (stationTo != null || stationFrom != null) {
	trains = trnObj.SearchTrainFromTo(stationFrom, stationTo, sCoach);
	Stations tempStationsObj = new Stations();
	stationFromObj = tempStationsObj.getStation(stationFrom);
	stationToObj = tempStationsObj.getStation(stationTo);
}
%>

<%@ include file="header.jsp"%>
<div class="container mt-4">
    <form class="ticket_selecting_form p-4 bg-light shadow rounded" method="get" action="FindTicket.jsp">
        <h2 class="text-center text-primary mb-4">
            Train Route Showing For: <%=stationFromObj.name%> to <%=stationToObj.name%>
            <br><small class="text-secondary">Journey Date - <%=journey_date%></small>
        </h2>
        <table class="table table-bordered table-hover">
            <thead class="thead-dark">
                <tr>
                    <th>Serial</th>
                    <th>Bus No</th>
                    <th>Bus Name</th>
                    <th>Class</th>
                    <th>Departure Time</th>
                    <th>Unit Fare</th>
                    <th>Number Of Seat</th>
                    <th>Selection</th>
                </tr>
            </thead>
            <tbody>
            <% if(trains.size() > 0) { %>
                <% for (int i = 0; i < trains.size(); i++) {
                    HashMap<String, String> tempTrain = trains.get(i); %>
                    <tr>
                        <td><%= i + 1 %></td>
                        <td><%= tempTrain.get("code") %></td>
                        <td><%= tempTrain.get("name") %></td>
                        <td><%= tempTrain.get("coach") %></td>
                        <td><%= tempTrain.get("time") %></td>
                        <td><%= tempTrain.get("fare") + " " + Helper.Currency %></td>
                        <td>
                            <select name="total_seat" class="form-control total_seat_select">
                                <option value="1">01</option>
                                <option value="2">02</option>
                                <option value="3">03</option>
                                <option value="4">04</option>
                            </select>
                        </td>
                        <td>
                            <a href="javascript:;" class="btn btn-success rs_search_ticket" data-date="<%= journey_date %>" data-destination="<%= tempTrain.get("destination_id") %>">Search Ticket</a>
						</td>
					</tr>
				<% } %>
                <% } else { %>
                <tr><td colspan='8'>No Found</td></tr>
                <% } %>
			</tbody>
		</table>
	</form>
<div id="rs_ticket_result">
</div>
<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/owl.carousel.min.js"></script>
<script type="text/javascript" src="js/main.js"></script>
<style>
    .table th, .table td {
        text-align: center;
    }
    td{	
    	color: black;
    }
    .btn-success {
        transition: 0.3s;
    }
    .btn-success:hover {
        background-color: #28a745;
    }
</style>
