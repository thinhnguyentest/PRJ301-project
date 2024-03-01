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
        <!-------------------------------------------------------------------------------->
        <style>
            .table-left{
                text-align: left;
                padding-left: 289px;
            }
            .hidden{
                display: none;
            }
            .table-left ul {
                border: 1px solid #df9911;
                padding: 10px;
                border-radius: 10px;
                margin-bottom: 20px;
            }
            .table-left ul a{
                color: #ececec;
                text-decoration: none; /* Loại bỏ gạch chân mặc định */
                transition: color 0.3s; /* Hiệu ứng chuyển đổi màu chữ trong 0.3s */
            }
            .table-left ul a:hover{
                color:#df9911;
            }
            .table-left h2{
                color: #ececec;
                margin-top: 40px;
                margin-bottom: 20px;
                padding-left: 10px;
                padding-top: 5px;
                background-color: #df9911;
                border: 1px solid;
                border-radius: 10px;
            }
            li{
                padding: 5px;
            }
            /* CSS cho checkbox */
            /* CSS cho checkbox */
            .checkbox-container {
                display: flex;
                align-items: center;
                margin-bottom: 5px;
            }

            /* Checkbox ẩn */
            .checkbox-container input[type="checkbox"] {
                appearance: none;
                -webkit-appearance: none;
                -moz-appearance: none;
                width: 20px;
                height: 20px;
                border-radius: 50%;
                border: 2px solid #df9911;
                outline: none;
                margin-right: 10px; /* Khoảng cách giữa checkbox và label */
                vertical-align: middle; /* Đặt checkbox vào giữa theo chiều dọc */
            }

            /* Màu nền của checkbox khi được chọn */
            .checkbox-container input[type="checkbox"]:checked {
                background-color: #df9911;
            }

            /* CSS cho label */
            .checkbox-container label {
                color: #ececec;
                vertical-align: middle; /* Đặt label vào giữa theo chiều dọc */
                cursor: pointer; /* Biến con trỏ thành hình bàn tay khi di chuột vào label */
            }

            /* CSS cho hover của label */
            .checkbox-container label:hover {
                color: #df9911;
            }

            /* CSS cho hover của anchor */
            .list_categories a:hover {
                text-decoration: none;
            }
            .book-container {
                position: relative;
            }

            .image-container {
                position: relative;
            }

            .overlay {
                position: absolute;
                top: 0;
                left: 0;
                width: 100%;
                height: 100%;
                background-color: rgba(255, 255, 255, 0.7);
                display: none;
                justify-content: center;
                align-items: center;
            }

            .book-container:hover .overlay {
                display: flex;
            }

            .overlay-content {
                text-align: center;
                position: absolute;
                top: 50%;
                left: 50%;
                transform: translate(-50%, -50%);
                width: 100%;
            }
            
            .buy-button {
                background-color: #4CAF50;
                color: white;
                padding: 10px 15px;
                text-align: center;
                text-decoration: none;
                display: inline-block;
                font-size: 16px;
                margin-top: 10px;
            }
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
                                <a href="allbook.jsp"><li>All Book</li></a>
                                <a href="allbook.jsp"><li>Best Saler</li></a>
                                <a href="tv.html"><li>New Arrivals</li></a>
                                <a href="allbook.jsp"><li>Decolonization</li></a>
                                <a href="allbook.jsp"><li>Fiction</li></a>
                                <a href="allbook.jsp"><li>Poetry</li></a>
                                <a href="allbook.jsp"><li>Comic & Graphic Novel</li></a>
                                <a href="allbook.jsp"><li>Language</li></a>
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
                                <a href="#">
                                <li class="checkbox-container"><span>
                                <input type="checkbox" id="author9Checkbox" name="myCheckbox">
                                <label for="author9Checkbox">author 1</label>
                                </span></li></a>
                            </ul>
                        </div>                            
                    </div>
                    <!--ALL CATEGORIERS -->
                    <div class="table-left ">
                        <div class="list_categories">
                            <h2>FORMAT</h2>
                            <ul>
                                <li class="checkbox-container"><span><input type="checkbox" id="author17Checkbox" name="myCheckbox"><label for="author17Checkbox">author 1</label>
                                    </span></li></a>
                                <li class="checkbox-container"><span><input type="checkbox" id="author18Checkbox" name="myCheckbox"><label for="author18Checkbox">author 2</label>
                                    </span></li></a>

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
                                    <img class="book-image" src="${pageContext.request.contextPath}/images/${book.images[0]}" alt="${book.title} Image" width="200">
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
