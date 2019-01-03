/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author AnhDuc
 */
public class BillDetail {
    
    private String billDetailID;
    private String billID;
    private String bookID;
    private double price;
    private int quantity;

    public BillDetail() {
    }

    public BillDetail(String billDetailID, String billID, String bookID, double price, int quantity) {
        this.billDetailID = billDetailID;
        this.billID = billID;
        this.bookID = bookID;
        this.price = price;
        this.quantity = quantity;
    }

    public String getBillDetailID() {
        return billDetailID;
    }

    public void setBillDetailID(String billDetailID) {
        this.billDetailID = billDetailID;
    }

    public String getBillID() {
        return billID;
    }

    public void setBillID(String billID) {
        this.billID = billID;
    }

    public String getBookID() {
        return bookID;
    }

    public void setBookID(String bookID) {
        this.bookID = bookID;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }
    
    
    
}
