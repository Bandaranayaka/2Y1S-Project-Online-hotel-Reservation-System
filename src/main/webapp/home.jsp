<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@page import="com.Classes.*" %>

<%
	User user = (User) session.getAttribute("user");
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
                <% if (user == null){%>
               	<h2>NICE AND COMFORTABLE PLACE TO STAY</h2>
               	<% } else {%>
               	<h2>Hi <%= user.getUserName() %></h2>
               	<% } %>
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
                 <li><a href = "GetUserPayment">My Payment</a></li>
                <li><a href = "book.jsp">Book Now</a></li>
            </ul>
           	<a href="Logout"><button class = "btn sign-up">Log Out</button></a>
           	<% } %>
        </div>
        <!-- end of side navbar -->

        <!-- fullscreen modal -->
        <div id = "modal"></div>
        <!-- end of fullscreen modal -->
  


		



        <!-- body content  -->
        <section class = "services sec-width" id = "services">
            <div class = "title">
                <h2>services</h2>
            </div>
            <div class = "services-container">
                <!-- single service -->
                <article class = "service">
                    <div class = "service-icon">
                        <span>
                            <i class = "fas fa-utensils"></i>
                        </span>
                    </div>
                    <div class = "service-content">
                        <h2>Food Service/ Food Runner</h2>
                        <p>Indulge in the epitome of culinary convenience with our Food Service/ Food Runner category in our online hotel reservation system. From the comfort of your room, savor a delectable journey of flavors. Our seamless platform allows you to peruse a tantalizing menu, place orders, and await a prompt and gracious delivery. Experience a symphony of tastes in the privacy of your sanctuary, as our Food Service ensures that every dish is a masterpiece. Elevate your stay with a fusion of exceptional service and gastronomic delight.</p>
                        <button type = "button" class = "btn">Know More</button>
                    </div>
                </article>
                <!-- end of single service -->
                <!-- single service -->
                <article class = "service">
                    <div class = "service-icon">
                        <span>
                            <i class = "fas fa-swimming-pool"></i>
                        </span>
                    </div>
                    <div class = "service-content">
                        <h2>Refreshment</h2>
                        <p>Elevate your stay to a symphony of flavors, where every sip and bite is a harmonious melody of taste and comfort. Immerse yourself in a world of choice, from aromatic coffees and teas to a selection of delectable pastries and snacks, all at your fingertips. With the ease of online ordering, savor these moments of tranquility and nourishment within the confines of your luxurious room. Unwind, refresh, and revitalize with our handpicked selection of delights, enhancing your hotel experience to pure perfection.</p>
                        <button type = "button" class = "btn">Know More</button>
                    </div>
                </article>
                <!-- end of single service -->
                <!-- single service -->
                <article class = "service">
                    <div class = "service-icon">
                        <span>
                            <i class = "fas fa-broom"></i>
                        </span>
                    </div>
                    <div class = "service-content">
                        <h2>Housekeeping</h2>
                        <p>Introducing our Housekeeping services, the epitome of meticulous care and luxury in our online hotel reservation system. Your comfort and well-being are our top priority, ensuring that your sanctuary is a pristine haven throughout your stay. With a few clicks, you can request room cleaning, fresh linens, and all the essentials that make your room an oasis of serenity. Our dedicated team of professionals is at your service, harmonizing efficiency with a commitment to cleanliness. Experience the art of hospitality where your every need is met, and your space is transformed into a haven of tranquility.</p>
                        <button type = "button" class = "btn">Know More</button>
                    </div>
                </article>
                <!-- end of single service -->
                <!-- single service -->
                <article class = "service">
                    <div class = "service-icon">
                        <span>
                            <i class = "fas fa-door-closed"></i>
                        </span>
                    </div>
                    <div class = "service-content">
                        <h2>Room Security</h2>
                        <p>Welcome to a realm of unparalleled safety and peace of mind with our Room Security feature in the online hotel reservation system. Our commitment to your well-being extends to every facet of your stay. Rest assured as you enter your private haven, equipped with state-of-the-art security measures, from keyless entry systems to secure digital locks. Your safety is our top priority, and our vigilant staff ensures your comfort through discreet surveillance and access control. Experience a worry-free, restful night's sleep, knowing that we've left no stone unturned in safeguarding your sanctuary. With us, your room isn't just secure; it's your tranquil retreat.</p>
                        <button type = "button" class = "btn">Know More</button>
                    </div>
                </article>
                <!-- end of single service -->
            </div>
        </section>

        <div class = "book">
            <form class = "book-form">
                <div class = "form-item">
                    <label for = "checkin-date">Check In Date: </label>
                    <input type = "date" id = "chekin-date">
                </div>
                <div class = "form-item">
                    <label for = "checkout-date">Check Out Date: </label>
                    <input type = "date" id = "chekout-date">
                </div>
                <div class = "form-item">
                    <label for = "adult">Adults: </label>
                    <input type = "number" min = "1" value = "1" id = "adult">
                </div>
                <div class = "form-item">
                    <label for = "children">Children: </label>
                    <input type = "number" min = "1" value = "1" id = "children">
                </div>
                <div class = "form-item">
                    <label for = "rooms">Rooms: </label>
                    <input type = "number" min = "1" value = "1" id = "rooms">
                </div>
                <div class = "form-item">
                    <a href="book.jsp"><button type = "button" class = "btn">book now</button></a>
                </div>
            </form>
        </div>

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
                        <p>"I was blown away by the seamless experience this  online reservation system provided. From choosing the perfect room to enjoying exquisite in-room dining, it exceeded my expectations in every way."</p>
                        <img src = "image\we love it 1.jpg" alt = "customer image">
                        <span>Romesh,Sri Lanka</span>
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
                        <h3>Comfortable Living</h3>
                        <p>"The comfort of my stay was beyond words. The plush beds, cozy ambiance, and attention to every detail made it feel like a home away from home. I couldn't have asked for a more comfortable and relaxing experience."</p>
                        <img src = "image\comfortable living.jpg" alt = "customer image">
                        <span>Luca Rossi,Italy</span>
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
                        <h3>Nice Place</h3>
                        <p>"The place exceeded my expectations! From the elegant decor to the breathtaking views, it was a true paradise. Thank you for making my stay so incredibly memorable."</p>
                        <img src = "image\nice place-3.jpg" alt = "customer image">
                        <span>Emily,United States</span>
                    </div>
                    <!-- end of single customer -->
                </div>
            </div>
        </section>
        <!-- end of body content -->









        <section class="container team_Container mySwiper">
            
            <div class = "title">
                <h2>Our Strength</h2>
            </div>
            <div class="swiper-wrapper">
             <article class="team swiper-slide">
               <div class="avatar">
                 <img src="web videos\17.png">
               </div>
               <div class="team_info">
                 <h5>Sayuni Ellepola</h5>
                 <small>Administrator</small>
               </div>
               <div class="team_body">
                 <p>
                   responsible for managing and configuring the our hotel. research and analyze financial markets and securities.
                 </p>
               </div>
             </article>

             <article class="team swiper-slide">
               <div class="avatar">
                 <img src="web videos\6.png">
               </div>
               <div class="team_info">
                 <h5>Thilakshana Bandaranayaka</h5>
                 <small>IT Department</small>
               </div>
               <div class="team_body">
                 <p>
                    consists of professionals responsible for managing and maintaining our hotel.
                 </p>
               </div>
             </article>

             <article class="team swiper-slide">
               <div class="avatar">
                 <img src="web videos\hiranya.png">
               </div>
               <div class="team_info">
                 <h5>Nethmini Hiranya </h5>
                 <small>Account Manager</small>
               </div>
               <div class="team_body">
                 <p>
                  responsible for overseeing and managing specific customer�accounts.
                 </p>
               </div>
             </article>


             <article class="team swiper-slide">
               <div class="avatar">
                 <img src="web videos\hiranya.png">
               </div>
               <div class="team_info">
                 <h5>Ridmi Rupasingha</h5>
                 <small>Customer Support</small>
               </div>
               <div class="team_body">
                 <p>
                   responsible for assisting customers with their inquiries, issues, and requests related to our hotel system.
                 </p>
               </div>
             </article>

             

             

            </div>
            <div class="swiper-pagination"></div>
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