<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="com.Classes.*" %>

<%
	User user = (User) session.getAttribute("user");
	if (user != null){
		response.sendRedirect("home.jsp");
	}
%>


<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>HOTEL RESAVATION SYSTEM</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="heder.css">
        <link rel="stylesheet" href="log.css">
        <script src="https://kit.fontawesome.com/dbed6b6114.js" crossorigin="anonymous"></script>
        <link rel = "icon" href = "images/logo.png" type = "image/png">


<!-- ----------------------------------------------------------------------- -->
    <!--ICONSCOUT CON-->
    <link rel = "stylesheet" href="https://unicons.iconscout.com/release/v2.1.6/css/unicons.css">
    <!-- ----------------------------------------------------------------------  -->
    
        <!--GOOGEL FONTS (MONTSERRAT)-->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;500;600;700;800;900&display=swap" rel="stylesheet">
    
    
    <!-------------------------------------------------------------------------------->
    





    </head>
    <body>
   
        <!-- header -->
        <header class = "header" id = "header">
            <div class = "head-top">
                <div class = "site-name">
                    <span><h2>MountainView</h2></span>
                </div>
                <div class = "site-nav">
                    <span id = "nav-btn">MENU <i class = "fas fa-bars"></i></span>
                </div>
            </div>

        </header>
        <!-- end of header -->

        <!-- side navbar -->

 <div class = "sidenav" id = "sidenav">
            <span class = "cancel-btn" id = "cancel-btn">
                <i class = "fas fa-times"></i>
            </span>

            <ul class = "navbar">
                <li><a href = "home.jsp">home</a></li>
                <li><a href = "services.jsp">services</a></li>
                <li><a href = "rooms.jsp">rooms</a></li>
                <li><a href = "customers.jsp">customers</a></li>
                <li><a href = "book.jsp">Book Now</a></li>
            </ul>
            <a href="signup.jsp"><button class = "btn sign-up">sign up</button></a>
            <a href="login.jsp"><button class = "btn log-in">log in</button></a>
        </div>
        <!-- end of side navbar -->

        <!-- fullscreen modal -->
        <div id = "modal"></div>
        <!-- end of fullscreen modal -->


    
<!--Frist we have to creat registration form-->
<section>
  	
  	<% if (session.getAttribute("error") != null){ %>
  		<p style="color:red"><%= session.getAttribute("error") %></p>
  		<% session.setAttribute("error", null); %>
  	<% } %>
    <div class="login-box">
      <form action="LoginServlet" method="post"> 
        <h2>Login</h2>
        <div class="input-box">
          <span class="icon"><ion-icon name="uid"></ion-icon></span>
          <input type="text"  id="uid" name="email" required>
          <label>User Name</label>
        </div>
    
        <div class="input-box">
          <span class="icon"><ion-icon name="lock-closed"></ion-icon></span>
          <input type="password" id="password" name="password" required>
          <label>Password</label>
        </div>
    
        
    
        <div class="remember-forgot">
           <label><input type="checkbox">Remember me</label>
           <a href="pwForget.jsp">Forgot Password?</a>
        </div>
        
        
        
       
    
        <button name="login" id="login">Login</button>
        <div class="register-link">
          <p>Don't have an account? <a href="signup.jsp">Register</a></p>
        </div>
       
      </form>
      
    </div>
    </section>

















  
 <!-- footer -->
 <footer class = "footer">
    <div class = "footer-container">
        <div>
            <h2>About Us </h2>
            <p>We are more than a booking platform; we are the architects of unforgettable experiences.</p>
            <ul class = "social-icons">
                <li class = "flex">
                    <i class = "fa fa-twitter fa-2x"></i>
                </li>
                <li class = "flex">
                    <i class = "fa fa-facebook fa-2x"></i>
                </li>
                <li class = "flex">
                    <i class = "fa fa-instagram fa-2x"></i>
                </li>
            </ul>
        </div>

        <div>
            <h2>Useful Links</h2>
            <a href = "#">Blog</a>
            <a href = "#">Rooms</a>
            <a href = "#">Subscription</a>
            <a href = "#">Gift Card</a>
        </div>

        <div>
            <h2>Privacy</h2>
            <a href = "#">Career</a>
            <a href = "#">About Us</a>
            <a href = "#">Contact Us</a>
            <a href = "#">Services</a>
        </div>

        <div>
            <h2>Have A Question</h2>
            <div class = "contact-item">
                <span>
                    <i class = "fas fa-map-marker-alt"></i>
                </span>
                <span>
                    203 Fake St.Mountain View, colombo 7, Sri Lanka
                </span>
            </div>
            <div class = "contact-item">
                <span>
                    <i class = "fas fa-phone-alt"></i>
                </span>
                <span>
                    +94 779668367
                </span>
            </div>
            <div class = "contact-item">
                <span>
                    <i class = "fas fa-envelope"></i>
                </span>
                <span>
                    info@domain.com
                </span>
            </div>
        </div>
    </div>
</footer>
<!-- end of footer -->

<script src="scriptthila.js"></script>


<script>
    var swiper = new Swiper(".mySwiper", {
  slidesPerView: 1 ,
  spaceBetween: 30,
  pagination: {
    el: ".swiper-pagination",
    clickable: true,
         },
         //when window with is => 600px
         breakpoints: {
          600:{
            slidesPerView: 2
          }
         }
       });
     </script>

</body>
</html>




















</body>
</html>