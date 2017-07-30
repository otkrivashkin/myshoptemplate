package com.bin.otkrivashkin.dao;

import com.bin.otkrivashkin.model.Cart;

public interface CartDao {

    Cart create(Cart cart);

    Cart read(String cartId);

    void update(String cartId, Cart cart);

    void delete(String cartId);
}
