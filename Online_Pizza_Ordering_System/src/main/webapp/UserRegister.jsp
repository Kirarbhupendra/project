<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 	<meta name="viewport" content="width=device-width, initial-scale=1">
 	<link href="bootstrap/css/styleUser.css" type="text/css" rel="stylesheet">
	<meta charset="ISO-8859-1">
<title>User Registration</title>
</head>


<body>

	<div id="bg"></div>

<form action="<%=request.getContextPath() %>/userregister" method="post" class="form-container">
	<center><h1> Register Yourself</h1></center>
  <div class="form-field">
    <input name="firstname" id="InputName" placeholder="First Name" required>
  </div>
  
  <div class="form-field">
    <input name="lastname" id="InputName" placeholder="Last Name" required> 
  </div>

  <div class="form-field">
    <input name="address" id="InputAddress" placeholder="Address" required>  
  </div>

  <div class="form-field">
    <input type="email" name="email" id="exampleInputEmail1" placeholder="Email" required>
  </div>

  <div class="form-field">
    <input type="number" name="phoneno" id="exampleNumberInput1" placeholder="Number" required>    
  </div>

  <div class="form-field">
    <input type="password" pattern=".{6,}" required title="6 characters minimum" name="password" id="InputPassword" type="password" placeholder="Password" required> 
  </div>
  
  <div class="form-field">
    <input name="confirmPassword"  id="ConfirmInputPassword" type="password" placeholder="Confirm Password" required>
  </div>

  <div class="form-field">
    <button type="submit" class="btn" onclick="index.html">Register</button>
  </div>
</form>

</body>


</html>