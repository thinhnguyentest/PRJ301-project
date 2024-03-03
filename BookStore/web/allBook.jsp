<%@ page import="entity.Product.Book" %>
<%@ page import="dao.BookDAO" %>
<%@ page import="java.util.List" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <!-- site metas -->
        <title>All books</title>
         <!-------------------------------------------------------------------------------->
        <!-- bootstrap css -->
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
        <link rel="stylesheet" href="url"/>
        <!-------------------------------------------------------------------------------->
        <style>

        </style>
    </head>
    <body>


        <!--header-begin-->
        <jsp:include page="header.jsp" ></jsp:include>
            <!--header-end-->

            <!-- table left start -->
            <div class="row" style="background-color: #3c0e0e" >  
                <div class="col-lg-4">
                    <!--ALL CATEGORIERS -->
                    <div class="table-left 4">
                        <div class="list_categories">
                            <h2>ALL CATEGORIES</h2>
                            <ul>
                                <li><a href="allBook.jsp">All Book</a></li>
                                <li><a href="allBook.jsp">Best Saler</a></li>
                                <li><a href="allBook.jsp">New Arrivals</a></li>
                                <li><a href="allBook.jsp">Decolonization</a></li>
                                <li><a href="allBook.jsp">Fiction</a></li>
                                <li><a href="allBook.jsp">Poetry</a></li>
                                <li><a href="allBook.jsp">Comic & Graphic Novel</a></li>
                                <li><a href="allBook.jsp">Language</a></li>
                            </ul>
                        </div>                            
                    </div>
                    <!--AUTHOR -->
                    <div class="table-left ">
                        <div class="list_categories">
                            <h2>AUTHOR</h2>
                            <ul>
                                <li class="checkbox-container">
                                    <span>
                                        <input type="checkbox" id="author1Checkbox" name="myCheckbox">
                                        <label for="author1Checkbox">author 1</label>
                                    </span></li>
                            </ul>
                        </div>                            
                    </div>
                    <!--ALL CATEGORIERS -->
                    <div class="table-left ">
                        <div class="Price_categories">
                            <h2>PRICE RANGE</h2>
                            <ul>
                                
                                    <li class="checkbox-container">
                                            <a href="#"><span>
                                            <input type="checkbox" id="author9Checkbox" name="myCheckbox">
                                            <label for="author9Checkbox">author 1</label>
                                        </span></a></li>
                            </ul>
                        </div>                            
                    </div>
                    <!--ALL CATEGORIERS -->
                    <div class="table-left ">
                        <div class="list_categories">
                            <h2>FORMAT</h2>
                            <ul>
                                <li class="checkbox-container">
                                    <span>
                                        <input type="checkbox" id="author17Checkbox" name="myCheckbox">
                                        <label for="author17Checkbox">author 1</label>
                                    </span>
                                </li>
                                <li class="checkbox-container">
                                    <span>
                                        <input type="checkbox" id="author18Checkbox" name="myCheckbox">
                                        <label for="author18Checkbox">author 2</label>
                                    </span>
                                </li>
                            </ul>
                        </div>                            
                    </div>
                </div >
            <c:set var="books" value="${requestScope.books}" />
            <c:set var="count" value="0" />
            <c:set var="totalPages" value="${BookDAO.getNumberPage()}" />
            <c:set var="currentPage" value="${requestScope.indexPage}" />
            <div class="col-lg-8" style="background-color: #FFF">
                <!-- Inside the table where you display books -->
                <div class="row">
                    <c:forEach var="book" items="${books}">
                        <div class="col-lg-4">
                            <!-- Display book details here -->
                            <div class="book-container">
                                <h2>${book.title}</h2>
                                <div class="image-container">
                                    <img class="book-image" src="${book.image}" alt="${book.title} Image" width="200">
                                    <div class="overlay">
                                        <div class="overlay-content">
                                            <a href="cart?action=buy&id=${book.id}" class="buy-button">Buy</a>
                                        </div>
                                    </div>
                                </div>
                                <p>Price: ${book.price} VND</p>
                                <!-- Add more book details as needed -->
                            </div>
                        </div>

                        <c:set var="count" value="${count + 1}" />

                        <c:if test="${count % 3 == 0}">
                        </div><div class="row">
                        </c:if>
                    </c:forEach>
                </div>

                <!-- Pagination -->
                <div style="display: flex; justify-content: center; margin: 20px;">
                    <nav aria-label="Page navigation example">
                        <ul class="pagination">
                            <li class="page-item">
                                <c:forEach var="i" begin="1" end="${totalPages}">
                                <li class="page-item ${currentPage==i?"active":""}">
                                    <a class="page-link"  href="product?page=${i}">${i}</a>
                                </li>
                            </c:forEach>
                            </li>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
    </div>


    <!-- copyright section start -->
    <jsp:include page="footer.jsp" ></jsp:include>
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

</body>
</html>
