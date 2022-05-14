<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <link rel="stylesheet" href="./bootstrap/css/styleUser.css">
<title>Add Food</title>

</head>
<body>
    <div id="bg"></div>

<form class="form-container" action="">
  <div class="form-field">
    <input name="storeid" id="InputName" placeholder="Store Id" required>
  </div>
  <div class="form-field">
    <input name="foodname" id="InputName" placeholder="Food Name" required>
  </div>
  
  <div class="form-field">
    <input name="foodcost" id="InputName" placeholder="Cost" required> 
  </div>
  <div class="form-field">
    <button type="submit" class="btn" >Add</button>
  </div>
</form>
</body>
</html>