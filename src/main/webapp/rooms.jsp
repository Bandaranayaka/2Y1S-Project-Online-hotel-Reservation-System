<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>HOTEL RESAVATION SYSTEM</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="heder.css">
        <link rel="stylesheet" href="book.css">
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
    

<%@page import="com.Classes.*" %>

<%
	User user = (User) session.getAttribute("user");
%>



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

            <% if (user == null){%>
            <ul class = "navbar">
                <li><a href = "home.jsp">home</a></li>
                <li><a href = "services.jsp">services</a></li>
                <li><a href = "rooms.jsp">rooms</a></li>
                <li><a href = "customers.jsp">customers</a></li>
                <li><a href = "book.jsp">Book Now</a></li>
            </ul>
            
           	<a href="signup.jsp"><button class = "btn sign-up">sign up</button></a>
            <a href="login.jsp"><button class = "btn log-in">log in</button></a>
           	<% } else {%>
           	<ul class = "navbar">
                <li><a href = "home.jsp">home</a></li>
                <li><a href = "services.jsp">services</a></li>
                <li><a href = "rooms.jsp">rooms</a></li>
                <li><a href = "customers.jsp">customers</a></li>
                <li><a href = "MyReservations.jsp">My Reservations</a></li>
                <li><a href = "MyPayment.jsp">My Payment</a></li>
                <li><a href = "book.jsp">Book Now</a></li>
            </ul>
           	<a href="Logout"><button class = "btn sign-up">Log Out</button></a>
           	<% } %>
        </div>
        <!-- end of side navbar -->

        <!-- fullscreen modal -->
        <div id = "modal"></div>
        <!-- end of fullscreen modal -->


    <section class = "rooms sec-width" id = "rooms">
        <div class = "title">
            <h2>rooms</h2>
        </div>
        <div class = "rooms-container">
            <!-- single room -->
            <article class = "room">
                <div class = "room-image">
                    <img src = "image\luxury room1.jpg" alt = "room image">
                </div>
                <div class = "room-text">
                    <h3>Standard Room</h3>
                    <ul>
                        <li>
                            <i class = "fas fa-arrow-alt-circle-right"></i>
                            Affordability.
                        </li>
                        <li>
                            <i class = "fas fa-arrow-alt-circle-right"></i>
                            Comfort.
                        </li>
                        <li>
                            <i class = "fas fa-arrow-alt-circle-right"></i>
                            Convenience.
                        </li>
                    </ul>
                    <p>Description: Our Standard Rooms offer a comfortable and affordable stay for guests seeking the basics of hospitality. Each room is equipped with a cozy bed, a private bathroom, a TV, and complimentary Wi-Fi. The decor is simple yet inviting, creating a pleasant atmosphere for a restful night's sleep.</p>
                    
                    <p class = "rate">
                        <span>$100.00 /</span> Per Night
                    </p>
                    <a href="book.jsp"><button type = "button" class = "btn">book now</button></a>
                </div>
            </article>
            <!-- end of single room -->
            <!-- single room -->
            <article class = "room">
                <div class = "room-image">
                    <img src = "image\luxury room2.jpg" alt = "room image">
                </div>
                <div class = "room-text">
                    <h3>Deluxe Suite</h3>
                    <ul>
                        <li>
                            <i class = "fas fa-arrow-alt-circle-right"></i>
                            Spacious Luxury.
                        </li>
                        <li>
                            <i class = "fas fa-arrow-alt-circle-right"></i>
                            Premium Amenities.
                        </li>
                        <li>
                            <i class = "fas fa-arrow-alt-circle-right"></i>
                            Scenic Views.
                        </li>
                    </ul>
                    <p>Description: Our Deluxe Suites are designed for travelers who desire extra space and enhanced amenities. These well-appointed suites feature a separate living area and bedroom, providing ample room to relax and unwind. You'll find premium touches like a well-stocked minibar, an in-room coffee maker, and often a view of the city or other scenic landscapes.</p>
                    
                    <p class = "rate">
                        <span>$150.00 /</span> Per Night
                    </p>
                    <a href="book.jsp"><button type = "button" class = "btn">book now</button></a>
                </div>
            </article>
            <!-- end of single room -->
            <!-- single room -->
            <article class = "room">
                <div class = "room-image">
                    <img src = "image\luxury room3.jpg" alt = "room image">
                </div>
                <div class = "room-text">
                    <h3>Luxury Rooms</h3>
                    <ul>
                        <li>
                            <i class = "fas fa-arrow-alt-circle-right"></i>
                            Unparalleled Luxury.
                        </li>
                        <li>
                            <i class = "fas fa-arrow-alt-circle-right"></i>
                            Breathtaking Views.
                        </li>
                        <li>
                            <i class = "fas fa-arrow-alt-circle-right"></i>
                            Personalized Service:.
                        </li>
                    </ul>
                    <p>Description: Our Luxury Penthouses are the epitome of opulence and exclusivity. Located on the highest floors of the hotel, they feature a separate bedroom, a spacious living room, a fully equipped kitchen, and extraordinary features like a private terrace and jacuzzi. Additionally, a dedicated concierge is at your service for a truly bespoke experience.</p>
                    
                    <p class = "rate">
                        <span>$300.00 /</span> Per Night
                    </p>
                    <a href="book.jsp"><button type = "button" class = "btn">book now</button></a>
                </div>
            </article>
            <!-- end of single room -->
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