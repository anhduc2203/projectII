/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package connect;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author unknown_HUST
 */
public class testconn {
    public static void main(String[] args) {
        Connection conn = null;
        String connectURL = "jdbc:sqlserver://localhost:1433; databaseName=BOOKSHOP2; user=sa; password=123456;";
        try {
            conn = DriverManager.getConnection(connectURL);
            if(conn != null) System.out.println(" Connect Success!!!");
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }
}
