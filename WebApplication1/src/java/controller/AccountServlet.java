/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.AccountDAO;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Account;

/**
 *
 * @author unknown_HUST
 */
public class AccountServlet extends HttpServlet {
    
    //AccountDAO accDAO = new AccountDAO();
        
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        String command = request.getParameter("command");
        System.out.println("Command la: "+command);
        String url = "";
        Account acc = new Account();
        AccountDAO accDAO = new AccountDAO();
        
        HttpSession session = request.getSession();
        switch (command) {
            case "register":
                url = "/index.jsp";
                              
                acc.setUserCode("");
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
                
                session.setAttribute("acc", acc);

                RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
                rd.forward(request, response);
                break;
            case "login":
                String user = request.getParameter("username");
                String pass = request.getParameter("password");
                //Account accTemp = new Account();
        
                try {
                    acc = accDAO.login(user, pass);
                } catch (ClassNotFoundException ex) {
                    Logger.getLogger(AccountServlet.class.getName()).log(Level.SEVERE, null, ex);
                }
                // Neu tim thay tai khoan dang nhap
                if (acc != null){
                    url = "/index.jsp";
                    session.setAttribute("acc", acc);
                    RequestDispatcher rd1 = getServletContext().getRequestDispatcher(url);
                    rd1.forward(request, response);
                    System.out.println("Dang nhap thanh cong");
                } else{
                    session.setAttribute("error", "Username or Password incorrect");
                    url = "/login.jsp";
                    RequestDispatcher rd1 = getServletContext().getRequestDispatcher(url);
                    rd1.forward(request, response);
                    System.out.println("Dang nhap that bai");
                }
                break;
            default:
                System.out.println("Thanh cong");
        }
        
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
