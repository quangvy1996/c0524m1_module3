package com.example.quan_ly_san_pham.service;

import com.example.quan_ly_san_pham.model.Product;

import java.util.*;

public class ProductService implements IProductService {
    private static Map<Integer, Product> productMap = new HashMap<Integer, Product>();
    static {
        productMap.put(1,new Product(1, "Dell XPS 13", 1100, "hàng nhập khẩu", "Dell"));
        productMap.put(2,new Product(2, "MacBook Pro 14", 1200, "hàng xuất khẩu", "Apple"));
        productMap.put(3,new Product(3, "Lenovo ThinkPad X1 Carbon", 1300, "hàng xuất khẩu", "Apple"));
        productMap.put(4,new Product(4, "MacBook Pro 14", 1400, "hàng xuất khẩu", "Apple"));
        productMap.put(5,new Product(5, "MacBook Pro 14", 1500, "hàng nhập khẩu", "Apple"));
    }
    @Override
    public List<Product> findAll() {
        return new ArrayList<>(productMap.values());
    }

    @Override
    public void addProduct(Product product) {
        productMap.put(product.getId(), product);
    }

    @Override
    public void updateProduct(int id, Product product) {
        productMap.put(id, product);
    }

    @Override
    public Product findProductById(int id) {
        return productMap.get(id);
    }

    @Override
    public void deleteProduct(int id) {
        productMap.remove(id);
    }

    @Override
    public Product findProductByName(String name) {
        for (Product product : productMap.values()) {
            if (product.getName().contains(name)) {
                return product;
            }
        }
        return null;
    }
}
