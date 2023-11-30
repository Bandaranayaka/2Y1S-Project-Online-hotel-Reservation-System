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



        <div class="container">
            <h1>Hotel Reservation</h1>
            <form id="reservation-form"  action="Reservation" method="post">
                <% if (user == null){ %>
                <div class="input-box">
                    <label for="name">Name</label>
                    <input type="text" id="name" name="Name" required>
                </div>
                <div class="input-box">
                    <label for="email">Email</label>
                    <input type="email" id="email" name="Email" required>
                </div>
                <% } else { %>
                <div class="input-box">
                    <label for="name">Name</label>
                    <input type="text" id="name" name="Name" value="<%= user.getUserName() %>" >
                </div>
                <div class="input-box">
                    <label for="email">Email</label>
                    <input type="email" id="email" name="Email" value="<%= user.getEmail() %>" >
                </div>
                <% } %>
                <div class="input-box">
                    <label for="check-in-date">Check-in Date</label>
                    <input type="date" id="check-in-date" name="CheckInDate" required>
                </div>
                <div class="input-box">
                    <label for="check-out-date">Check-out Date</label>
                    <input type="date" id="check-out-date" name="CheckOutDate" required>
                </div>
                <div class="input-box">
                    <label for="guests">No. of Guests</label>
                    <input type="number" id="guests" name="NoOfGuests" required>
                </div>
                <div class="input-box">
                    <label for="room-type">Room Type</label>
                    <select id="room-type" name="RoomType" required>
                        <option value="standard">Standard</option>
                        <option value="deluxe">Deluxe</option>
                        <option value="suite">Luxury</option>
                    </select>
                </div>
                <div class="input-box">
                    <label for="rooms">No. of Rooms</label>
                    <input type="number" id="rooms" name="NoOfRooms" required>
                </div>
                <div class="input-box">
                    <label>Additional Services</label>
                    <div class="services">
                        <label><input type="checkbox" name="Breakfast" value="breakfast"> Breakfast</label>
                        <label><input type="checkbox" name="WiFi" value="wifi"> Free Wi-Fi</label>
                        <label><input type="checkbox" name="Parking" value="parking"> Parking</label>
                        <label><input type="checkbox" name="PoolAccess" value="pool"> Pool Access</label>
                        <label><input type="checkbox" name="SpaAccess" value="spa"> Spa Access</label>
                    </div>
                </div>
                <div class="input-box">
                    <label>Loyalty Member</label>
                    <label><input type="radio" name="loyalty" value="yes"> Yes</label>
                    <label><input type="radio" name="loyalty" value="no"> No</label>
                </div>
                <div class="input-box">
                    <label for="total-cost">Total Cost</label>
                    <input type="text" id="total-cost" disabled>
                </div>
                <button type="submit">Submit Reservation</button>
            </form>

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

<script src="book.js"></script>
<script src="scriptthila.js"></script>



</body>
</html>
