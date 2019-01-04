/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.AccountDAO;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.logging.Level;
import java.util.logging.Logger;
/**
 *
 * @author unknown_HUST
 */
public class CheckAccountServlet extends HttpServlet {
    
    AccountDAO accountDAO = new AccountDAO();
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse reponse)
            throws ServletException, IOException{
        
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        System.out.println("\nOutput: "+request.getParameter("username")+"\n");
        try {
            if (accountDAO.checkAccount(request.getParameter("username"))) {
                System.out.println("\nTài khoản bị trùng: "+request.getParameter("username")+"\n");
                String path = "<img src=\"img_controller/not-available.png\" />";
                response.getWriter().write(path);
            } else {
                System.out.println("\nThao tác thành công: "+request.getParameter("username")+"\n");
                String path = "<img src=\"./img_controller/available.png\" />";
                response.getWriter().write(path);
            }
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(CheckAccountServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    

}
