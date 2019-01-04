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
import java.util.logging.Level;
import java.util.logging.Logger;
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
    
    //Thêm thể loại sách mới từ đầu
    public boolean insertCategory(Category c) throws ClassNotFoundException{
        
        Connection conn = ConnectDB.getConnectionDB();
        String sql = "insert into CATEGORY values(?, ?)";
        try {
            PreparedStatement ps = conn.prepareCall(sql);
            ps.setLong(1, c.getCategoryID());
            ps.setString(2, c.getCategoryName());
            return ps.executeUpdate() == 1;
            
        } catch (SQLException e) {
            Logger.getLogger(CategoryDAO.class.getName()).log(Level.SEVERE, null, e);
        }
        
        return false;
        
    }
    
    //Cập nhật thể loại mới
    public boolean updateCategory(Category c) throws ClassNotFoundException{
        
        Connection conn = ConnectDB.getConnectionDB();
        String sql = "update CATEGORY set CategoryName = ? where CategoryID = ?";
        try {
            PreparedStatement ps = conn.prepareCall(sql);
            ps.setString(1, c.getCategoryName());
            ps.setLong(2, c.getCategoryID());
            return ps.executeUpdate() == 1;

        } catch (SQLException e) {

            Logger.getLogger(CategoryDAO.class.getName()).log(Level.SEVERE, null, e);

        }
        return false;
        
    }
    
    //Xóa thể loại khỏi dữ liệu
    public boolean deleteCategory(long categoryID) throws ClassNotFoundException{
        
        Connection conn = ConnectDB.getConnectionDB();
        String sql = "delete from CATEGORY where CategoryID = ?";
        try {
            PreparedStatement ps = conn.prepareCall(sql);
            ps.setLong(1, categoryID);
            return ps.executeUpdate() == 1;
        } catch (SQLException e) {
            Logger.getLogger(CategoryDAO.class.getName()).log(Level.SEVERE, null, e);
        }
        return false;
        
    }
    
    public static void main(String[] args) throws ClassNotFoundException {
        CategoryDAO dao = new CategoryDAO();
//        for (int i=3;i<10;i++){
//            dao.insertCategory(new Category(i, "Category"+i));
//        }
        System.out.println(dao.deleteCategory(3));
    }
    
}
