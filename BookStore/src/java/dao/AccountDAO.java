package dao;

import context.DBcontext;
import entity.Account.UserInfo;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

/*
 * @author tuanngp
 */
public class AccountDAO {

    public static ArrayList<UserInfo> listUsers() {
        ArrayList<UserInfo> listUsers = new ArrayList<>();
        String QUERY = "SELECT * FROM [Users] WHERE Role='User'";
        try ( Connection conn = DBcontext.getConnection()) {
            Statement st = conn.createStatement();
            ResultSet rs = st.executeQuery(QUERY);
            while (rs.next()) {
                UserInfo userInfo = new UserInfo(
                                        rs.getInt(1), 
                                        rs.getString(2), 
                                        rs.getString(3), 
                                        rs.getString(4), 
                                        rs.getString(5), 
                                        rs.getString(6), 
                                        rs.getString(7), 
                                        rs.getString(8), 
                                        rs.getBoolean(9));
                listUsers.add(userInfo);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return listUsers;
    }
    
    public static UserInfo searchUserInfo(String username) {
        String QUERY = "SELECT * FROM Users WHERE Username=?";
        UserInfo userInfo = new UserInfo();
        try (Connection conn = DBcontext.getConnection()){
            try(PreparedStatement pst = conn.prepareStatement(QUERY)) {
                pst.setString(1, username);
                ResultSet rs = pst.executeQuery();
                while (rs.next()) {
                    userInfo = new UserInfo(
                                            rs.getInt(1), 
                                            rs.getString(2), 
                                            rs.getString(3), 
                                            rs.getString(4), 
                                            rs.getString(5), 
                                            rs.getString(6), 
                                            rs.getString(7), 
                                            rs.getString(8), 
                                            rs.getBoolean(9));
                }
            }
        } catch (Exception e) {
        }
        return userInfo;
    }
    
    public static boolean registerUser(UserInfo u) {
        String QUERY = "INSERT INTO Users (Username, [Password], Email, Phone, [Address], [Role], IsActive) " +
                        "VALUES (?,?,?,?,?,?,1)";
        try(Connection conn = DBcontext.getConnection()) {
            try(PreparedStatement pst = conn.prepareStatement(QUERY)) {
                pst.setString(1, u.getUsername());
                pst.setString(2, u.getPassword());
                pst.setString(3, u.getEmail());
                pst.setString(4, u.getPhone());
                pst.setString(5, u.getAddress());
                pst.setString(6, u.getRole());
                return pst.execute();
            }
        } catch (Exception e) {
        }
        return false;
    }
    
    public static void main(String[] args) {
        listUsers().forEach(p -> System.out.println(p));
    }

}
