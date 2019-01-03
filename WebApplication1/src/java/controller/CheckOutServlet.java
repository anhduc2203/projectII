/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.BillDAO;
import dao.BillDetailDAO;
import java.io.IOException;
import java.sql.Date;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Account;
import model.Bill;
import model.BillDetail;
import model.Cart;
import model.Item;

/**
 *
 * @author AnhDuc
 */
public class CheckOutServlet extends HttpServlet {

    private BillDAO billDAO = new BillDAO();
    private BillDetailDAO billDetailDAO = new BillDetailDAO();
    
   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String payment = request.getParameter("payment");
        String address = request.getParameter("address");
        HttpSession session = request.getSession(); 
        Cart cart = (Cart) session.getAttribute("cart");
        Account account = (Account) session.getAttribute("account");
        
        try {
            
            Long ID = new Date(0).getTime();
            Bill bill = new Bill();
            bill.setBillID(ID);
            bill.setAddress(address);
            bill.setPayment(payment);
            bill.setAccountID(account.getUserCode());
            bill.setDate(new Timestamp(new Date(0).getTime()));
            billDAO.insertBill(bill);
            for (Map.Entry<String, Item> list: cart.getCartItem().entrySet()){
                billDetailDAO.insertBillDetail(new BillDetail(0, ID,
                        list.getValue().getBook().getBookCode(),
                        list.getValue().getBook().getBookPrice(),
                        list.getValue().getQuantity()));
            }  
            
            cart = new Cart();
            session.setAttribute("cart", cart);
                    
        } catch (ClassNotFoundException | SQLException e) {
        }
        
    }

    

}
