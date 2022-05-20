<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,700' rel='stylesheet' type='text/css'>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
  <!-- JavaScript Bundle with Popper -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<title>Order Placed</title>
</head>
<style>

body{
  font-family: 'Open Sans', sans-serif;
}
main{
width: 100%;
min-height: 80vh;
box-sizing: border-box;
margin-top: 100px;
padding-bottom: 8%;
}
#main-wrapper{
  width: 100%;
display: flex;
flex-direction: column;
justify-content: center;
align-items: center;
padding-top: 4%;
}
#tick-wrapper{
  width: 200px;
height: 200px;
background-color: #49d049;
border-radius: 50%;
padding: 40px;
box-sizing: border-box;
animation: popup 1s;
}
#tick-wrapper img {
width:100%;
}
#main-heading{
  font-size: 36px;
color: rgba(0, 0, 0, 0.8);
font-weight: 600;
margin: 0;
    margin-top: 0px;
    margin-bottom: 0px;
margin-top: 48px;
margin-bottom: 16px;
}
.section-heading{
  font-size: 20px;
color: rgba(0, 0, 0, 0.8);
font-weight: 400;
margin-bottom: 16px;
}
</style>
<body>
<nav class="navbar navbar-light" style="background-color: #28A745;">
  <div class="container-fluid">
    <a class="navbar-brand" href="./Welcome.jsp">Back to Dashboard</a>
  </div>
</nav>
<main>
  <div id="main-wrapper">
    <div id="tick-wrapper">
      <img src="https://test-hosting-8f9bf.web.app/assets/white-tick.png"/>;
    </div>
    <h1 id="main-heading">Order Placed Successfully!!</h1>
    <p class="section-heading">We have sent you an email with the order details</p>
     <p class="section-heading">Please Do Not press the Back Button ..Press Back to DashBoard</p>
  </div>
</main>
</body>
</html>