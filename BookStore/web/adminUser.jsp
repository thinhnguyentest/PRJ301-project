<%-- 
    Document   : adminUser
    Created on : 29-02-2024, 10:35:55
    Author     : tuanngp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="account_assets/css/admin.css"/>
    </head>
    <body>
        <section id="users">
            <h2>Danh sách Người dùng</h2>
            <table>
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Tên đăng nhập</th>
                        <th>Mật khẩu</th>
                        <th>Tên</th>
                        <th>Email</th>
                        <th>Điện thoại</th>
                        <th>Địa chỉ</th>
                        <th>Vai trò</th>
                        <th>Trạng thái</th>
                        <th>Thao tác</th>
                    </tr>
                </thead>
                <tbody>
                    <!-- Hiển thị dữ liệu người dùng từ máy chủ -->
                    <c:forEach var="user" items="${listusers}">
                        <tr>
                            <td>${user.id}</td>
                            <td>${user.username}</td>
                            <td>${user.password}</td>
                            <td>${user.name}</td>
                            <td>${user.email}</td>
                            <td>${user.phone}</td>
                            <td>${user.address}</td>
                            <td>${user.role}</td>
                            <td>${user.isActive}</td>
                            <td>
                                <button onclick="editUser(1)">Sửa</button>
                                <button onclick="deleteUser(1)">Xóa</button>
                            </td>
                        </tr>
                    </c:forEach>
                    <!-- Thêm các dòng khác tương tự cho các người dùng khác -->
                </tbody>
            </table>
            <c:if test="${totalPagesUser > 1}">
                <div class="pagination">
                    <c:forEach var="i" begin="1" end="${totalPagesUser}">
                        <c:choose>
                            <c:when test="${i == currentPageUser}">
                                <input name="pageUser" value="${i}" hidden="">
                                <span>${i}</span>
                            </c:when>
                            <c:otherwise>
                                <a href="?pageUser=${i}">${i}</a>
                            </c:otherwise>
                        </c:choose>
                    </c:forEach>
                </div>
            </c:if>

            <!-- Biểu mẫu thêm/sửa người dùng -->
            <div id="userForm" style="display: none;">
                <h3>Biểu mẫu Người dùng</h3>
                <form action="update" method="get">
                    <!-- Thêm các trường và nút cần thiết -->
                    <label for="userId">ID:</label>
                    <input type="text" id="userId" name="userId" readonly><br>

                    <label for="username">Tên đăng nhập:</label>
                    <input type="text" id="username" name="username" readonly><br>

                    <label for="password">Mật khẩu:</label>
                    <input type="password" id="password" name="password" required><br>

                    <label for="name">Tên:</label>
                    <input type="text" id="name" name="name" required><br>

                    <label for="email">Email:</label>
                    <input type="email" id="email" name="email" required><br>

                    <label for="phone">Điện thoại:</label>
                    <input type="tel" id="phone" name="phone" required><br>

                    <label for="address">Địa chỉ:</label>
                    <input type="text" id="address" name="address" required><br>

                    <label for="role">Vai trò:</label>
                    <input type="text" id="role" name="role" required><br>

                    <label for="isActive">Trạng thái:</label>
                    <select id="isActive" name="isActive">
                        <option value="true">Hoạt động</option>
                        <option value="false">Không hoạt động</option>
                    </select><br>

                    <button type="button" onclick="saveUser()">Lưu</button>
                    <button type="button" onclick="cancelUserForm()">Hủy</button>
                </form>
            </div>
        </section>
        <script>
            // Thêm các hàm xử lý sự kiện tương ứng cho Người dùng
            function showUserForm() {
                document.getElementById("userForm").style.display = "block";
            }

            function cancelUserForm() {
                document.getElementById("userForm").style.display = "none";
            }

            function saveUser() {
                // Xử lý lưu thông tin Người dùng
                cancelUserForm();
            }

            function editUser(userId) {
                // Xử lý sửa thông tin Người dùng
                showUserForm();
            }

            function deleteUser(userId) {
                // Xử lý xóa Người dùng
                // Gọi API hoặc xử lý dữ liệu theo nhu cầu của bạn
            }
        </script>
    </body>
</html>