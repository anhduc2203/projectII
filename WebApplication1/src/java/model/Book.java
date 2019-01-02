/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author unknown_HUST
 */
public class Book {
    public String bookCode;
    public String bookName;
    public float bookPrice;
    public int author;
    public String nxb;
    public int bookCategory;
    public String bookDescription;
    public String bookImage;
    
    
    public Book(){
        
    }

    public Book(String bookCode, String bookName, float bookPrice, int author, String nxb, int bookCategory, String bookDescription, String bookImage) {
        this.bookCode = bookCode;
        this.bookName = bookName;
        this.bookPrice = bookPrice;
        this.author = author;
        this.nxb = nxb;
        this.bookCategory = bookCategory;
        this.bookDescription = bookDescription;
        this.bookImage = bookImage;
    }

    public String getBookCode() {
        return bookCode;
    }

    public void setBookCode(String bookCode) {
        this.bookCode = bookCode;
    }

    public String getBookName() {
        return bookName;
    }

    public void setBookName(String bookName) {
        this.bookName = bookName;
    }

    public float getBookPrice() {
        return bookPrice;
    }

    public void setBookPrice(float bookPrice) {
        this.bookPrice = bookPrice;
    }

    public int getAuthor() {
        return author;
    }

    public void setAuthor(int author) {
        this.author = author;
    }

    public String getNxb() {
        return nxb;
    }

    public void setNxb(String nxb) {
        this.nxb = nxb;
    }

    public int getBookCategory() {
        return bookCategory;
    }

    public void setBookCategory(int bookCategory) {
        this.bookCategory = bookCategory;
    }

    public String getBookDescription() {
        return bookDescription;
    }

    public void setBookDescription(String bookDescription) {
        this.bookDescription = bookDescription;
    }

    public String getBookImage() {
        return bookImage;
    }

    public void setBookImage(String bookImage) {
        this.bookImage = bookImage;
    }
    
    
}
