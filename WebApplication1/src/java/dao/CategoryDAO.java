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
import model.Category;

/**
 *
 * @author unknown_HUST
 */
public class CategoryDAO {
    
    
    public ArrayList<Category> getCategory() throws ClassNotFoundException{
        Connection conn = ConnectDB.getConnectionDB();
        String sql = "SELECT * FROM dbo.CATEGORY";
        
        ArrayList<Category> list = new ArrayList<>();
        try {
            PreparedStatement ps = (PreparedStatement) conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Category category = new Category();
                category.setCategoryID(rs.getInt("CategoryID"));
                category.setCategoryName(rs.getString("CategoryName"));
                list.add(category);
            }
            conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }
    
    
    public String getCategory(int categoryID) throws ClassNotFoundException{
        Connection conn = ConnectDB.getConnectionDB();
        
        String sql = "SELECT CategoryName FROM dbo.CATEGORY WHERE CategoryID='"+categoryID+"'";
        String s = null;
        try {
            PreparedStatement ps = (PreparedStatement) conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                s = rs.getString("CategoryName");
            }
            conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return s;
    }
}
