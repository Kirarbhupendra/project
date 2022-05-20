<%@page import="com.wipro.model.FoodCart"%>
<%@page import="java.util.ArrayList"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.SQLException"%>
<%@ page import="java.io.PrintWriter" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <title>Welcome</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />

    <!-- font awesome cdn link  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">

    <!-- custom css file link  -->
    <link rel="stylesheet" href="./bootstrap/css/style.css">
</head>
<body>
	<!-- header section starts      -->
	<%ArrayList<FoodCart> al = new ArrayList<FoodCart>(); %>

<header>

    <a href="#" class="logo"><i class="fas fa-utensils"></i>Pizza</a>

    <nav class="navbar">
        <a class="active" href="#home">home</a>
        <a href="#about">about</a>
        <a href="#menu">menu</a>
    </nav>

    <div class="icons">
        <i class="fas fa-bars" id="menu-bars"></i>
        <a href="./Cart.jsp" class="fas fa-shopping-cart"></a>
        <a id="logout" style="text-decoration:none; background:none;" href="./Logout">Logout</a>
    </div>
</header>

<!-- header section ends-->

<!-- search form  -->


<!-- home section starts  -->

<section class="home" id="home">
    <div class="swiper-container home-slider">
        <div class="swiper-wrapper wrapper">
            
            <div class="swiper-slide slide">
                <div class="content">
                    <span>our special dish</span>
                    <h3>spicy pizza</h3>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Sit natus dolor cumque?</p>
                </div>
                <div class="image">
                    <img src="images/home-img-3.png" alt="">
                </div>
            </div>

            <div class="swiper-slide slide">
                <div class="content">
                    <span>our special dish</span>
                    <h3>chicken pizza</h3>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Sit natus dolor cumque?</p>
                </div>
                <div class="image">
                    <img src="images/home-img-3.png" alt="">
                </div>
            </div>

            <div class="swiper-slide slide">
                <div class="content">
                    <span>our special dish</span>
                    <h3>hot pizza</h3>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Sit natus dolor cumque?</p>
                </div>
                <div class="image">
                    <img src="images/home-img-3.png" alt="">
                </div>
            </div>
        </div>
        <div class="swiper-pagination"></div>
    </div>
</section>

<!-- home section ends -->


<!-- about section starts  -->

<section class="about" id="about">

    <h3 class="sub-heading"> about us </h3>
    <h1 class="heading"> why choose us? </h1>

    <div class="row">

        <div class="image">
            <img src="images/about-img.png" alt="">
        </div>

        <div class="content">
            <h3>best pizza in the country</h3>
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolore, sequi corrupti corporis quaerat voluptatem ipsam neque labore modi autem, saepe numquam quod reprehenderit rem? Tempora aut soluta odio corporis nihil!</p>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, nemo. Sit porro illo eos cumque deleniti iste alias, eum natus.</p>
            <div class="icons-container">
                <div class="icons">
                    <i class="fas fa-shipping-fast"></i>
                    <span>free delivery</span>
                </div>
                <div class="icons">
                    <i class="fas fa-dollar-sign"></i>
                    <span>easy payments</span>
                </div>
                <div class="icons">
                    <i class="fas fa-headset"></i>
                    <span>24/7 service</span>
                </div>
            </div>
        </div>

    </div>

</section>

<!-- about section ends -->

<!-- menu section starts  -->
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
<section class="menu" id="menu">

    <h3 class="sub-heading"> our menu </h3>
    <div class="box-container">
					<%
					      try{
					     con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","pizza","tiger");
					  	smt = con.createStatement();
					  	String sID = request.getParameter("name");
					  	
					  	String sql="SELECT * FROM FoodDetails";
					  	
					   rst = smt.executeQuery(sql);
					   while(rst.next()){
						   %>
        <div class="box">
            <div class="image">
                <img src="images/menu-1.jpg" alt="">
            </div>
            <div class="content">
                <h3><%=rst.getString("FoodName")%></h3>
                
                <span class="price">Cost Rs<%=rst.getString("Cost")%></span>
          
                <a id="addtocart" class="btn" href='./AddToCart?foodid=<%=rst.getString("FoodId") %>'>add to cart</a>
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

<!-- menu section ends -->

<!-- footer section starts  -->

<section class="footer">

    <div class="box-container">

        <div class="box">
            <h3>locations</h3>
            <a href="#">india</a>
            <a href="#">japan</a>
            <a href="#">USA</a>
            <a href="#">france</a>
        </div>

        <div class="box">
            <h3>quick links</h3>
            <a href="#">home</a>
            <a href="#">about</a>
            <a href="#">menu</a>
        </div>

        <div class="box">
            <h3>contact info</h3>
            <a href="#">+123-456-7890</a>
            <a href="#">team16@gmail.com</a>
            <a href="#">mumbai, india - 400104</a>
        </div>

        <div class="box">
            <h3>follow us</h3>
            <a href="#">facebook</a>
            <a href="#">twitter</a>
            <a href="#">instagram</a>
            <a href="#">linkedin</a>
        </div>

    </div>
</section>

<!-- footer section ends -->


<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>

<!-- custom js file link  -->

</body>
<script src="js/script.js"></script>
</html>