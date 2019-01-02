/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.HashMap;
import java.util.Map;

/**
 *
 * @author unknown_HUST
 */
public class Cart {
    public HashMap<String, Item> cartItem;
    
    public Cart(){
        cartItem = new HashMap<>();
    }

    public Cart(HashMap<String, Item> cartItem) {
        this.cartItem = cartItem;
    }

    public HashMap<String, Item> getCartItem() {
        return cartItem;
    }

    public void setCartItem(HashMap<String, Item> cartItem) {
        this.cartItem = cartItem;
    }
    
    
    
    //insert to cart
    public void plusToCart(String key, Item item){
        boolean check = cartItem.containsKey(key);
        if(check){
            int quantity_old = item.getQuantity();
            item.setQuantity(quantity_old + 1);
            cartItem.put(key, item);
        } else{
            cartItem.put(key, item);
        }
    }
    
    //subs to cart
    public void subToCart(String key, Item item){
        boolean check = cartItem.containsKey(key);
        if(check){
            int quantity_old = item.getQuantity();
            if(quantity_old <= 1){
                cartItem.remove(key);
            } else{
                item.setQuantity(quantity_old - 1);
                //cartItem.put(key, item);
            }
        }
    }
    
    //remove to cart
    public void removeToCart(String key){
        boolean check = cartItem.containsKey(key);
        if(check){
            cartItem.remove(key);
        }
    }
    
    //count Item
    public int countItem(){
        return cartItem.size();
    }
    
    //sum total:
    public double totalCart(){
        double count = 0;
        
        //count = price * quantity;
        for(Map.Entry<String, Item> list : cartItem.entrySet()){
            count += list.getValue().getBook().getBookPrice() * list.getValue().getQuantity();
        }
        return count;
    }
}
