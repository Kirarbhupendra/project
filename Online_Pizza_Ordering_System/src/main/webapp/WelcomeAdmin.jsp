<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<title>Welcome Admin</title>
</head>
<style>
     .formPopup {
        display: none;
        margin-top: 100px;
        margin-bottom: 100px;
        margin-right: 150px;
        margin-left: 80px;
        Padding-top: 100px;
        Padding-bottom: 100px;
        Padding-right: 150px;
        Padding-left: 80px;
        background-color: lightblue;
     }
</style>
<body>
 <div>
        <nav class="navbar navbar-light bg-light">
            <div class="container-fluid">
              <button onclick="openForm()">Add Store</button>
              <button onclick="openFormModify()">Modify Store</button>
              <button>View Store</button>
            </div>
          </nav>
    </div>

    <div class="formPopup" id="popupForm">
        <form action =" ./addstore" method="post">
            <div class="form-group">
                <label>Store Name</label>
                <input type="text" name="storename" required>
            </div>
            
            <div class="form-group">
                <label>Address</label>
                <input type="text" name="storeaddress"required>
            </div>

            
            <div class="form-group">
                <label>Phone Address</label>
                <input type="text" name="phone" required>
            </div>
            <button type="submit" class="btn btn-primary">Submit</button>
            <button class="btn btn-primary" onclick="closeForm()">Close</button>
        </form>
    </div>


    <div class="formPopup" id="popupFormModify">
        <form action="./ModifyStore" method="get">
            <div class="form-group">
                <label>Store ID</label>
                <input type="text" name="id" required>
            </div>
            <button type="submit" class="btn btn-primary">Search</button>
            <button class="btn btn-primary" onclick="closeFormModify()">Close</button>
        </form>
    </div>

    <div class="formPopup" id="popupFormMod">
        <form >
            <div class="form-group">
                <label>Store Name</label>
                <input type="text" required>
            </div>
            
            <div class="form-group">
                <label>Address</label>
                <input type="text" required>
            </div>

            
            <div class="form-group">
                <label>Phone</label>
                <input type="text" required>
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