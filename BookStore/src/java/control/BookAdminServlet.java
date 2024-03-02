package control;

import entity.Product.Author;
import entity.Product.Book;
import entity.Product.Publisher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.nio.file.Paths;
import java.sql.Date;
import java.util.Enumeration;
import java.util.Properties;
import javafx.scene.shape.Path;

@WebServlet(name = "BookAdminServlet", urlPatterns = {"/bookAdmin"})
public class BookAdminServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        String msg = "";
        try {
            // Get Author Information
            Author author = getAuthorFromRequest(request);

            // Get Publisher Information
            Publisher publisher = getPublisherFromRequest(request);

            // Get Book Information
            Book book = getBookFromRequest(request, author, publisher);

            String action = request.getParameter("action");

            switch (action) {
                case "add":
                    msg = add(book, author, publisher) ? "Thêm sách thành công" : "Đã xảy ra lỗi, thêm sách thất bại!";
//                    addImage(request, book);
                    break;
                case "update":
                    msg = update(book, author, publisher) ? "Cập nhật thông tin sách thành công!" : "Đã xảy ra lỗi, cập nhật thông tin sách thất bại!";
                    break;
                case "delete":

                    break;
                default:
                    throw new IllegalArgumentException("Invalid action: " + action);
            }
        } catch (IllegalArgumentException e) {
        } finally {
            request.setAttribute("statusAdmin", msg);
//            out.print(msg);
            request.getRequestDispatcher("admin").forward(request, response);
        }

    }

    private Author getAuthorFromRequest(HttpServletRequest request) {
        try {
            int id = Integer.parseInt(request.getParameter("authorId"));
            String authorName = request.getParameter("authorName");
            String birthday = request.getParameter("birthday");
            String bio = request.getParameter("bio");
            return new Author(id, authorName, birthday.isEmpty() ? Date.valueOf("1900-01-01") : Date.valueOf(birthday), bio);
        } catch (NumberFormatException e) {
        }
        return null;
    }

    private Publisher getPublisherFromRequest(HttpServletRequest request) {
        try {
            int id = Integer.parseInt(request.getParameter("publisherId"));
            String publisherName = request.getParameter("publisherName");
            String establishedDate = request.getParameter("establishedDate");
            return new Publisher(id, publisherName, establishedDate.isEmpty() ? Date.valueOf("1900-01-01") : Date.valueOf(establishedDate));
        } catch (NumberFormatException e) {
        }
        return null;
    }

    private Book getBookFromRequest(HttpServletRequest request, Author author, Publisher publisher) {
        try {
            int bookId = Integer.parseInt(request.getParameter("bookId"));
            String bookTitle = request.getParameter("bookTitle");
            String genre = request.getParameter("genre");
            String description = request.getParameter("description");
            int quantity = Integer.parseInt(request.getParameter("quantity"));
            float price = Float.parseFloat(request.getParameter("price"));
            String image = request.getParameter("image");
            return new Book(bookId, bookTitle, genre, description, quantity, price, author, publisher, image);
        } catch (NumberFormatException e) {
        }
        return null;
    }

    private boolean add(Book book, Author author, Publisher publisher) throws ServletException, IOException {
        return author.addAuthor() && publisher.addPublisher() && book.addBook();
    }

    private boolean update(Book b, Author author, Publisher publisher) {
        return author.update() && publisher.update() && b.update();
    }

    private boolean addImage(HttpServletRequest request, Book book) throws ServletException, IOException {
        Part file = request.getPart("image");
        String projectPath = System.getProperty("user.dir");
        String imageFileName = file.getSubmittedFileName();
        System.out.println("Selected Image File Name : " + imageFileName);

        String uploadPath = projectPath + "/web/assets/images/book/" + imageFileName;
        System.out.println("Upload Path : " + uploadPath);

        // Uploading our selected image into the images folder
        try ( FileOutputStream fos = new FileOutputStream(uploadPath)) {
            InputStream is = file.getInputStream();

            byte[] data = new byte[is.available()];
            is.read(data);
            fos.write(data);
        } catch (IOException e) {
            e.printStackTrace();
        }
        return book.addImage();
    }
}
