/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package connect;

import java.sql.Connection;
import java.sql.DatabaseMetaData;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author AnhDuc
 */
public class ConnectDB {
  
    public static Connection getConnectionDB() throws ClassNotFoundException{
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
            
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        
        return conn;
    }
}