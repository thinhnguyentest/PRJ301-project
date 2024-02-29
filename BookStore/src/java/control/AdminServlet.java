
package control;

import dao.AccountDAO;
import dao.BookDAO;
import entity.Account.User;
import entity.Product.Book;
import jakarta.servlet.RequestDispatcher;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;

@WebServlet(name="AdminServlet", urlPatterns={"/admin"})
public class AdminServlet extends HttpServlet {
   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        // Số lượng mục trên mỗi trang
        int itemsPerPage = 10;

        // Tính tổng số trang
        int totalBooks = BookDAO.totalBook();
        int totalPagesBook = (int) Math.ceil((double) totalBooks / itemsPerPage);
        
        int totalUsers = AccountDAO.totalUser();
        int totalPagesUser = (int) Math.ceil((double) totalUsers / itemsPerPage);
        
        // Lấy trang hiện tại từ tham số yêu cầu
        String pageParamBook = request.getParameter("pageBook");
        String pageParamUser = request.getParameter("pageUser");
        
        int currentPageBook = (pageParamBook != null) ? Integer.parseInt(pageParamBook) : 1;
        int currentPageUser = (pageParamUser != null) ? Integer.parseInt(pageParamUser) : 1;
        int offsetBook = (currentPageBook - 1) * itemsPerPage;
        int offsetUser = (currentPageUser - 1) * itemsPerPage;
        // Lấy danh sách dữ liệu cho trang hiện tại
        ArrayList<Book> books = BookDAO.getPagging(offsetBook, itemsPerPage);
        ArrayList<User> users = AccountDAO.getPagging(offsetUser, itemsPerPage);

        // Set thuộc tính cho JSP
        request.setAttribute("listbooks", books);
        request.setAttribute("totalPagesBook", totalPagesBook);
        request.setAttribute("currentPageBook", currentPageBook);
        
        request.setAttribute("listusers", users);
        request.setAttribute("totalPagesUser", totalPagesUser);
        request.setAttribute("currentPageUser", currentPageUser);
        // Chuyển hướng sang trang JSP
        request.getRequestDispatcher("/admin.jsp").forward(request, response);
    }

    public static void main(String[] args) {
        BookDAO.getPagging(1, 10).forEach(p -> System.out.println(p));
    }
}
