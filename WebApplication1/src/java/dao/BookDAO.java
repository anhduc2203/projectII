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
import model.Book;

/**
 *
 * @author unknown_HUST
 */
public class BookDAO {
    
    //get danh sach san pham dua vao ma danh muc:
    public ArrayList<Book> getListBookByCategory(int categoryID) throws ClassNotFoundException{
        Connection conn = ConnectDB.getConnectionDB();
        String sql = "SELECT * FROM dbo.BOOK WHERE BookCategoryID='"+categoryID+"'";
        ArrayList<Book> list = new ArrayList<>();
        
        try {
            PreparedStatement ps = conn.prepareCall(sql);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                Book book = new Book();
                book.setBookCode(rs.getString("BookCode"));
                book.setBookName(rs.getString("Name"));
                book.setBookPrice(rs.getFloat("Price"));
                book.setAuthor(rs.getString("Author"));
                book.setNxb(rs.getString("NXB"));
                //book.setBookCategory(rs.getInt("BookCategoryID"));
                book.setBookDescription(rs.getString("BookDesciption"));
                book.setBookImage(rs.getString("BookImage"));
                list.add(book);
            }
            
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }
    

}
