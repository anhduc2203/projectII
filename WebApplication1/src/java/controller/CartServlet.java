/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.BookDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Book;
import model.Cart;
import model.Item;

/**
 *
 * @author unknown_HUST
 */
public class CartServlet extends HttpServlet {
    
    private final BookDAO bookDAO = new BookDAO();
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        String command = request.getParameter("command");
        String bookID = request.getParameter("bookID");
        Cart cart = (Cart) session.getAttribute("cart");
        
        try {
            Book book = bookDAO.getBookByBookID(bookID);
            switch(command){
                case "plus":
                    System.out.println("Command: "+command);
                    if(cart.getCartItem().containsKey(bookID)){
                        cart.plusToCart(bookID, new Item(book, cart.getCartItem().get(bookID).getQuantity()));
                    }else{
                        cart.plusToCart(bookID, new Item(book, 1));
                    }
                    break;
                case "remove":
                    cart.removeToCart(bookID);
                    break;
            }
            
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("/WebApplication1/index.jsp");
        }
        
        session.setAttribute("cart", cart);
        response.sendRedirect("/WebApplication1/index.jsp");
    }

    

}
