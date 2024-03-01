package control;

import entity.Product.Author;
import entity.Product.Book;
import entity.Product.Publisher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Date;

@WebServlet(name = "BookServlet", urlPatterns = {"/book"})
public class BookServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
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
                    msg = "Add successful!";
                    add(book, author, publisher);
                    response.sendRedirect("admin");
                    break;
                case "update":
                    msg = update(book, author, publisher)?"Add successful!":"Add failure!";
                    response.sendRedirect("admin");
                    break;
                case "delete":

                    break;
                default:
                    throw new IllegalArgumentException("Invalid action: " + action);
            }
        } catch (IllegalArgumentException e) {
            request.setAttribute("error", e.getMessage());
            request.getRequestDispatcher("admin").forward(request, response);
        }

    }

    private Author getAuthorFromRequest(HttpServletRequest request) {
        try {
            int id = Integer.parseInt(request.getParameter("authorId"));
            String authorName = request.getParameter("authorName");
            String birthday = request.getParameter("birthday");
            String bio = request.getParameter("bio");
            return new Author(id, authorName, Date.valueOf(birthday), bio);
        } catch (NumberFormatException e) {
        }
        return null;
    }

    private Publisher getPublisherFromRequest(HttpServletRequest request) {
        try {
            int id = Integer.parseInt(request.getParameter("publisherId"));
            String publisherName = request.getParameter("publisherName");
            String establishedDate = request.getParameter("establishedDate");
            return new Publisher(id, publisherName, Date.valueOf(establishedDate));
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
            return new Book(bookId, bookTitle, genre, description, quantity, price, author.getId(), publisher.getPublisherId());
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
}
