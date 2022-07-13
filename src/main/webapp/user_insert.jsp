<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register user</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body style="background-image: url('Kutch.jpg');">
<div align="center">
<h1 class="text-info">Register yourself here..</h1><br>
</div>
<div align="center">
<form action="insert">
<table>
<tr><td>Name : </td><td><input type="text" name="username" required></td></tr>
<tr><td></td><td></td></tr>
<tr><td>Password : </td><td><input type="password" name="password" required></td></tr>
<tr><td></td><td></td></tr>
<tr><td>Email : </td><td><input type="email" name="email" required></td></tr>
</table>
<br>
<input type="submit" value="Register" class="btn btn-primary">
</form>
</div>
</body>
</html>