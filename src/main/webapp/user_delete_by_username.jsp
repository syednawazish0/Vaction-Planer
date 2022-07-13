<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete user by username</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

</head>
<body style="background-image: url('kutchfest.jpg');">
<div align="center">
<h1 class="text-warning">Delete the User..</h1>
</div>
<div align="center">
<form action="delete_user">
<table>
<tr><td>Enter the Username : </td><td><input type="text" name="username"></td></tr>
</table>
<br>
<input type="submit" value="Delete" class="btn btn-outline-warning btn-lg">
</form>
</div>
</body>
</html>