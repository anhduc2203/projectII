/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package connect;

/**
 *
 * @author AnhDuc
 */
import java.sql.*;

/**
 * JdbcInsert1.java - Demonstrates how to INSERT data into an SQL
 *                    database using Java JDBC.
 */
public class InsertTest { 
  
    public void Insert () { 
        Connection conn = null;
        String dbName = "BOOKSHOP2";
        
        String url = "jdbc:sqlserver://localhost:1433; databaseName=" + dbName + "";
        Statement stmt = null;
        ResultSet result = null;
        String driver = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
        String databaseUserName = "sa";
        String databasePassword = "123456";
        try {
            DriverManager.registerDriver(new com.microsoft.sqlserver.jdbc.SQLServerDriver());
            
            conn = DriverManager.getConnection(url, databaseUserName, databasePassword);
            if (conn != null) {
                System.out.println("Ket noi thanh cong !!!");
            }
            
            stmt = conn.createStatement();
            stmt.executeUpdate("INSERT INTO USERS " + 
                "VALUES ('USER000008', '1001', 'Simpson', 'Mr.', 'Springfield', '2001', '21', '21', '21', '21')"); 
            conn.close();
            
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
  
    }
} 
