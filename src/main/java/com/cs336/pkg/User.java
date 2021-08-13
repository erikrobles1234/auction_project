package com.cs336.pkg;
import java.sql.*;
 
public class User {
    private int id;
    private String username;
    private String password;
 
    // getters 
    public int getId() {
    	return id;
    };
    public String getUsername() {
    	return username;
    };
    public String getPassword() {
    	return password;
    };
    
    // setters
    public void setId(int newId) {
    	this.id = newId;
    };
    public void setUsername(String newUsername) {
    	this.username = newUsername;
    };
    public void setPassword(String newPassword) {
    	this.password = newPassword;
    };
}
