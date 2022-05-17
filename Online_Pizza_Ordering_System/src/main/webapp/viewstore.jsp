<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.SQLException"%>
<%@ page import="java.io.PrintWriter" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Store</title>
<link rel="stylesheet" href="./bootstrap/css/styleAdminView.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
  <!-- JavaScript Bundle with Popper -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
</head>
<style>
	a {
		text-decoration: none;
		
	}
	header > nav> a{
		margin-left:5px;
	}
	.menu{
		padding-top:80px;
	}
</style>
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

String name = request.getParameter("name");

%>
     
        <header>
            <nav class="navbar"> 
                <a class="active" href="./ViewStoreList.jsp">Back</a>
                <a href="./AddFood.jsp?name=<%= request.getParameter("name")%>">Add Food</a>
                <a href="./ModifyFood.jsp">Modify</a>
                <a href="./DeleteFood.jsp">Delete Food</a>
                <p style="float:right;">Store ID - <%= request.getParameter("name")%></p>
            </nav>
        </header>
        <section class="menu" id="menu">

            <h3 class="sub-heading"> our menu </h3>
        
            <div class="box-container">
        	 <%
					      try{
					     con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","pizza","tiger");
					  	smt = con.createStatement();
					  	String sID = request.getParameter("name");
					  	
					  	String sql="SELECT * FROM FoodDetails where STOREID="+ "\'"+sID+"\'";
					  	
					   rst = smt.executeQuery(sql);
					   while(rst.next()){
						   %>
                
                <div class="box">
                    <div class="image">
                        <img src="images/menu-1.jpg" alt="">
                    </div>
                    <div class="content">
                        <h3><%=rst.getString("FoodName")%></h3>
                        <p>Food ID <%=rst.getString("FoodId")%></p>
                        <h4 class="price">Cost Rs<%=rst.getString("Cost")%></h4>
                    </div>
                </div>
                
        		 <%
					      }
					      }
					      catch(Exception e){
					    	  e.printStackTrace();
					      }
					      
					     
					   %>
        
     
            </div>
        
        </section>
    </body>
</html>