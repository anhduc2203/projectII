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
                book.setAuthor(rs.getInt("AuthorID"));
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
    
    
    //get danh sach san pham dua vao ma tacgia:
    public ArrayList<Book> getListBookByAuthor(int authorID) throws ClassNotFoundException{
        Connection conn = ConnectDB.getConnectionDB();
        String sql = "SELECT * FROM dbo.BOOK WHERE AuthorID='"+authorID+"'";
        ArrayList<Book> list = new ArrayList<>();
        
        try {
            PreparedStatement ps = conn.prepareCall(sql);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                Book book = new Book();
                book.setBookCode(rs.getString("BookCode"));
                book.setBookName(rs.getString("Name"));
                book.setBookPrice(rs.getFloat("Price"));
                book.setAuthor(rs.getInt("AuthorID"));
                book.setNxb(rs.getString("NXB"));
                book.setBookCategory(rs.getInt("BookCategoryID"));
                book.setBookDescription(rs.getString("BookDesciption"));
                book.setBookImage(rs.getString("BookImage"));
                list.add(book);
            }
            
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }
    
    
    //lay thong tin san pham theo ma san pham:
    public Book getBookByBookID(String bookID) throws ClassNotFoundException{
        Connection conn = ConnectDB.getConnectionDB();
        String sql = "SELECT * FROM dbo.BOOK WHERE BookCode='"+bookID+"'";
        Book b = new Book();
        
        try {
            PreparedStatement ps = conn.prepareCall(sql);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                Book book = new Book();
                book.setBookCode(rs.getString("BookCode"));
                book.setBookName(rs.getString("Name"));
                book.setBookPrice(rs.getFloat("Price"));
                book.setAuthor(rs.getInt("AuthorID"));
                book.setNxb(rs.getString("NXB"));
                book.setBookCategory(rs.getInt("BookCategoryID"));
                book.setBookDescription(rs.getString("BookDesciption"));
                book.setBookImage(rs.getString("BookImage"));
                //list.add(book);
                b = book;
            }
            
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return b;
    }
    
    
    
}
