<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Deleted</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

</head>
<body style="background-image: url('beach.jpg');">
<div align="center" class="p-3 mb-2 bg-danger text-white">
<h1>User has been deleted!!</h1>
<h3>Now he/she will have no access to VacationPlanner.</h3>
</div>
<div align="center">
<form action="user_retrieve_all.jsp"><br>
<input type="submit" value="Get all remmaining Users" class="btn btn-primary btn-lg">
</form>
</div>
<br>
<div align="center">
<form action="user_delete_by_username.jsp">
<input type="submit" value="Delete More Users" class="btn btn-outline-danger btn-lg">
</form>
</div>
</body>
</html>