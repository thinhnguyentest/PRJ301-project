
package control;

import dao.AccountDAO;
import entity.Account.UserInfo;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 *
 * @author PC
 */
@WebServlet(name="LoginServlet", urlPatterns={"/login"})
public class LoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
                String username = request.getParameter("username");
        String password = request.getParameter("password");
        HttpSession session = request.getSession();
        
//        if (username.length() < 6) {
//            request.setAttribute("status", "Tên đăng nhập phải từ 6 kí tự trở lên.");
//            request.getRequestDispatcher("login.jsp").forward(request, response);
//        }
//        if (password.length() < 8) {
//            request.setAttribute("status", "Mật khẩu phải từ 8 kí tự trở lên.");
//            request.getRequestDispatcher("login.jsp").forward(request, response);
//        }
        if (checkLogin(username, password)) {
            session.setAttribute("login", AccountDAO.searchUserInfo(username));
            request.getRequestDispatcher("home").forward(request, response);
        } else {
            request.setAttribute("status", "Thông tin đăng nhập không chính xác.");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
    }
    
    public boolean checkLogin(String username, String password) {
        UserInfo u = AccountDAO.searchUserInfo(username);
        if (u==null) {
            return false;
        }
        return u.getPassword().equals(password);
    }
    
}
