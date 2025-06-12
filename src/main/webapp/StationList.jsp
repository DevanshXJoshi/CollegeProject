<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ page import="AllLayout.*,com.digitalbd.trains,com.digitalbd.Stations,java.util.ArrayList,java.util.Iterator" %>
<%@ include file="header.jsp" %>

<%
    Stations sts = new Stations();
    if (request.getParameter("createStation") != null) {
        sts.name = request.getParameter("name");
        sts.contact = request.getParameter("contact");
        sts.address = request.getParameter("address");
        sts.Save();
    }

    ArrayList<Station> stationList = sts.getAll();
    Iterator<Station> stationIterator = stationList.iterator();
%>

<div class="container mt-4">
    <div class="card p-4 shadow-lg">
        <div class="row">
            <!-- Create Station Form -->
            <div class="col-md-4">
                <h3 class="text-primary">Create New Station</h3>
                <form action="StationList.jsp" method="post">
                    <div class="mb-3">
                        <label class="form-label">Name</label>
                        <input type="text" name="name" class="form-control" placeholder="Enter station name" required>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Contact</label>
                        <input type="text" name="contact" class="form-control" placeholder="Enter contact number" required>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Address</label>
                        <input type="text" name="address" class="form-control" placeholder="Enter station address" required>
                    </div>
                    <button class="btn btn-primary w-100" name="createStation" value="submit" type="submit">Save</button>
                </form>
            </div>

            <!-- Station List -->
            <div class="col-md-8">
                <h3 class="text-primary">All Stations</h3>
                <div class="table-responsive">
                    <table class="table table-bordered table-striped">
                        <thead class="bg-dark text-white">
                            <tr>
                                <th>Name</th>
                                <th>Contact</th>
                                <th>Address</th>
                            </tr>
                        </thead>
                        <tbody>
                            <% while (stationIterator.hasNext()) {
                                Station st = stationIterator.next(); %>
                                <tr>
                                    <td class="text-black"><%= st.name %></td>
                                    <td class="text-black"><%= st.contact %></td>
                                    <td class="text-black"><%= st.address %></td>
                                </tr>
                            <% } %>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>

<style>

    .card {
        border-radius: 10px;
        background: #ffffff;
        box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
    }
    .table {
        margin-top: 20px;
    }
    thead {
        background-color: #0a4275;
        color: white;
    }
    tbody tr {
        color: #000000 !important;
    }
    tbody tr:nth-child(odd) {
        background-color: #e3f2fd;
    }
    tbody tr:nth-child(even) {
        background-color: #f8f9fa;
    }
    tbody tr:hover {
        background-color: #d0e1ff;
        transition: 0.3s ease;
    }
    .btn-primary {
        background-color: #0d6efd;
        border-color: #0d6efd;
        transition: all 0.3s ease;
    }
    .btn-primary:hover {
        background-color: #0a58ca;
        border-color: #084298;
    }
</style>
