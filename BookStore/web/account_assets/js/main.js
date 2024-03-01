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
        // Retrieve the book details from the hidden input field
//        var bookDetails = JSON.parse(document.getElementById("bookDetails_" + bookId).value);
//
//        // Set the values into the input fields in the bookForm
//        document.getElementById("authorName").value = bookDetails.author.name;
//        document.getElementById("birthday").value = bookDetails.author.birthday; // Assuming author has a birthday property
//        document.getElementById("bio").value = bookDetails.author.bio;
//
//        document.getElementById("publisherName").value = bookDetails.publisher.publisherName;
//        document.getElementById("establishedDate").value = bookDetails.publisher.establishedDate; // Assuming publisher has an establishedDate property
//
//        document.getElementById("genre").value = bookDetails.genre;
//        document.getElementById("description").value = bookDetails.description;
//        document.getElementById("quantity").value = bookDetails.quantity;
//        document.getElementById("price").value = bookDetails.price;
//
//        // Assuming you want to display the selected image in the form
//        document.getElementById("image").src = "assets/images/book/" + bookDetails.image;

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