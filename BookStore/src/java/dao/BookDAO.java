package dao;

import context.DBcontext;
import entity.Product.Author;
import entity.Product.Book;
import entity.Product.Publisher;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/*
 * @author tuanngp
 */
public class BookDAO {

    public static ArrayList<Book> listBook() {
        ArrayList<Book> list = new ArrayList<>();
        String Query = "SELECT * FROM Books";
        try ( Connection conn = DBcontext.getConnection()) {
            Statement st = conn.createStatement();
            ResultSet rs = st.executeQuery(Query);
            while (rs.next()) {
                list.add(new Book(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getInt(5),
                        rs.getFloat(6),
                        rs.getInt(7),
                        rs.getInt(8)
                ));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

    public static List<String> getImages(int id) {
        List<String> list = new ArrayList<>();
        String QUERY = "SELECT * FROM ImageStoring WHERE BookId=?";
        try (Connection conn = DBcontext.getConnection()){
            try(PreparedStatement pst = conn.prepareStatement(QUERY)) {
                pst.setInt(1, id);
                ResultSet rs = pst.executeQuery();
                while (rs.next()) {                    
                    list.add(rs.getString("FilePath"));
                }
            }
        } catch (Exception e) {
        }
        return list;
    }
    
    public static Author getAuthor(int id) {
        String QUERY = "SELECT * FROM Authors WHERE AuthorId=?";
        Author author = new Author();
        try (Connection conn = DBcontext.getConnection()){
            try(PreparedStatement pst = conn.prepareStatement(QUERY)) {
                pst.setInt(1, id);
                ResultSet rs = pst.executeQuery();
                while (rs.next()) {                    
                    author = new Author(
                            rs.getInt(1), 
                            rs.getString(2), 
                            rs.getDate(3), 
                            rs.getString(4));
                }
            }
        } catch (Exception e) {
        }
        return author;
    }
    
        public static Publisher getPublisher(int id) {
        String QUERY = "SELECT * FROM Authors WHERE AuthorId=?";
        Publisher publisher = new Publisher();
        try (Connection conn = DBcontext.getConnection()){
            try(PreparedStatement pst = conn.prepareStatement(QUERY)) {
                pst.setInt(1, id);
                ResultSet rs = pst.executeQuery();
                while (rs.next()) {                    
                    publisher = new Publisher(
                            rs.getInt(1), 
                            rs.getString(2), 
                            rs.getDate(3));
                }
            }
        } catch (Exception e) {
        }
        return publisher;
    }
    
    
    

    public static ArrayList<Book> searchBook(String Column, String data) {
        String SEARCH = "SELECT * FROM [Books] WHERE "+ Column +" LIKE ?";
        ArrayList<Book> list = new ArrayList<>();
        try ( Connection conn = DBcontext.getConnection()) {
            try ( PreparedStatement preparedStatement = conn.prepareStatement(SEARCH)) {
                preparedStatement.setString(1, "%" + data + "%");
                ResultSet rs = preparedStatement.executeQuery();
                while (rs.next()) {
                list.add(new Book(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getInt(5),
                        rs.getFloat(6),
                        rs.getInt(7),
                        rs.getInt(8)
                ));
            }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }
    public static void main(String[] args) {
//        listBook().forEach(p -> System.out.println(p));
        searchBook("Genre", "mys").forEach(p -> System.out.println(p));
//        System.out.println(getAuthor(1));
    }
}
