/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;
// Kiểm tra tài khoản đã tồn tại chưa

import connect.ConnectDB;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Account;


/**
 *
 * @author unknown_HUST
 */
public class AccountDAO {
    
    // Kiểm tra tài khoản đã tồn tại chưa?
    public boolean checkAccount(String UserName) throws ClassNotFoundException{
        Connection connection = ConnectDB.getConnectionDB();
        String sql = "SELECT * FROM USERS WHERE UserName = '" + UserName + "'";
        
        Statement stmt = null;
        ResultSet result = null;
        
        try {
            stmt = connection.createStatement();
            result = null;
            result = stmt.executeQuery(sql);
            while (result.next()) {
                connection.close();
                return true;
                
            }
        } catch (SQLException ex) {
            System.out.println("\nKHONG TIM THAY HOAC CO LOI XAY RA");
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
            
        }
        
        return false;
    }
    
    //Them tai khoan dang ki
    public void insertAccount(Account acc) throws ClassNotFoundException {
        
        Connection connection = ConnectDB.getConnectionDB();
        String sql = "INSERT INTO USERS VALUES(?,?,?,?,?,?,?,?,?,?)";
        ResultSet rs = null;
        try {
            PreparedStatement ps;
            ps = connection.prepareCall(sql);
            ps.setString(1, acc.getUserCode());
            ps.setString(2, acc.getUserName());
            ps.setString(3, acc.getUserPass());
            ps.setString(4, acc.getUserRole());
            ps.setString(5, acc.getFullName());
            ps.setString(6, acc.getCityOrSchool());
            ps.setString(7, acc.getUserEmail());
            ps.setString(8, acc.getPhoneNumber());
            ps.setString(9, acc.getUserAddres());
            ps.setString(10, acc.getUserCountry());
            
            rs = ps.executeQuery();
            
            System.out.println("Insert succesful!");
            ps.close();
            connection.close();
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
    }
    
    // Xử lí đăng nhập
    public Account login(String username, String pass) throws ClassNotFoundException{
        Connection conn = ConnectDB.getConnectionDB();
        String sql = "select * from USERS where UserName=? and Pass=?";
        ResultSet rs = null;
        try {
            PreparedStatement ps = conn.prepareCall(sql);
            ps.setString(1, username);
            ps.setString(2, pass);
            rs = ps.executeQuery();
            while (rs.next()){
                Account acc = new Account();
                acc.setUserCode(rs.getString("UserCode"));
                acc.setUserName(rs.getString("UserName"));
                acc.setUserPass(rs.getString("Pass"));
                acc.setFullName(rs.getString("Name"));
                acc.setCityOrSchool(rs.getString("ctyOrSchool"));
                acc.setUserEmail(rs.getString("Email"));
                acc.setPhoneNumber("PhoneNumber");
                acc.setUserAddres(rs.getString("Address"));
                acc.setUserCountry(rs.getString("Country"));
                String un = acc.getUserName();
                String pa = acc.getUserPass();
                System.out.println("UN: "+un+"PS: "+pa);
                conn.close();
                ps.close();
                return acc;
            }
            
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
    
}


/*
        
        Connection conn = null;
        String dbName = "BOOKSHOP2";
        
        String url = "jdbc:sqlserver://localhost:1433; databaseName=" + dbName + "";
        Statement stmt = null;
        ResultSet result = null;
        String driver = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
        String databaseUserName = "sa";
        String databasePassword = "123456";
        
        String name = acc.getUserName();
        String pass = acc.getUserPass();
        String role = acc.getUserRole();
        String full = acc.getFullName();
        String city = acc.getCityOrSchool();
        String email = acc.getUserEmail();
        String phone = acc.getPhoneNumber();
        String address = acc.getUserAddres();
        String country = acc.getUserCountry();
        
        try {
            DriverManager.registerDriver(new com.microsoft.sqlserver.jdbc.SQLServerDriver());
            
            conn = DriverManager.getConnection(url, databaseUserName, databasePassword);
            if (conn != null) {
                System.out.println("Ket noi thanh cong !!!");
            }
            
            stmt = conn.createStatement();
            String sql = "INSERT INTO USERS VALUES ('USER000009',"+name+pass+role+full+city+email+phone+address+country+")";
            stmt.execute(sql); 
            conn.close();
            
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        */