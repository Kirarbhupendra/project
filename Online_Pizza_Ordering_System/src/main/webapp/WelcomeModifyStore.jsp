<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
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
<script>
    function openForm() {
        document.getElementById("popupForm").style.display = "block";
        document.getElementById("popupFormModify").style.display = "none";
      }
      function closeForm() {
        document.getElementById("popupForm").style.display = "none";
      }


      function openFormModify() {
        document.getElementById("popupFormModify").style.display = "block";
        document.getElementById("popupForm").style.display = "none";
      }
      function closeFormModify() {
        document.getElementById("popupFormModify").style.display = "none";
      }
      
      function openFormMod() {
        document.getElementById("popupFormMod").style.display = "block";
        document.getElementById("popupFormModify").style.display = "none";
      }
      function closeFormMod() {
        document.getElementById("popupFormMod").style.display = "none";
        
      }
    

</script>

</html>