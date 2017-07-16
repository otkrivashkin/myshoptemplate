package com.bin.otkrivashkin.controller;

import com.bin.otkrivashkin.dao.ProductDao;
import com.bin.otkrivashkin.model.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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

    @RequestMapping("/admin")
    public String admin() {
        return "admin";
    }

    @RequestMapping("/admin/productInventory")
    public String productInventory(Model model) {
        List<Product> products = productDao.getAllProducts();
        model.addAttribute("products", products);
        return "productInventory";
    }

    @RequestMapping("/admin/productInventory/addProduct")
    public String addProduct(Model model) {
        Product product = new Product();
        product.setCategory("Instrument");
        product.setCondition("New");
        product.setStatus("Active");
        model.addAttribute("product", product);
        return "addProduct";
    }



    @RequestMapping(value = "/admin/productInventory/addProduct", method = RequestMethod.POST)
    public String addProduct(@ModelAttribute("product") Product product) {
        productDao.addProduct(product);
        return "redirect:/admin/productInventory";
    }

}
