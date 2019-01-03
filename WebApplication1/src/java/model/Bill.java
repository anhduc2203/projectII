/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Timestamp;

/**
 *
 * @author AnhDuc
 */
public class Bill {
    
    private long billID;
    private String accountID;
    private double total;
    private String payment;
    private String address;
    private Timestamp date;

    public Bill() {
    }

    public Bill(long billID, String accountID, double total, String payment, String address, Timestamp date) {
        this.billID = billID;
        this.accountID = accountID;
        this.total = total;
        this.payment = payment;
        this.address = address;
        this.date = date;
    }

    public long getBillID() {
        return billID;
    }

    public void setBillID(long billID) {
        this.billID = billID;
    }

    public String getAccountID() {
        return accountID;
    }

    public void setAccountID(String accountID) {
        this.accountID = accountID;
    }

    public double getTotal() {
        return total;
    }

    public void setTotal(double total) {
        this.total = total;
    }

    public String getPayment() {
        return payment;
    }

    public void setPayment(String payment) {
        this.payment = payment;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public Timestamp getDate() {
        return date;
    }

    public void setDate(Timestamp date) {
        this.date = date;
    }
    
    
    
}
