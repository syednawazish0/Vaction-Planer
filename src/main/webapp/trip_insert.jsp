<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Choose your trip</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

</head>
<body style="background-image: url('ladakh.jpg');">
<div align="center">
<h1 class="text-warning">Book your Trip here..</h1>
</div>
<div align="center">
<form action="insert_trip" class="form-group">
<table class="font-weight-bold">
<tr>
<td>Where do you want to go?</td>
<td>
<select name="city" id="city">
  <option value="Delhi">Delhi</option>
  <option value="Jaipur">Jaipur</option>
  <option value="Kerala">Kerala</option>
  <option value="Manali">Manali</option>
  <option value="Shimla">Shimla</option>
  <option value="Kashmir">Kashmir</option>
</select>
</td>
</tr>
<tr><td></td></tr>
<tr>
<td>Select your ride?</td>
<td>
<select name="ride" id="ride">
  <option value="Train">Train</option>
  <option value="Bus">Bus</option>
  <option value="Car">Car</option>
</select>
</td>
</tr>
<tr><td></td></tr>
<tr><td>From which date?</td><td><input type="date" name="from_date" required></td></tr>
<tr><td></td></tr>
<tr><td>To which date?</td><td><input type="date" name="to_date" required></td></tr>
<tr><td></td></tr>
<tr><td>How many people you are?</td><td><input type="text" name="number_of_guests" required></td></tr>
<tr><td></td></tr>
<tr><td>Enter your name </td><td><input type="text" name="name" required></td></tr>
<tr><td></td></tr>
<tr><td>Contact number </td><td><input type="text" name="contact" required></td></tr>
<tr><td></td></tr>
</table>
<br>
<input type="submit" value="Book My Trip" class="btn btn-primary btn-lg">
</form>
</div>
</body>
</html>