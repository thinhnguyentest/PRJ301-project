<%-- 
    Document   : header.jsp
    Created on : 28-02-2024, 20:30:36
    Author     : Tuanngp
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <!--CSS-->
        <link rel="stylesheet" href="assets/css/header.css"/>
        <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="assets/css/style.css">
        <!-- Responsive-->
        <link rel="stylesheet" href="assets/css/responsive.css">
        <!-- fevicon -->
        <link rel="icon" href="assets/images/fevicon.png" type="image/gif" />
        <!-- Scrollbar Custom CSS -->
        <link rel="stylesheet" href="assets/css/jquery.mCustomScrollbar.min.css">
        <!-- Tweaks for older IEs-->
        <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
        <!-- owl stylesheets --> 
        <link rel="stylesheet" href="assets/css/owl.carousel.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css" media="screen">
        <link href="https://unpkg.com/gijgo@1.9.13/css/gijgo.min.css" rel="stylesheet" type="text/css" />
        <style>
            
        </style>
    </head>
    <body>
        <header class="header_section">
            <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <a class="logo" href="index.jsp"><img src="assets/images/logo.png" alt="logo"></a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav mr-auto">
                        <li class="row nav-item active menu">
                            <div class="dropdown" onmouseover="openDropdown()" onmouseout="closeDropdown()">
                                <button class="btn btn-secondary dropdown-toggle" type="button" aria-expanded="false">
                                    CATEGORIES
                                </button>
                                <ul id="dropdown-menu">
                                    <li><button class="dropdown-item" type="button"><a href="allBook.jsp">All Book</a></button></li>
                                    <li><button class="dropdown-item" type="button"><a href="login.jsp">Best Saler</a></button></li>
                                    <li><button class="dropdown-item" type="button"><a href="allbook.jsp">New Arrivals</a></button></li>
                                    <li><button class="dropdown-item" type="button"><a href="allbook.jsp">Decolonization</a></button></li>
                                    <li><button class="dropdown-item" type="button"><a href="allbook.jsp">Fiction</a></button></li>
                                    <li><button class="dropdown-item" type="button"><a href="allbook.jsp">Poetry</a></button></li>
          
                                </ul>
                            </div>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link single-line" href="allBook.jsp">All BOOKS</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link single-line" href="product?action=newArrival">NEW ARRIVALS</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link single-line" href="faq.jsp">FAQ</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link single-line" href="contact.jsp">CONTACT</a>
                        </li>
                        <li class="nav-item ">
                            <a class="nav-link single-line" href="aboutus.jsp">ABOUT US</a>
                        </li>
                        <li class="nav-item ">
                            <a class="nav-link single-line" href="decolonization.jsp">DECOLONIZATION</a>
                        </li>
                    </ul>
                    <div class="search_icon">
                        <div id="search_input_wrapper">
                            <form action="search" >
                                <input type="text" id="search_input" placeholder="Search..." onblur="hideSearch()">
                                <button type="submit" class="btn btn-outline-primary" data-mdb-ripple-init>search</button>
                            </form>                        
                        </div>
                    </div>
                    <div class="search_icon"><a href="registration.jsp"><img src="assets/images/eye-icon.png" alt=""><span class="padding_left_15">Register</span></a></div>
                    <div class="search_icon"><a href="login.jsp"><img src="assets/images/user-icon.png" alt=""><span class="padding_left_15">login</span></a></div>
                    <div class="search_icon"><a href="#"><img src="assets/images/search-icon.png" alt=""><span class="padding_left_15">Search...</span></a></div>
                    <div class="search_icon">
                        <a href="cart">
                            <img class="image_cart" src="assets/images/image-cart_90604.png" alt="Cart image">
                            <c:if test="${not empty sessionScope.cart}"> 
                                <div class="cart-overlay">

                                    ${sessionScope.cart.size()}  

                                </div>
                            </c:if>
                            <span class="padding_left_15">Cart</span>
                        </a> 
                    </div>
                </div>
            </nav>
        </header>
    </body>
</html>
