<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <!-- basic -->
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- mobile metas -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="viewport" content="initial-scale=1, maximum-scale=1">
        <!-- site metas -->
        <title>DBI</title>
        <meta name="keywords" content="">
        <meta name="description" content="">
        <meta name="author" content="">
        <!-------------------------------------------------------------------------------->
        <!-- bootstrap css -->
        <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css">

        <!-- fevicon -->
        <link rel="icon" href="assets/assets/images/fevicon.png" type="image/gif" />
        <!-- Scrollbar Custom CSS -->
        <link rel="stylesheet" href="assets/css/jquery.mCustomScrollbar.min.css">
        <!-- Tweaks for older IEs-->
        <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
        <!-- owl stylesheets --> 
        <link rel="stylesheet" href="assets/css/owl.carousel.min.css">
        <link rel="stylesheet" href="assets/css/owl.theme.default.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css" media="screen">
        <link href="https://unpkg.com/gijgo@1.9.13/css/gijgo.min.css" rel="stylesheet" type="text/css" />

        <link href="css/prettyPhoto.css" rel="stylesheet">
        <link href="css/price-range.css" rel="stylesheet">
        <link href="css/bookDetail.css" rel="stylesheet">  
        <!-------------------------------------------------------------------------------->
    </head>
    <body>
        <!-- header section start -->
        <jsp:include page="header.jsp" ></jsp:include>

        <div id="product_detail" class="container">
            <div class="row">                  
                <div class="col-sm-12 padding-right">
                    <div class="product-details"> 
                        <div class="row">                          
                            <div class="col-sm-5">                                                  

                                <div id="carouselExample" class="carousel slide">
                                    <div class="carousel-inner">
                                        <div class="carousel-item active">
                                            <img src="assets/images/img-3.png" class="d-block w-100" alt="...">
                                        </div>
                                        <div class="carousel-item">
                                            <img src="assets/images/img-3.png" class="d-block w-100" alt="...">
                                        </div>
                                        <div class="carousel-item">
                                            <img src="assets/images/img-3.png" class="d-block w-100" alt="...">
                                        </div>
                                    </div>
                                    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExample" data-bs-slide="prev">
                                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                        <span class="visually-hidden">Previous</span>
                                    </button>
                                    <button class="carousel-control-next" type="button" data-bs-target="#carouselExample" data-bs-slide="next">
                                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                        <span class="visually-hidden">Next</span>
                                    </button>
                                </div>

                                <!-- Controls -->
                                <a class="left item-control" href="#product-images" data-slide="prev">
                                    <i class="fa fa-angle-left"></i>
                                </a>
                                <a class="right item-control" href="#product-images" data-slide="next">
                                    <i class="fa fa-angle-right"></i>
                                </a>
                            </div>

                            <div class="col-sm-7">
                                <div class="product-information"><!--/product-information-->                            
                                    <h2 class="detail_title">Title</h2>                               
                                    <p>Doraemon</p>
                                    <h2 class="detail_title">Price</h2>
                                    <h3 class="detail_title" >Details</h3>
                                    <p><b>Nhà xuất bản: </b>Publisher Name</p>
                                    <p><b>Tác giả: </b>Author Name</p>

                                    <h3 clase "detail_title">Mô tả sản phẩm</h3>
                                    <p id="short-description">Description of the book goes here.</p>
                                    <a href="#details" data-toggle="tab">Xem thêm...</a>
                                    <br>
                                    <h3>Số lượng: </h3>
                                    <form id="cart">
                                        <div class="input-group mb-3">
                                            <button class="btn btn-quantity" onclick="quantityChange(-1)" type="button">-</button>
                                            <input type="text" value="1" id="quantityInput">
                                            <button class="btn btn-quantity" onclick="quantityChange(1)" type="button">+</button>
                                        </div>

                                        <div class="d-grid gap-2 d-md-block">
                                            <button class="btn btn-default cart" type="button" id="buy-button" onclick="addToCart(book_id, document.getElementById('quantityInput').value)">
                                                <i class="fa fa-shopping-cart"></i>
                                                Thêm vào giỏ
                                            </button>
                                        </div>
                                    </form>
                                </div><!--/product-information-->
                            </div>
                        </div>
                    </div><!--/product-details-->         
                </div>
            </div>
        </div>  
        <!-- cooming  section end -->
        <!-- footer  section start -->
        <div class="footer_section layout_padding">
            <div class="container">
                <div class="footer_menu">
                    <h2 style="color: white;">follow page</h2>
                </div>
                <div class="social_icon">
                    <ul>
                        <li><a href="#"><img src="assets/images/fb-icon.png"></a></li>
                        <li><a href="#"><img src="assets/images/twitter-icon.png"></a></li>
                        <li><a href="#"><img src="assets/images/linkedin-icon.png"></a></li>
                        <li><a href="#"><img src="assets/images/instagram-icon.png"></a></li>
                    </ul>
                </div>
            </div>
        </div>
        <!-- footer  section end -->
        <!-- copyright section start -->
        <div class="copyright_section">
            <div class="container">
                <div class="copyright_text">Copyright 2019 All Right Reserved By <a href="https://html.design">Free html Templates</a></div>
            </div>
        </div>
        <!-- copyright section end -->
        <!-- Javascript files-->
        <script src="js/jquery.min.js"></script>
        <script src="js/popper.min.js"></script>
        <script src="js/bootstrap.bundle.min.js"></script>
        <script src="js/jquery-3.0.0.min.js"></script>
        <!-- sidebar -->
        <script src="js/jquery.mCustomScrollbar.concat.min.js"></script>
        <script src="js/custom.js"></script>
        <!-- javascript --> 
        <script src="js/owl.carousel.js"></script>
        <script src="https:cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.js"></script>
        <script src="https://unpkg.com/gijgo@1.9.13/js/gijgo.min.js" type="text/javascript"></script>
        <script>
                                                $('#datepicker').datepicker({
                                                    uiLibrary: 'bootstrap4'
                                                });
        </script>
        <script type="text/javascript">
            var i = 1;
            function quantityChange(n) {
                var quantity = document.getElementById("quantityInput");
                i = i + n;
                if (i < 1) {

                    i = 1;
                }
                quantity.value = i;
            }

        </script>
    </body>
</html>