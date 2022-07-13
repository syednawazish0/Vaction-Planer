<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.example.demo.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>trip booked successfully</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

</head>
<body style="background-image: url('river.jpg');">
<div align="center" class="p-3 mb-2 bg-success text-white">
<h1>Congratulations!! You have successfully booked your trip to <%=request.getParameter("city") %></h1>
<h2 >Wish you safe and a happy journey!! You will have a Awesome Vacation!!</h2>
</div>
<%
String city = request.getParameter("city");
String from_date = request.getParameter("from_date");
String to_date = request.getParameter("to_date");
String number_of_guests = request.getParameter("number_of_guests");
String name = request.getParameter("name");
String contact = request.getParameter("contact");
%>
<div align="center">
<table class="table-hover font-weight-bold" cellpadding="10%" border="1">
	<thead>
		<tr>
			<th>City</th>
			<th>From</th>
			<th>To</th>
			<th>People</th>
			<th>Name</th>
			<th>Contact</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td><%=city %></td>
			<td><%=from_date %></td>
			<td><%=to_date %></td>
			<td><%=number_of_guests %></td>
			<td><%=name %></td>
			<td><%=contact %></td>
		</tr>
	</tbody>
</table>
</div>
<div align="center">
<br>
<form action="home.jsp">
<input type="submit" value="Go to Home" class="btn btn-primary btn-lg">
</form>
</div>
</body>
</html>