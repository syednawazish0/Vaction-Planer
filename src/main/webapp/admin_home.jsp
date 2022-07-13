<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Home</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

</head>
<body style="background-image: url('Kutch.jpg');">
<div align="center" class="p-3 mb-2 bg-success text-white">
<h1>Welcome Home Admin</h1>
</div>
<div align="right">
<form action="admin_home.jsp">
<input type="submit" value="HOME" class="btn btn-outline-dark btn-lg">
</form>
<br>
<form action="trip_retrieve_by_all.jsp">
<input type="submit" value="Booked Trips" class="btn btn-outline-dark btn-lg">
</form>
<br>
<form action="user_retrieve_all.jsp">
<input type="submit" value="Get All Users" class="btn btn-outline-dark btn-lg">
</form>
<br>
<form action="home.jsp">
<input type="submit" value="Switch to User Mode" class="btn btn-outline-dark btn-lg">
</form>
<br>
<form action="admin_logout.jsp">
<input type="submit" value="LOG OUT" class="btn btn-outline-dark btn-lg">
</form>
</div>
</body>
</html>