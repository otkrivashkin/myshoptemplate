package com.bin.otkrivashkin.dao;

import com.bin.otkrivashkin.model.Product;

import java.util.List;

/**
 * Created by Note1 on 14.07.2017.
 */
public interface ProductDao {

    void addProduct(Product product);

    Product getProductById(long id);

    List<Product> getAllProducts();

    void deleteProduct(long id);

    void editProduct(Product product);
}
