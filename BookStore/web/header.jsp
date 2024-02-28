<%-- 
    Document   : header
    Created on : Feb 28, 2024, 1:08:56 PM
    Author     : thinh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <!-- header section start -->
      <div class="header_section">
         <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <a class="logo" href="index.html"><img src="images/logo.png"></a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
            </button>
            
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
               <ul class="navbar-nav mr-auto">
                  <li class="row nav-item active menu">
                     <a href="#" id="dropdownButton"><button class="navbar-toggler col-lg-6" data-target="#navbarSupportedContent" data-toggle="collapse" type="button" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"></button></a>
                     <span class="navbar-toggler-icon"></span>
                     <div id="dropdownContent" class="hidden">
                        <!-- Danh sách các categories -->
                        <ul>
                          <li>Category 1</li>
                          <li>Category 2</li>
                          <li>Category 3</li>
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
               
               <div class="search_icon"><a href="#"><img src="images/eye-icon.png"><span class="padding_left_15">Register</span></a></div>
               <div class="search_icon"><a href="#"><img src="images/user-icon.png"><span class="padding_left_15">login</span></a></div>
               <div class="search_icon"><a href="#"><img src="images/search-icon.png"><span class="padding_left_15">Search...</span></a></div>
               <div class="search_icon"><a href="#"><img class="image_cart" src="images/image-cart_90604.png"><span class="padding_left_15">Cart</span></a></div>
            </div>
         </nav>
      </div>
      <!-- header section end -->
    </body>
</html>
