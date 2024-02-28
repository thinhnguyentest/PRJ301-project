<%-- 
    Document   : newarrivals
    Created on : Feb 28, 2024, 12:55:09 PM
    Author     : thinh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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
      <!-- bootstrap css -->
      <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
      <!-- style css -->
      <link rel="stylesheet" type="text/css" href="css/style.css">
      <!-- Responsive-->
      <link rel="stylesheet" href="css/responsive.css">
      <!-- fevicon -->
      <link rel="icon" href="images/fevicon.png" type="image/gif" />
      <!-- Scrollbar Custom CSS -->
      <link rel="stylesheet" href="css/jquery.mCustomScrollbar.min.css">
      <!-- Tweaks for older IEs-->
      <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
      <!-- owl stylesheets --> 
      <link rel="stylesheet" href="css/owl.carousel.min.css">
      <link rel="stylesheet" href="css/owl.theme.default.min.css">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css" media="screen">
      <link href="https://unpkg.com/gijgo@1.9.13/css/gijgo.min.css" rel="stylesheet" type="text/css" />
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

          
      </style>
    </head>
    <body>
        <!--header start-->
        <%@include file="header.jsp" %>
        <!--header end-->
        <!-- table left start -->
      <div class="row" style="background-color: #3c0e0e">  
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
                    <li class="checkbox-container"><span><input type="checkbox" id="author1Checkbox" name="myCheckbox"><label for="author1Checkbox">author 1</label>
                                              </span></li></a>
                    <li class="checkbox-container"><span><input type="checkbox" id="author2Checkbox" name="myCheckbox"><label for="author2Checkbox">author 2</label>
                                              </span></li></a>
                    <li class="checkbox-container"><span><input type="checkbox" id="author3Checkbox" name="myCheckbox"><label for="author3Checkbox">author 3</label>
                                              </span></li></a>
                    <li class="checkbox-container"><span><input type="checkbox" id="author4Checkbox" name="myCheckbox"><label for="author4Checkbox">author 4</label>
                                              </span></li></a>
                    <li class="checkbox-container"><span><input type="checkbox" id="author5Checkbox" name="myCheckbox"><label for="author5Checkbox">author 5</label>
                                              </span></li></a>
                    <li class="checkbox-container"><span><input type="checkbox" id="author6Checkbox" name="myCheckbox"><label for="author6Checkbox">author 6</label>
                                              </span></li></a>
                    <li class="checkbox-container"><span><input type="checkbox" id="author7Checkbox" name="myCheckbox"><label for="author7Checkbox">author 7</label>
                                              </span></li></a>
                    <li class="checkbox-container"><span><input type="checkbox" id="author8Checkbox" name="myCheckbox"><label for="author8Checkbox">author 8</label>
                                              </span></li></a>
                </ul>
            </div>                            
          </div>
          <!--ALL CATEGORIERS -->
          <div class="table-left ">
            <div class="Price_categories">
                <h2>PRICE RANGE</h2>
                <ul>
                    <li class="checkbox-container"><span><input type="checkbox" id="author9Checkbox" name="myCheckbox"><label for="author9Checkbox">author 1</label>
                                              </span></li></a>
                    <li class="checkbox-container"><span><input type="checkbox" id="author10Checkbox" name="myCheckbox"><label for="author10Checkbox">author 2</label>
                                              </span></li></a>
                    <li class="checkbox-container"><span><input type="checkbox" id="author11Checkbox" name="myCheckbox"><label for="author11Checkbox">author 3</label>
                                              </span></li></a>
                    <li class="checkbox-container"><span><input type="checkbox" id="author12Checkbox" name="myCheckbox"><label for="author12Checkbox">author 4</label>
                                              </span></li></a>
                    <li class="checkbox-container"><span><input type="checkbox" id="author13Checkbox" name="myCheckbox"><label for="author13Checkbox">author 5</label>
                                              </span></li></a>
                    <li class="checkbox-container"><span><input type="checkbox" id="author14Checkbox" name="myCheckbox"><label for="author14Checkbox">author 6</label>
                                              </span></li></a>
                    <li class="checkbox-container"><span><input type="checkbox" id="author15Checkbox" name="myCheckbox"><label for="author15Checkbox">author 7</label>
                                              </span></li></a>
                    <li class="checkbox-container"><span><input type="checkbox" id="author16Checkbox" name="myCheckbox"><label for="author16Checkbox">author 8</label>
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
          </div>
          <!-- list product start -->
          <div class="col-lg-8">
              
          </div>
          <!-- list product end -->
           
       </div>
      <!-- left_table end -->
        <!-- footer start -->
        <%@include file="footer.jsp" %>
        <!-- footer end -->
        
        
    </body>
</html>
