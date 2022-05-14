<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Modify Store</title>
</head>

<body>
<div class="formPopup" id="popupFormMod">
        <form action="./modifyinput" method="post">
            <div class="form-group">
                <label>Store ID</label>
                <input type="text" name="storeid" required>
            </div>
            <div class="form-group">
                <label>Store Name</label>
                <input type="text" name="storename" required>
            </div>
            
            <div class="form-group">
                <label>Address</label>
                <input type="text" name="address" required>
            </div>

            
            <div class="form-group">
                <label>Phone</label>
                <input type="text" name="phone" required>
            </div>
           

            <button type="submit" class="btn btn-primary">Submit</button>
            <button class="btn btn-primary" onclick="closeFormMod()">Close</button>
            
        </form>
    </div>
</body>
</html>