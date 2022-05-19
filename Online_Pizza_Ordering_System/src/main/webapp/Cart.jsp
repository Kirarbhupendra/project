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
</head>
<body>


<nav class="navbar navbar-light" style="background-color: #28A745;">
  <div class="container-fluid">
    <a class="navbar-brand" href="./Welcome.jsp">Back to Dashboard</a>
  </div>
</nav>
<section class="ftco-section"> 
		<div class="container" style="padding-top: 50px">
			<div class="row">
				<div class="col-md-12">
					<h2 class="text-center mb-4">Cart List</h2>
					<div class="table-wrap">
						<table class="table">
					    <thead class="thead-primary">
					      <tr>
					        <th>Food ID</th>
					        <th>Food Name</th>
					        <th>Cost</th>
					       
					        
					      </tr>
					    </thead>
					     <tbody> 
					    
					    <% 
					    
					    PrintWriter pw= response.getWriter();
					    
					    if(session.getAttribute("Il")==null){
					    	int total=0;
					    	pw.println("The Cart is Empty");
					    	session.setAttribute("total_sum", total);
					    	
					    	
					    	
					    	
					    }
					    ArrayList<FoodCart> items = (ArrayList<FoodCart>)session.getAttribute("Il"); 
					    Iterator<FoodCart> it = items.iterator();
					    
					    while(it.hasNext()){
					    FoodCart i = (FoodCart)it.next(); 	
					    
					    %>
					    
						
					       <tr>
					       
					          <td><%=i.getFoodId() %></td>
					          <td><%=i.getFoodName()%></td>
					          <td><%=i.getCost() %></td>
					          <td><a href='./removefoodcart?name=<%=i.getFoodId() %>' class="btn btn-success">Remove</a></td>
					        
						   
						  
						   
						   </tr>
						      <tr></tr>
						   <%
					    }
						   %>
					
						   
						   
					   
					 
					      
					     
					  
					      
					      
					     
					    
					    </tbody>
					  </table>
					</div>
				</div>
			</div>
		</div>
	</section>
</body>
</html>