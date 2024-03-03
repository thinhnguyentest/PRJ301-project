// Thêm các hàm xử lý sự kiện tương ứng cho Người dùng
function showBookForm() {
    document.getElementById("bookForm").style.display = "block";
    document.getElementById("action").value = "add";
}

function cancelBookForm() {
    document.getElementById("bookForm").style.display = "none";
}

function saveBook() {
    // Xử lý lưu thông tin Người dùng
    cancelBookForm();
}

function editBook(bookId) {
//    // Xử lý sửa thông tin Người dùng
//    document.getElementById("action").value = "update";
//    document.getElementById("authorName").value = book.author.name;
//    document.getElementById("birthday").value = book.author.birthday; // Assuming author has a birthday property
//    document.getElementById("bio").value = book.author.bio;
//
//    document.getElementById("publisherName").value = book.publisher.name;
//    document.getElementById("establishedDate").value = book.publisher.establishedDate; // Assuming publisher has an establishedDate property
//
//    document.getElementById("genre").value = book.genre;
//    document.getElementById("description").value = book.description;
//    document.getElementById("quantity").value = book.quantity;
//    document.getElementById("price").value = book.price;

    // You may need to handle the book image separately based on your logic
    // For example, updating the image source in the form
    // document.getElementById("image").src = book.image;

    // Display the bookForm
    document.getElementById("bookForm").style.display = "block";
}

function deleteBook() {
    // Xử lý xóa Người dùng
    document.getElementById("action").value = "delete";
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