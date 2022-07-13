<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.*" %>
    <%@ page import="com.example.demo.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Booked Trip</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

</head>
<body>
<div align="center" class="p-3 mb-2 bg-info text-white">
<h1>Hello!! Here are all trips..</h1>
</div>

<%
List<Trip> t = (List<Trip>)request.getAttribute("list");
%>
<div align="center">
<table class="table table-hover" border="1">
<tr class="thead-dark"><th>Trip Id</th><th>City</th><th>From</th><th>To</th><th>Number of People</th><th>Name</th><th>Contact</th></tr>
<%for (Trip trip : t){ %>
<tr><td><%=trip.getTrip_id() %></td><td><%=trip.getCity() %></td><td><%=trip.getFrom_date() %></td><td><%=trip.getTo_date() %></td><td><%=trip.getNumber_of_guests() %></td><td><%=trip.getName() %></td><td><%=trip.getContact() %></td></tr>
<%} %>

</table>
</div>
<div align="right">
<form action="trip_delete_by_id.jsp">
<input type="submit" value="Cancel Trip" class="btn btn-outline-danger">
</form>
</div>
<div align="left">
<form action="home.jsp">
<input type="submit" value="Go Back to Home Page" class="btn btn-primary">
</form>
</div>
</body>
</html>