package com.bin.otkrivashkin.model;

import java.util.HashMap;
import java.util.Map;

/**
 * Created by otkrivashkin on 29.07.2017.
 */
public class Cart {

    private String id;
    private Map<String, CartItem> cartItems;
    private double grandTotal;

    public Cart() {
        this.cartItems = new HashMap<>();
        this.grandTotal = 0;
    }

    public Cart(String id) {
        this();
        this.id = id;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public Map<String, CartItem> getCartItems() {
        return cartItems;
    }

    public void setCartItems(Map<String, CartItem> cartItems) {
        this.cartItems = cartItems;
    }

    public double getGrandTotal() {
        return grandTotal;
    }

    public void setGrandTotal(double grandTotal) {
        this.grandTotal = grandTotal;
    }

    public void addCartItem(CartItem item) {

        String productId = item.getProduct().getId() + "";

        if (cartItems.containsKey(productId)) {
            CartItem existingCartItem = cartItems.get(productId);
            existingCartItem.setQuantity(existingCartItem.getQuantity() + item.getQuantity());
            cartItems.put(productId, existingCartItem);
        } else {
            cartItems.put(productId, item);
        }

        updateGrandTotal();
    }

    public void removeCartItem(CartItem item) {
        String productId = item.getProduct().getId() + "";
        cartItems.remove(productId);
        updateGrandTotal();

    }

    private void updateGrandTotal() {
        grandTotal = 0;
        for (CartItem item : cartItems.values()) {
            grandTotal += item.getTotalPrice();
        }
    }
}
