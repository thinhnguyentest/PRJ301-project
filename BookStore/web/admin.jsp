<%-- 
    Document   : admin
    Created on : 29-02-2024, 10:00:51
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Trang quản lý admin</title>
        <!-- Bổ sung các tệp CSS và JavaScript ở đây -->
        <link rel="stylesheet" href="account_assets/css/admin.css"/>
    </head>
    <body>
        <header>
            <h1>Quản lý admin</h1>
            <nav>
                <ul>
                    <li><a href="#users">Người dùng</a></li>
                    <li><a href="#books">Sách</a></li>
                    <li><a href="#transactions">Giao dịch</a></li>
                </ul>
            </nav>
        </header>

    <!--Quan li user-->    
    <jsp:include page="adminUser.jsp"></jsp:include>
    <!--end-->
    <section id="books">
        <h2>Danh sách sách</h2>
        <table>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Tác giả</th>
                    <th>Nhà xuất bản</th>
                    <th>Tiêu đề</th>
                    <th>Thể loại</th>
                    <th>Mô tả</th>
                    <th>Số lượng</th>
                    <th>Giá</th>
                    <th>Hình ảnh</th>
                    <th>Thao tác</th>
                </tr>
            </thead>
            <tbody>
                <!-- Hiển thị dữ liệu sách từ máy chủ -->
                <tr>
                    <td>1</td>
                    <td>Tên tác giả</td>
                    <td>Tên nhà xuất bản</td>
                    <td>Tiêu đề sách</td>
                    <td>Thể loại sách</td>
                    <td>Mô tả sách</td>
                    <td>10</td>
                    <td>$19.99</td>
                    <td><img src="book_image.jpg" alt="Book Image"></td>
                    <td>
                        <button onclick="editBook(1)">Sửa</button>
                        <button onclick="deleteBook(1)">Xóa</button>
                    </td>
                </tr>
                <!-- Thêm các dòng khác tương tự cho các sách khác -->
            </tbody>
        </table>

        <!-- Biểu mẫu thêm/sửa sách -->
        <div id="bookForm" style="display: none;">
            <h3>Biểu mẫu Sách</h3>
            <form id="bookForm">
                <!-- Thêm các trường và nút cần thiết -->
                <fieldset>
                    <legend>Author Information</legend>
                    <label for="authorName">Name:</label>
                    <input type="text" id="authorName" name="authorName" required><br>

                    <label for="birthday">Birth Date:</label>
                    <input type="date" id="birthDate" name="birthDate" required><br>

                    <label for="bio">Bio:</label>
                    <textarea id="bio" name="bio" rows="4" cols="50" required></textarea><br>
                </fieldset>

                <fieldset>
                    <legend>Publisher Information</legend>
                    <label for="publisherName">Name:</label>
                    <input type="text" id="publisherName" name="publisherName" required><br>

                    <label for="establishedDate">Date Established:</label>
                    <input type="date" id="establishedDate" name="establishedDate" required><br>
                </fieldset>

                <fieldset>
                    <legend>Book Information</legend>
                    <label for="bookTitle">Title:</label>
                    <input type="text" id="bookTitle" name="bookTitle" required><br>

                    <label for="genre">Genre:</label>
                    <input type="text" id="genre" name="genre" required><br>

                    <label for="description">Description:</label>
                    <textarea id="description" name="description" rows="4" cols="50" required></textarea><br>

                    <label for="quantity">Quantity:</label>
                    <input type="number" id="quantity" name="quantity" required><br>

                    <label for="price">Price:</label>
                    <input type="number" id="price" name="price" step="0.01" required><br>

                    <label for="image">Select Image :</label>
                    <input type="file" name="image" id="image" required>
                </fieldset>

                <button type="button" onclick="saveBook()">Lưu</button>
                <button type="button" onclick="cancelBookForm()">Hủy</button>
            </form>
        </div>
    </section>

    <section id="transactions">
        <h2>Quản lý Giao dịch</h2>
        <!-- Đặt bảng hoặc danh sách giao dịch ở đây -->
    </section>

    <footer>
        <p>&copy; 2024 Trang web bán sách</p>   
    </footer>
</body>

</html>

