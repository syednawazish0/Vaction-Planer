</div><%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Home</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">

</head>
<body style="background-image: url('homepage.jpg');">
<div class="p-3 mb-2 bg-info text-white" ">
<marquee scrollamount="15"><h1>Welcome to VacationPlanner!!</h1></marquee>
</div>
<div class="container">
<nav class="navbar navbar-dark bg-dark" style="padding-left: 1.5rem; padding-top: 1.5rem; padding-right: 1.5rem">
<form action="home.jsp">
<input type="submit" value="HOME" class="btn btn-outline-light btn-lg" >
</form>
<form action="trip_insert.jsp">
<input type="submit" value="PLAN MY VACATION" class="btn btn-outline-light btn-lg">
</form>
<form action="trip_retrieve_by_id.jsp">
<input type="submit" value="CHECK MY TRIPS" class="btn btn-outline-light btn-lg">
</form>
<form action="about_us.jsp">
<input type="submit" value="ABOUT US" class="btn btn-outline-light btn-lg" >
</form>
<form action="user_logout.jsp">
<input type="submit" value="LOG OUT" class="btn btn-outline-light btn-lg">
</form>
</nav>
</div>

<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" ></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" ></script>

</body>
</html>