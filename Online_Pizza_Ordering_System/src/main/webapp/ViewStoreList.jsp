<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.SQLException"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,700' rel='stylesheet' type='text/css'>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
  <!-- JavaScript Bundle with Popper -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<title>Storelist</title>
</head>
<body>
<%


try {
	Class.forName("oracle.jdbc.driver.OracleDriver");
	
	
	
	
} catch (ClassNotFoundException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}
Connection con=null;
Statement smt = null;
ResultSet rst = null;



%>
<section class="ftco-section">
		<div class="container" style="padding-top: 50px">
			<div class="row">
				<div class="col-md-12">
					<h2 class="text-center mb-4">Store List</h2>
					<div class="table-wrap">
						<table class="table">
					    <thead class="thead-primary">
					      <tr>
					        <th>Store ID</th>
					        <th>Store Name</th>
					        <th>Address</th>
					        <th>Phone Number</th>
					        <th></th>
					      </tr>
					    </thead>
					    <tbody>
					      <%
					      try{
					     con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","oracle","tiger");
					  	smt = con.createStatement();
					  	String sql="SELECT * FROM StoreDetails";
					  	
					   rst = smt.executeQuery(sql);
					   while(rst.next()){
						   %>
						   <tr>
						   <td><%= rst.getString("StoreId") %></td>
						   <td><%= rst.getString("StoreName") %></td>
						   <td><%= rst.getString("Address") %></td>
						   <td><%= rst.getString("PhoneNo") %></td>
						   <td><a href='./viewstore.jsp?u=<%=rst.getString("StoreId") %>' class="btn btn-success">View</a></td>
						  
						   
						   </tr>
						   
					
						   
						   
					   
					   <%
					      }
					      }
					      catch(Exception e){
					    	  e.printStackTrace();
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