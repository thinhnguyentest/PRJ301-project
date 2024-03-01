package control;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */


import dao.BookDAO;
import entity.Product.Book;
import jakarta.servlet.RequestDispatcher;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;

/**
 *
 * @author Admin
 */
@WebServlet(urlPatterns={"/product"})
public class ProductServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        String page = request.getParameter("page");
        
        if(page==null) page="1";
        int indexPage=Integer.parseInt(page);
        List<Book> books = BookDAO.getPagingBook(indexPage);
        request.setAttribute("books", books);
        request.setAttribute("indexPage", indexPage);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/allBook.jsp");
        dispatcher.forward(request, response);
    }
    
    public static void main(String[] args) {
        BookDAO.getPagingBook(1).forEach(p -> System.out.println(p));
    }
}
