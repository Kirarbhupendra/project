<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ModifyFood</title>
<link rel="stylesheet" href="./bootstrap/css/styleUser.css">
<link rel="stylesheet" href="./bootstrap/css/styleAdminView.css">
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
	<header>
            <nav class="navbar"> 
                <a class="active" href="./ViewStoreList.jsp">Back</a>
            </nav>
        </header>

    <div id="popupFormModify">
        <form class="form-container" action="./modifyfood" method="get">
            
            <div class="form-field">
                <input name="foodid" id="InputName" placeholder="Food ID" required>
            </div>
            <button type="submit" class="btn" onclick="openFormMod()">Search</button>
        </form>
    </div>

    <div class="formPopup" id="popupFormMod">
        <form class="form-container">
            <div class="form-field">
                <input name="foodname" id="InputName" placeholder="Food Name" required>
              </div>
              
              <div class="form-field">
                <input name="foodcost" id="InputName" placeholder="Cost" required> 
              </div>

            <button type="submit" class="btn">Submit</button>
            <button class="btn btn-primary" onclick="closeFormMod()">Close</button>
        </form>
    </div>


</body>
<script>
      function openFormMod() {
        document.getElementById("popupFormMod").style.display = "block";
        document.getElementById("popupFormModify").style.display = "none";
      }
      function closeFormMod() {
        document.getElementById("popupFormMod").style.display = "none";
        document.getElementById("popupFormModify").style.display = "block";
        
      }
</script>
</html>