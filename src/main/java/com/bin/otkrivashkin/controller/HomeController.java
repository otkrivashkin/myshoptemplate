package com.bin.otkrivashkin.controller;

import com.bin.otkrivashkin.dao.ProductDao;
import com.bin.otkrivashkin.model.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import javax.validation.Valid;
import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

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

    @RequestMapping("/shopList/viewProduct/{id}")
    public String viewProduct(@PathVariable long id, Model model) throws IOException {
        Product product = productDao.getProductById(id);

        model.addAttribute("product", product);

        return "viewProduct";
    }



}
