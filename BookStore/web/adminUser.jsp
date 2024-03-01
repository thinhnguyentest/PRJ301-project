
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User Management</title>

</head>
<body>
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

