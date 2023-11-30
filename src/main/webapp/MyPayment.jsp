<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@page import="com.Classes.*"
		import="java.util.*" %>

<%
	User user = (User) session.getAttribute("user");
	if (user == null){
		response.sendRedirect("login.jsp");
		return;
	}
	
	
	//-------------------------------------------------------------------
	if (session.getAttribute("Payments") == null){
		response.sendRedirect("GetUserPayment");
		return;
	}
	List<PaymentClass> Payments = new ArrayList<>();
	Payments = (List<PaymentClass>) session.getAttribute("Payments");
%>





<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>HOTEL RESAVATION SYSTEM</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="mainthila.css">
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
      <!--SWIPER JS -->
      <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css"/>






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

            <div class = "head-bottom flex">
               	<h2>Hi <%= user.getUserName() %></h2>             
                <p>Welcome to a digital gateway of luxury and adventure, where every click opens the door to a world of unforgettable experiences!</p>
                <a href="login.jsp"><button type = "button" class = "head-btn">GET STARTED</button></a>
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
                <li><a href = "MyReservations.jsp">My Reservations</a></li>
                <li><a href = "GetUserPayment">My Payment</a></li>
                <li><a href = "book.jsp">Book Now</a></li>
            </ul>
           	<a href="Logout"><button class = "btn sign-up">Log Out</button></a>           	
        </div>
        <!-- end of side navbar -->

        <!-- fullscreen modal -->
        <div id = "modal"></div>
        <!-- end of fullscreen modal -->
     
     
		
		//Payments--------------------------------------------------------------------------------------------------------
		
		
		
		<div style="height:500px">
			<table border=1 style="margin:auto;margin-top:15px;text-align:center;">
				<tr>
					<th style="padding:10px">User Name</th>
					<th style="padding:10px">PaymentEmail</th>
					<th style="padding:10px">Country</th>
					<th style="padding:10px">City</th>
					<th style="padding:10px">CardType</th>
					<th style="padding:10px">Card Number</th>
					<th style="padding:10px">Card Expire</th>
					<th style="padding:10px">Card CVV</th>
					
				</tr>
				
				
					<% for (PaymentClass payment: Payments){ %>
					<tr>
						<td><%= payment.getUsername() %></td>
						<td><%= payment.getPaymentEmail() %></td>
						<td><%= payment.getCountry() %></td>
						<td><%= payment.getCity() %></td>
						<td><%= payment.getCardType() %></td>
						<td><%= payment.getCardNumber() %></td>
						<td><%= payment.getCardExp() %></td>
						<td><%= payment.getCardCVV() %></td>
						<td><button class="btn" onClick="window.location.href='GetPaymentDetailsFromPID?PID=<%= payment.getPid() %>'">Edit</button></td>
						<td><button class="btn" onClick="window.location.href='DeletePayment?PID=<%= payment.getPid() %>'">Delete</button></td>
					</tr>
					<% } %>
			</table>
		</div>  
        
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
                    <h2>Have A Question ?</h2>
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
        <script src="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.js"></script>
        <script src="scriptthila.js"></script>
        <script type="book.js"></script>
        

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