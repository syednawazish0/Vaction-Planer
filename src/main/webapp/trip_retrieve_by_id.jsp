<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Get all trips</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

</head>
<body style="background-image: url('kerala.jpg');">
<div align="center">
<h1 class="text-info">Get Trip Details..</h1><br>
</div>
<div align="center">
<form action="retrieve_trip">
	<table>
	<tr><td>Enter the Trip Id:</td><td><input type="text" name="trip_id" required></td></tr>
	
	</table>
<br>
	<input type="submit" value="Get Trip Details" class="btn btn-primary btn-lg">
</form>
</div>
</body>
</html>