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