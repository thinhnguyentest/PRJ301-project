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
</head>
<style>
body {
    font-family: 'Arial', sans-serif;
    background-color: #f4f4f4;
}

header {
    background-color: #333;
    color: #fff;
    padding: 15px 0;
    text-align: center;
}

nav ul {
    list-style: none;
    margin-top: 15px;
}

nav ul li {
    display: inline;
    margin-right: 20px;
}

nav a {
    text-decoration: none;
    color: #fff;
    font-weight: bold;
    transition: color 0.3s ease;
}

nav a:hover {
    color: #ffd700;
}

section {
    background-color: #fff;
    margin: 20px;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

h2 {
    color: #333;
}

table {
    width: 100%;
    border-collapse: collapse;
    margin-top: 20px;
}

table, th, td {
    border: 1px solid #ddd;
}

th, td {
    padding: 12px;
    text-align: left;
}

th {
    background-color: #333;
    color: #fff;
}

footer {
    background-color: #333;
    color: #fff;
    text-align: center;
    padding: 10px;
    position: fixed;
    bottom: 0;
    width: 100%;
}
</style>
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

    <section id="users">
        <h2>Quản lý Người dùng</h2>
        <!-- Đặt bảng hoặc danh sách người dùng ở đây -->
    </section>

    <section id="books">
        <h2>Quản lý Sách</h2>
        <!-- Đặt bảng hoặc danh sách sách ở đây -->
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

