
package dao;

import context.DBcontext;
import entity.Order.Cart;
import entity.Product.Author;
import entity.Product.Book;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.ArrayList;

/*
 * @author tuanngp
 */
public class OrderDAO {
        public static boolean addCart(Cart cart) {
        String QUERY = "INSERT INTO Carts (UserId, BookId, Quantity) " +
                        "VALUES (?,?,?)";
        try(Connection conn = DBcontext.getConnection()) {
            try(PreparedStatement pst = conn.prepareStatement(QUERY)) {
                pst.setInt(1, cart.getUserInfo().getId());
                pst.setInt(2, cart.getBook().getId());
                pst.setInt(2, cart.getQuantity());
                return pst.execute();
            }
        } catch (Exception e) {
        }
        return false;
    }
        
//    public static ArrayList<Book> getCart() {
//        String QUERY = "SELECT * FROM Carts WHERE ";
//    }
}
