<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link href="bootstrap/css/styleUser.css" type="text/css" rel="stylesheet">
	<title>Admin Login</title>
</head>
<body>

<div id="bg"></div>

<form action="admincheck" method="post">
	<h2> Login for awesome Pizza!</h2>
 	<div class="form-field">
    	<input type="email" name="email" id="InputEmail" placeholder="Email" required>
    </div>
  
  	<div class="form-field">
    	<input type="password" name="password" id="InputPassword" placeholder="Password" required> 
    </div>
  
  	<div class="form-field">
    	<button class="btn" type="submit">Login</button>
		<p class="text">Don't have an account? <a href="AdminRegister.jsp">Register</a></p>
  	</div>
</form>

</body>
</html>