<%-- 
    Document   : adminBook
    Created on : 29-02-2024, 10:40:08
    Author     : tuanngp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>

    <body>
        <section id="books">
            <button onclick="showBookForm()">Thêm sách</button>
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
                    <c:forEach var="book" begin="1" end="5">
                        <tr>
                            <td>${book}</td>
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
                    </c:forEach>
                    <!-- Thêm các dòng khác tương tự cho các sách khác -->
                </tbody>
            </table>
            <c:if test="${totalPages > 1}">
                <div>
                    <c:forEach var="i" begin="1" end="${totalPages}">
                        <c:choose>
                            <c:when test="${i == currentPage}">
                                <span>${i}</span>
                            </c:when>
                            <c:otherwise>
                                <a href="?page=${i}">${i}</a>
                            </c:otherwise>
                        </c:choose>
                    </c:forEach>
                </div>
            </c:if>
            <!-- Biểu mẫu thêm/sửa sách -->
            <div id="bookForm" style="display: none;">
                <h3>Biểu mẫu Sách</h3>
                <form id="bookForm" action="book">
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

                    <!-- Publisher Information -->
                    <fieldset>
                        <legend>Publisher Information</legend>
                        <label for="publisherName">Name:</label>
                        <input type="text" id="publisherName" name="publisherName" required><br>

                        <label for="establishedDate">Date Established:</label>
                        <input type="date" id="establishedDate" name="establishedDate" required><br>
                    </fieldset>

                    <!-- Book Information -->
                    <fieldset>
                        <legend>Book Information</legend>
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
        <script>
            // Thêm các hàm xử lý sự kiện tương ứng cho Người dùng
            function showBookForm() {
                document.getElementById("bookForm").style.display = "block";
            }

            function cancelBookForm() {
                document.getElementById("bookForm").style.display = "none";
            }

            function saveBook() {
                // Xử lý lưu thông tin Người dùng
                cancelBookForm();
            }

            function editBook(bookId) {
                // Xử lý sửa thông tin Người dùng
                showBookForm();
            }

            function deleteBook(bookId) {
                // Xử lý xóa Người dùng
                // Gọi API hoặc xử lý dữ liệu theo nhu cầu của bạn
            }
        </script>
    </body>
</html>