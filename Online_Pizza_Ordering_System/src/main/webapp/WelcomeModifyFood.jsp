<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="./bootstrap/css/styleUser.css">
<link rel="stylesheet" href="./bootstrap/css/styleAdminView.css">
<title>Insert title here</title>
</head>
<style>
    .formPopup {
       
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
     
	form {
  width: 350px;
  position: relative;
}
form .form-field::before {
  font-size: 20px;
  position: absolute;
  left: 15px;
  top: 17px;
  color: #888888;
  content: " ";
  display: block;
  background-size: cover;
  background-repeat: no-repeat;
}

form .form-field {
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-pack: justify;
  -ms-flex-pack: justify;
  justify-content: space-between;
  -webkit-box-align: center;
  -ms-flex-align: center;
  align-items: center;
  margin-bottom: 1rem;
  position: relative;
}
form input {
  font-family: inherit;
  width: 100%;
  outline: none;
  background-color: #fff;
  border-radius: 4px;
  border: none;
  display: block;
  padding: 0.9rem 0.7rem;
  box-shadow: 0px 3px 6px rgba(0, 0, 0, 0.16);
  font-size: 17px;
  color: #4A4A4A;
  text-indent: 40px;
}
form .btn {
  outline: none;
  border: none;
  cursor: pointer;
  display: inline-block;
  margin: 0 auto;
  padding: 0.9rem 2.5rem;
  text-align: center;
  background-color: #47AB11;
  color: #fff;
  border-radius: 4px;
  box-shadow: 0px 3px 6px rgba(0, 0, 0, 0.16);
  font-size: 17px;
}
</style>
<body>
<p style="float:right;">Food ID - <%= request.getParameter("foodid")%></p>
<div class="formPopup" id="popupFormMod" >
        <form class="form-container" action="./modifyfoodinput" method="post">
        <div class="form-field">
                <input name="foodid" id="InputName" placeholder="Food ID" value="${param.foodid}" required>
              </div>
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