/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import connect.ConnectDB;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import model.Author;
import model.Category;

/**
 *
 * @author unknown_HUST
 */
public class AuthorDAO {
    
    
    public ArrayList<Author> getAuthor() throws ClassNotFoundException{
        Connection conn = ConnectDB.getConnectionDB();
        String sql = "SELECT * FROM dbo.AUTHOR";
        
        ArrayList<Author> list = new ArrayList<>();
        try {
            PreparedStatement ps = (PreparedStatement) conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Author author = new Author();
                author.setAuthorID(rs.getInt("AuthorID"));
                author.setAuthorName(rs.getString("AuthorName"));
                list.add(author);
            }
            conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }
    
    public String getAuthorByID(int authorID) throws ClassNotFoundException{
        Connection conn = ConnectDB.getConnectionDB();
        
        String sql = "SELECT AuthorName FROM dbo.AUTHOR WHERE AuthorID='"+authorID+"'";
        String s = null;
        try {
            PreparedStatement ps = (PreparedStatement) conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                s = rs.getString("AuthorName");
            }
            conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return s;
    }
}
