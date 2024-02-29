
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
        int totalItems = AccountDAO.totalUser();
        int totalPages = (int) Math.ceil((double) totalItems / itemsPerPage);

        // Lấy trang hiện tại từ tham số yêu cầu
        String pageParam = request.getParameter("pageUser");
        int currentPage = (pageParam != null) ? Integer.parseInt(pageParam) : 1;

        // Lấy danh sách dữ liệu cho trang hiện tại
        ArrayList<Book> dataList = BookDAO.getPagging(totalItems, itemsPerPage);

        // Set thuộc tính cho JSP
        request.setAttribute("books", dataList);
        request.setAttribute("totalPagesBook", totalPages);
        request.setAttribute("currentPageBook", currentPage);

        // Chuyển hướng sang trang JSP
        request.getRequestDispatcher("/admin.jsp").forward(request, response);
    } 

    public static void main(String[] args) {
        BookDAO.getPagging(1, 10).forEach(p -> System.out.println(p));
    }
}
