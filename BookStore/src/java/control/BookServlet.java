package control;

import dao.BookDAO;
import entity.Product.Author;
import entity.Product.Book;
import entity.Product.Publisher;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.Date;

/**
 *
 * @author PC
 */
@WebServlet(name = "AddBookServlet", urlPatterns = {"/book"})
public class BookServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            // Get Author Information
            String authorName = request.getParameter("authorName");
            String birthday = request.getParameter("birthday");
            String bio = request.getParameter("bio");

            // Get Publisher Information
            String publisherName = request.getParameter("publisherName");
            String establishedDate = request.getParameter("establishedDate");

            // Get Book Information
            int bookId = Integer.parseInt(request.getParameter("bookId"));
            String bookTitle = request.getParameter("bookTitle");
            String genre = request.getParameter("genre");
            String description = request.getParameter("description");
            int quantity = Integer.parseInt(request.getParameter("quantity"));
            float price = Float.parseFloat(request.getParameter("price"));
            
            Author author = new Author(authorName, Date.valueOf(birthday), bio);
            Publisher publisher = new Publisher(publisherName, Date.valueOf(establishedDate));
            Book book = new Book(bookTitle, genre, description, quantity, price, author, publisher);
            
            String action = request.getParameter("action");
            switch (action) {
                case "add":
//                    author.addAuthor();
//                    publisher.addPublisher();
//                    book.addBook();
                    break;
//                
                case "update":
//                    Book b = BookDAO.searchBook("BookId", bookId).get(0);
//                b = new Book(bookTitle, genre, description, quantity, price, author, publisher);
//                b.updateBook();
                    break;
                case "delete":
                    break;
                default:
                    break;
            }

        } catch (NumberFormatException e) {
            e.printStackTrace();
            response.getWriter().println("Error processing the data.");
        }
    }

}
