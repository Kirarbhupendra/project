<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ModifyFood</title>
</head>
<body>
    <div id="popupFormModify">
        <form class="form-container">
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