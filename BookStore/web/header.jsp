<%-- 
    Document   : header.jsp
    Created on : 28-02-2024, 20:30:36
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
        
        
        <!-------------------------------------------------------------------------------->
        <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css">
        <!-- style css -->
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
        <link rel="stylesheet" href="assets/css/owl.theme.default.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css" media="screen">
        <link href="https://unpkg.com/gijgo@1.9.13/css/gijgo.min.css" rel="stylesheet" type="text/css" />
        <!-------------------------------------------------------------------------------->

    </head>
    <body>
        <header class="header_section">
            <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <a class="logo" href="index.html"><img src="assets/images/logo.png"></a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav mr-auto">
                        <li class="row nav-item active menu">
                            <a href="#" id="dropdownButton"><button class="navbar-toggler col-lg-6" data-target="#navbarSupportedContent" data-toggle="collapse" type="button" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"></button></a>
                            <span class="navbar-toggler-icon"></span>
                            <div id="dropdownContent" class="hidden" hidden="">
                                <!-- Danh sách các categories -->
                                <ul>
                                    <li>All Book</li>
                                    <li>Best Saler</li>
                                    <li>New Arrivals</li>
                                    <li>Decolonization</li>
                                    <li>Fiction</li>
                                    <li>Poetry</li>
                                    <li>Comic & Graphic Novel</li>
                                    <li>Language</li>
                                </ul>
                            </div>
                            <a class="nav-link single-line col-lg-6 " id="menu_text" href="index.html">ALL CATEGORIES</a>
                        </li>
                        <li class="nav-item ">
                            <a class="nav-link single-line" href="movies.html">All BOOKS</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link single-line" href="movies.html">NEW ARRIVALS</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link single-line" href="tv.html">FAQ</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link single-line" href="celebs.html">CONTACT</a>
                        </li>
                        <li class="nav-item ">
                            <a class="nav-link single-line" href="index.html">ABOUT US</a>
                        </li>
                        <li class="nav-item ">
                            <a class="nav-link single-line" href="index.html">DECOLONIZATION</a>
                        </li>
                    </ul>

                    <div class="search_icon"><a href="registration.jsp"><img src="assets/images/eye-icon.png"><span class="padding_left_15">Register</span></a></div>
                    <div class="search_icon"><a href="login.jsp"><img src="assets/images/user-icon.png"><span class="padding_left_15">login</span></a></div>
                    <div class="search_icon"><a href="#"><img src="assets/images/search-icon.png"><span class="padding_left_15">Search...</span></a></div>
                    <div class="search_icon"><a href="#"><img class="image_cart" src="assets/images/image-cart_90604.png"><span class="padding_left_15">Cart</span></a></div>
                </div>
            </nav>
        </header>
    </body>
</html>
