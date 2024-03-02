
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

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
                    <c:forEach var="user" items="${users}">
                        <tr data-user-id="${user.id}" data-user-username="${user.username}" data-user-password="${user.password}" data-user-name="${user.name}" data-user-email="${user.email}" data-user-phone="${user.phone}" data-user-address="${user.address}" data-user-role="${user.role}" data-user-is-active="${user.isActive}">
                            <td>${user.id}</td>
                            <td>${user.username}</td>
                            <td>${user.password}</td>
                            <td>${user.name}</td>
                            <td>${user.email}</td>
                            <td>${user.phone}</td>
                            <td>${user.address}</td>
                            <td>${user.role}</td>
                            <td>${user.isActive?"Hoạt động":"Không hoạt động"}</td>
                            <td>
                                <a href="#userForm"><button onclick="editBook(${user.id})">Sửa</button></a>
                                <button onclick="deleteUser(${user.id})">Xóa</button>
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
            <h1>User Management</h1>

            <table border="1">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>USERNAME</th>
                        <th>PASSWORD</th>
                        <th>NAME</th>
                        <th>EMAIL</th>
                        <th>PHONE</th>
                        <th>ADDRESS</th>
                        <!-- Các trường dữ liệu bổ sung -->
                        <th>ROLE</th>
                        <th>ISACTIVE</th>

                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="user" items="${requestScope.userList}">
                        <tr>
                            <td><c:out value="${user.id}" /></td>
                            <td><c:out value="${user.username}" /></td>
                            <td><c:out value="${user.password}" /></td>
                            <td><c:out value="${user.name}" /></td>
                            <td><c:out value="${user.email}" /></td>
                            <td><c:out value="${user.phone}" /></td>
                            <!-- Hiển thị các trường dữ liệu bổ sung -->
                            <td><c:out value="${user.address}" /></td>
                            <td><c:out value="${user.role}" /></td>
                            <td><c:out value="${user.isActive ? 'Yes' : 'No'}" /></td>
                            <td>
                                <form action="delete">
                                    <input type="hidden" name="id" value="${user.id}">
                                    <a href="#" onclick="parentNode.submit();">Delete</a>
                                </form>
                                <form action="update.jsp">
                                    <input type="hidden" name="id" value="${user.id}">
                                    <input type="hidden" name="name" value="${user.username}">
                                    <input type="hidden" name="email" value="${user.password}">
                                    <input type="hidden" name="phone" value="${user.name}">
                                    <input type="hidden" name="address" value="${user.email}">
                                    <input type="hidden" name="role" value="${user.phone}">         
                                    <!-- Các trường dữ liệu bổ sung -->
                                    <input type="hidden" name="additionalField1" value="$${user.address}">
                                    <input type="hidden" name="additionalField2" value="${user.role}">
                                    <input type="hidden" name="isActive" value="${user.isActive ? 'Yes' : 'No'}">
                                    <a href="#" onclick="parentNode.submit();">Update</a>
                                </form>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
    </body>
</html>

