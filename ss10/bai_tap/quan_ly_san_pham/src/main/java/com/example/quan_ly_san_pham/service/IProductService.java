package com.example.quan_ly_san_pham.service;

import com.example.quan_ly_san_pham.model.Product;

import java.util.List;

public interface IProductService {
    List<Product> findAll();
    void addProduct(Product product);
    void updateProduct(int id, Product product);
    Product findProductById(int id);
    void deleteProduct(int id);
    Product findProductByName(String name);

}
