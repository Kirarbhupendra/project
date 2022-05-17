<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <link rel="stylesheet" href="./bootstrap/css/styleUser.css">
 <link rel="stylesheet" href="./bootstrap/css/styleAdminView.css">
<title>Add Food</title>

</head>
<body>
<header>
            <nav class="navbar"> 
                <a class="active" href="./ViewStoreList.jsp">Back</a>
                <p style="float:right;">Store ID - <%= request.getParameter("name")%></p>
            </nav>
        </header>



<form class="form-container" action =" ./addfood" method="post">
 <div class="form-field">
    <input name="storeid" id="InputName" placeholder="Store Id" value="${param.name}" required>
  </div>
  <div class="form-field">
    <input name="foodname" id="InputName" placeholder="Food Name" required>
  </div>
  
  <div class="form-field">
    <input name="foodcost" type="number" id="InputName" placeholder="Cost" required> 
  </div>
  <div class="form-field">
    <button type="submit" class="btn" >Add</button>
  </div>
</form>
</body>
</html>