<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete</title>
<link rel="stylesheet" href="./bootstrap/css/styleUser.css">
<link rel="stylesheet" href="./bootstrap/css/styleAdminView.css">
</head>
<body>
	<header>
            <nav class="navbar"> 
                <a class="active" href="./ViewStoreList.jsp">Back</a>
            </nav>
        </header>

	<div id="popupFormModify">
        <form class="form-container" action="./deletefood" method="get">
            <div class="form-field">
                <input name="foodid" type="text" placeholder="Food ID" required>
            </div>
            <button type="submit" class="btn" >Delete</button>
        </form>
    </div>
</body>
</html>