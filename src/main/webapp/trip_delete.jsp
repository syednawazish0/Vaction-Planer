<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Trip deleted</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

</head>
<body style="background-image: url('jaipurfort.jpg');">
<div align="center" class="p-3 mb-2 bg-danger text-white">
<h1>Trip has been Cancelled!!</h1>
</div>
<div align="center">
<form action="trip_retrieve_by_all.jsp">
<input type="submit" value="Get All Remmaining Trips" class="btn btn-outline-primary btn-lg"><br>
</form>
</div>
<br>
<div align="center">
<form action="trip_delete_by_id.jsp">
<input type="submit" value="Cancel More Trips" class="btn btn-outline-danger btn-lg">
</form>
</div>
</body>
</html>