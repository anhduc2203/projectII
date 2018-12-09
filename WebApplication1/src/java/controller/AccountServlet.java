/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.AccountDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.xml.ws.Response;
import model.Account;

/**
 *
 * @author unknown_HUST
 */
public class AccountServlet extends HttpServlet {
    
    AccountDAO accDAO = new AccountDAO();
        
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //String command = request.getParameter("command");
        String url = "/index.jsp";
        
        Account acc = new Account();
        AccountDAO accDAO = new AccountDAO();
        //acc.setUserCode();
        acc.setUserName(request.getParameter("username"));
        acc.setUserPass(request.getParameter("password"));
        acc.setUserRole("KH");
        acc.setFullName(request.getParameter("name"));
        acc.setCityOrSchool(request.getParameter("ctyorschool"));
        acc.setUserEmail(request.getParameter("email"));
        acc.setPhoneNumber(request.getParameter("phonenumber"));
        acc.setUserAddres(request.getParameter("address"));
        acc.setUserCountry(request.getParameter("country"));
        try {
            accDAO.insertAccount(acc);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(AccountServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        String diaChi = acc.getFullName();
        System.out.println(diaChi);
        
        HttpSession session = request.getSession();
        session.setAttribute("acc", acc);

        RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
        rd.forward(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
