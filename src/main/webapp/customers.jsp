<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>HOTEL RESAVATION SYSTEM</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="heder.css">
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


    <section class = "customers" id = "customers">
        <div class = "sec-width">
            <div class = "title">
                <h2>customers</h2>
            </div>
            <div class = "customers-container">
                <!-- single customer -->
                <div class = "customer">
                    <div class = "rating">
                        <span><i class = "fas fa-star"></i></span>
                        <span><i class = "fas fa-star"></i></span>
                        <span><i class = "fas fa-star"></i></span>
                        <span><i class = "fas fa-star"></i></span>
                        <span><i class = "fas fa-star"></i></span>
                    </div>
                    <h3>We Loved it</h3>
                    <p>"I dined at your hotel's restaurant, and the food was outstanding. The menu offered a great variety, and the dishes were not only delicious but also beautifully presented. The dining experience added a delightful touch to my stay, and I'll be returning for more of your culinary delights."</p>
                    <img src = "image\we love it 1.jpg" alt = "customer image">
                    <span>Thilakshana, Kurunagala</span>
                </div>
                <!-- end of single customer -->
                <!-- single customer -->
                <div class = "customer">
                    <div class = "rating">
                        <span><i class = "fas fa-star"></i></span>
                        <span><i class = "fas fa-star"></i></span>
                        <span><i class = "fas fa-star"></i></span>
                        <span><i class = "fas fa-star"></i></span>
                        <span><i class = "far fa-star"></i></span>
                    </div>
                    <h3>Room Comfort and Cleanliness</h3>
                    <p>"I had the pleasure of staying at your hotel last weekend, and I must say the level of service was exceptional. The staff was attentive, friendly, and went above and beyond to ensure our stay was comfortable. Their professionalism made our stay truly memorable!"</p>
                    <img src = "image\comfortable living.jpg" alt = "customer image">
                    <span>Sayuni ellepola, kiribathgoda</span>
                </div>
                <!-- end of single customer -->
                <!-- single customer -->
                <div class = "customer">
                    <div class = "rating">
                        <span><i class = "fas fa-star"></i></span>
                        <span><i class = "fas fa-star"></i></span>
                        <span><i class = "fas fa-star"></i></span>
                        <span><i class = "fas fa-star"></i></span>
                        <span><i class = "far fa-star"></i></span>
                    </div>
                    <h3>Website User Experience</h3>
                    <p>"Navigating your website is a breeze! The layout is intuitive, and I was able to find the information I needed without any hassle. The overall design is aesthetically pleasing, making it a joy to use. Great job on the user experience!"</p>
                    <img src = "image\nice place-3.jpg" alt = "customer image">
                    <span>Tomes bello, Italy</span>
                </div>
                <!-- end of single customer -->
            </div>
        </div>
    </section>
    <!-- end of body content -->
















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





















