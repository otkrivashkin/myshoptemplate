package com.bin.otkrivashkin.controller;

import com.bin.otkrivashkin.dao.ProductDao;
import com.bin.otkrivashkin.model.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.nio.file.Path;
import java.util.List;

/**
 * Created by Note1 on 14.07.2017.
 */
@Controller
public class HomeController {

    private Path path;

    @Autowired
    private ProductDao productDao;

    @RequestMapping("/")
    public String index(Model model) {
        List<Product> products = productDao.getAllProducts();
        model.addAttribute("products",products);
        return "shopList";
    }

    @RequestMapping("/shopItem")
    public String shopItem() {
        return "shopItem";
    }


}
