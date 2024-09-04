package com.example.emloyees.Repository;

import com.example.emloyees.Model.Product;

import java.util.List;

public interface IProductRepository {
    public List<Product> selectAllProducts();
    public void addProduct(Product product);
}
