<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ page import="java.util.*" %>
    <%@ page import="com.example.demo.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Get all users</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

</head>
<body>
<div align="center" class="p-3 mb-2 bg-info text-white">
<h1>Below is the List of Users..</h1>
</div>
<%List<User> u = (List<User>)request.getAttribute("list"); %>
<div align="center">
<table class="table table-hover">
<tr><th>User name</th><th>Password</th><th>Email</th></tr>
<%for(User uu:u){ %>
<tr><td><%= uu.getUsername() %></td><td><%= uu.getPassword() %></td><td><%= uu.getEmail() %></td></tr>
<%} %>
</table>
</div>
<div align="right">
<form action="user_delete_by_username.jsp">
<input type="submit" value="Delete User" class="btn btn-outline-danger btn-lg">
</form>
</div>
<div align="left">
<form action="admin_home.jsp">
<input type="submit" value="Go Back to Home" class="btn btn-primary btn-lg">
</form>
</div>
</body>
</html>