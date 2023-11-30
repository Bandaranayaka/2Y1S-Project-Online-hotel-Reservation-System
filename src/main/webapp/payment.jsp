<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>HOTEL RESAVATION SYSTEM</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="heder.css">
        <link rel="stylesheet" href="paymentresavetion.css">
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
                <li><a href = "GetUserPayment">My Reservations</a></li>
                <li><a href = "book.jsp">Book Now</a></li>
            </ul>
           	<a href="Logout"><button class = "btn sign-up">Log Out</button></a>
           	<% } %>
        </div>
        <!-- end of side navbar -->

        <!-- fullscreen modal -->
        <div id = "modal"></div>
        <!-- end of fullscreen modal -->
    <section>
        <div class="login-box">
            <h2>Payment Information</h2>
            <form action="Payment" method="POST" id="payment-form">
               
              
              
                <div class="input-box">
                    <input type="text" id="name" name="CardHolderName" value="<%= request.getParameter("Name") %>" required>
                    <label>Cardholder Name</label>
                </div>
            
                <div class="input-box">
                    <input type="email" id="email" name="CardHolderEmail" value="<%= request.getParameter("Email") %>" required>
                    <label>Email</label>
                </div>
                
                <div class="input-box">
                    <input type="text" id="city" name="CardHolderCountry" required>
                    <label>Country</label>
                </div>
                <div class="input-box">
                    <input type="text" id="state" name="CardHolderCity" required>
                    <label>City</label>
                </div>
                
                <div class="input-box">
                    <select id="card-type" name="CardType" required>
                        <option value="visa">Visa</option>
                        <option value="mastercard">MasterCard</option>
                        <option value="amex">American Express</option>
                        <option value="discover">Discover</option>
                    </select>
                    <label>Credit Card Type</label>
                </div>
                <div class="input-box">
                    <input type="number" id="card-number" name="CardNumber" required>
                    <label>Card Number</label>
                </div>
                <div class="row">
                    <div class="col">
                        <div class="input-box">
                            <input type="text" id="expiry" name="CardEXP" placeholder="MM/YY" required>
                            <label>Expiration Date</label>
                        </div>
                    </div>
                    <div class="col">
                        <div class="input-box">
                            <input type="number" id="cvv" name="CardCVV" required>
                            <label>CVV</label>
                        </div>
                    </div>
                </div>
                <button type="submit">Pay Now</button>
            </form>
        </div>
    </section>
<script>
    document.addEventListener("DOMContentLoaded", function() {
        var form = document.getElementById("payment-form");
        
        form.addEventListener("submit", function(event) {
            var cardNumber = form.elements["CardNumber"].value;
            var cvv = form.elements["CardCVV"].value;
            
            // Regular expressions for 8-digit card number and 3-digit CVV
            var cardNumberPattern = /^\d{8}$/;
            var cvvPattern = /^\d{3}$/;
            
            if (!cardNumberPattern.test(cardNumber)) {
                alert("Card number must be 8 digits.");
                event.preventDefault(); // Prevent form submission
            }
            
            if (!cvvPattern.test(cvv)) {
                alert("CVV must be 3 digits.");
                event.preventDefault(); // Prevent form submission
            }
        });
    });
</script>

     
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
<script src="payment.js"></script>



  



</body>
</html>
