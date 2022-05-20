<%@page import="org.apache.catalina.valves.rewrite.Substitution.StaticElement"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="com.wipro.model.FoodCart"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%> 
<%@page import="com.wipro.model.*" %> 
<!DOCTYPE html>
<html>
<head>
<link href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,700' rel='stylesheet' type='text/css'>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
  <!-- JavaScript Bundle with Popper -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<meta charset="ISO-8859-1">
<title>Cart</title>
<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,900" rel="stylesheet">
</head>
<style>
body{
	margin: 0;
	padding: 0;
	background: linear-gradient(to bottom right, #E3F0FF, #FAFCFF);
	height: auto;
	display: flex;
	justify-content: center;
	align-items: center;
}

.CartContainer{
	width: 70%;
	height: auto;
	background-color: #ffffff;
    border-radius: 20px;
    box-shadow: 0px 10px 20px #1687d933;
    margin-bottom:5%;
    margin-top:5%;
}

.Header{
	margin: auto;
	width: 90%;
	height: 15%;
	display: flex;
	justify-content: space-between;
	align-items: center;
	margin-top:5%;
}

.Heading{
	font-size: 20px;
	font-family: 'Open Sans';
	font-weight: 700;
	color: #2F3841;
}

.Action{
	font-size: 14px;
	font-family: 'Open Sans';
	font-weight: 600;
	color: #E44C4C;
	cursor: pointer;
	border-bottom: 1px solid #E44C4C;
}

.Cart-Items{
	margin: auto;
	width: 90%;
	height: 30%;
	display: flex;
	justify-content: space-between;
	align-items: center;
}
.image-box{
	width: 15%;
	text-align: center;
}
.about{
	height: 100%;
	width: 24%;
}
.title{
	font-size: 20px;
	font-family: 'Open Sans';
	font-weight: 800;
	color: #202020;
}

.subtitle{
	line-height: 10px;
	font-size: 12px;
	font-family: 'Open Sans';
	font-weight: 600;
	color: #909090;
}
.counter{
	width: 15%;
	display: flex;
	justify-content: space-between;
	align-items: center;
}
.btn{
	width: 40px;
	height: 40px;
	border-radius: 50%;
	background-color: #d9d9d9;
	display: flex;
	justify-content: center;
	align-items: center;
	font-size: 20px;
	font-family: 'Open Sans';
	font-weight: 900;
	color: #202020;
	cursor: pointer;
}
.count{
	font-size: 20px;
	font-family: 'Open Sans';
	font-weight: 600;
	color: #202020;
}

.prices{
	height: 100%;
	text-align: right;
}
.amount{
	padding-top: 20px;
	font-size: 26px;
	font-family: 'Open Sans';
	font-weight: 800;
	color: #202020;
}
.remove{
	padding-top: 5px;
	font-size: 14px;
	font-family: 'Open Sans';
	font-weight: 600;
	color: #E44C4C;
	cursor: pointer;
}

hr{
	width: 66%;
	float: right;
	margin-right: 5%;
}
.checkout{
	float: right;
	margin-right: 5%;
	width: 28%;
	padding-bottom:10%;
}
.total{
	width: 100%;
	display: flex;
	justify-content: space-between;
}
.Subtotal{
	font-size: 22px;
	font-family: 'Open Sans';
	font-weight: 700;
	color: #202020;
}
.items{
	font-size: 16px;
	font-family: 'Open Sans';
	font-weight: 500;
	color: #909090;
	line-height: 10px;
}
.total-amount{
	font-size: 36px;
	font-family: 'Open Sans';
	font-weight: 900;
	color: #202020;
}
.button{
	margin-top: 10px;
	width: 100%;
	height: 40px;
	border: none;
	background: linear-gradient(to bottom right, #B8D7FF, #8EB7EB);
	border-radius: 20px;
	cursor: pointer;
	font-size: 16px;
	font-family: 'Open Sans';
	font-weight: 600;
	color: #202020;
}

.back{
	margin-left:20px;
	margin-top:100px;
	position:relative;
}

</style>
<body>

<div class="CartContainer">
		<a class="back" href="Welcome.jsp">
			<?xml version="1.0" ?><svg height="48" viewBox="0 -5 48 48" width="48" xmlns="http://www.w3.org/2000/svg"><path d="M0 0h48v48h-48z" fill="none"/><path d="M40 22h-24.34l11.17-11.17-2.83-2.83-16 16 16 16 2.83-2.83-11.17-11.17h24.34v-4z"/></svg>
		</a><br>
   	   <div class="Header">
   	   	
   	   	<h3 class="Heading">Shopping Cart</h3>
   	   </div>
		<% 
					    
					    PrintWriter pw= response.getWriter();
					    
					    if(session.getAttribute("Il")==null){
			
					    	pw.println("The Cart is Empty");
					    	
					    	
					    }
					    ArrayList<FoodCart> items = (ArrayList<FoodCart>)session.getAttribute("Il"); 
					    Iterator<FoodCart> it = items.iterator();
					    int Total = 0;
					    int Item = 0;
					    int qty = 0;
					    while(it.hasNext()){
					    FoodCart i = (FoodCart)it.next(); 
					    
					    Total = Total + i.getCost();
					    Item = Item + i.getQuantity();
					    qty++;
					    %>
   	   <div class="Cart-Items">
   	   	  <div class="image-box">
   	   	  	<img src="images/pizza_PNG.png" style={{ height="120px" }} />
   	   	  </div>
   	   	  <div class="about">
   	   	  	<h1 class="title"><%=i.getFoodName()%></h1>
   	   	  	<h3 class="subtitle"><%=i.getFoodId()%></h3>
   	   	  </div>
   	   	  <div class="counter">
   	   	  	<div class="btn">+</div>
   	   	  	<div  class="count" >1</div>
   	   	  	<div class="btn" ">-</div>
   	   	  </div>
   	   	  <div class="prices">
   	   	  	<div class="amount"><%=i.getCost() %></div>
   	   	  	<div class="remove"><a href='./removefoodcart?foodid=<%=i.getFoodId() %>'>Remove</a></div>
   	   	  </div>
   	   </div>
   	   <%
					    }
		%>
   	 <hr> 
   	 <div class="checkout">
	   	 <div class="total">
	   	 	<div>
	   	 		<div class="Subtotal">Sub-Total</div>
	   	 		<div class="items"><% out.println(Item); %> items</div>
	   	 	</div>
	   	 	<div class="total-amount"><% out.println(Total); %></div>
	   	 </div>
   	 	<button onclick="location.href = './checkout.jsp';" class="button">Checkout</button>
   	 </div>
   </div>
</body>
<script>

</script>
</html>