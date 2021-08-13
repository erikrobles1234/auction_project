package com.cs336.pkg; 
import java.sql.*;
 
public class UserDAO {
 
    public User checkLogin(String username, String password) throws SQLException,
            ClassNotFoundException {
        String jdbcURL = "jdbc:mysql://localhost:3306/ebay";
        String dbUser = "root";
        String dbPassword = "Password#1234";
        
        Class.forName("com.mysql.jdbc.Driver");
        Connection connection = DriverManager.getConnection(jdbcURL, dbUser, dbPassword);
        String sql = "SELECT * FROM ebay.users WHERE username = ? and pass_word = ?";
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setString(1, username);
        statement.setString(2, password);
 
        ResultSet result = statement.executeQuery();
 
        User user = null;
 
        if (result.next()) {
            user = new User();
            user.setUsername(username);
        }
 
        connection.close();
 
        return user;
    }
}