<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Log in</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body style="background-image: url('jaipurfort.jpg');">
<div align="center">
<h1>Please Login here to plan your trip.</h1><br>
</div>
<div align="center">
<form action="login">
<table>
<tr><td>Username : </td><td><input type="text" name="username" required></td></tr>
<tr><td></td><td></td></tr>
<tr><td>Password : </td><td><input type="password" name="password" required></td></tr>
</table>
<br>
<input type="submit" value="Login" class="btn btn-primary">
<br>
</form>
</div>
<div align="center">
<h3>if login failed , register on the below link</h3>
<h3><a href="user_insert.jsp">register here..</a></h3>
</div>
</body>
</html>