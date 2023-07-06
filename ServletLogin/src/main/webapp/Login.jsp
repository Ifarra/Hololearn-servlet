<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Servlet</title>
</head>
<body>
	<h1>Login Account</h1>
	<%!
	int a = 2;
	int b = 7;
	
	int k = a*b;
	String uwu = "<h1>My GF is a " + k + " y.o</h1>";
	%>
	<form action="masuk" method="post">
	    Username : <input type="text" name="username" placeholder="username" required> <br/>
	    Password : <input type="password" name="password" placeholder="password" required>
	    <input type="submit" value="login">
	    <span class="error">${error}</span>
	</form>
</body>
</html>