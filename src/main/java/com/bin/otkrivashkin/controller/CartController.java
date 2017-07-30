package com.bin.otkrivashkin.controller;


import com.bin.otkrivashkin.dao.CartDao;
import com.bin.otkrivashkin.dao.ProductDao;
import com.bin.otkrivashkin.model.Cart;
import com.bin.otkrivashkin.model.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/rest/cart")
public class CartController {

    @Autowired
    private CartDao cartDao;

    @Autowired
    private ProductDao productDao;

}
