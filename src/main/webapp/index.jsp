<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome to VacationPlanner</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

</head>
<body style="background-image: url('kerala.jpg');">
<div align="center">
<h1 class="text-success">Welcome to VacationPlanner!!</h1>
<h3>Plan your vacation with us and have fun.</h3><br>
</div>
<div align="center">
<form action="user_login.jsp">
<input type="submit" value="User Login" class="btn btn-dark btn-lg">
</form>
<br>
<form action="user_insert.jsp">
<input type="submit" value="Register User" class="btn btn-dark btn-lg">
</form>
<br>
<form action="admin_login.jsp">
<input type="submit" value="Admin Login" class="btn btn-secondary">
</form>
</div>
</body>
</html>