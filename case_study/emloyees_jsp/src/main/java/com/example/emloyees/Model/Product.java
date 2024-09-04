package com.example.emloyees.Model;

public class Product {
    private int productId; // Mã sản phẩm
    private String name; // Tên sản phẩm
    private String description; // Mô tả sản phẩm
    private String brand; // Thương hiệu sản phẩm
    private double price; // Giá sản phẩm
    private int stock; // Số lượng tồn kho
    private int categoryId; // Mã danh mục sản phẩm

    // Constructor không tham số
    public Product() {
    }
    public Product(int productId, String name, String description, String brand, double price, int stock, int categoryId) {
        this.productId = productId;
        this.name = name;
        this.description = description;
        this.brand = brand;
        this.price = price;
        this.stock = stock;
        this.categoryId = categoryId;
    }
    public Product(String name, String description, String brand, double price, int stock, int categoryId) {
        this.name = name;
        this.description = description;
        this.brand = brand;
        this.price = price;
        this.stock = stock;
        this.categoryId = categoryId;
    }
    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getStock() {
        return stock;
    }

    public void setStock(int stock) {
        this.stock = stock;
    }

    public int getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(int categoryId) {
        this.categoryId = categoryId;
    }



    @Override
    public String toString() {
        return "Product{" +
                "productId=" + productId +
                ", name='" + name + '\'' +
                ", description='" + description + '\'' +
                ", brand='" + brand + '\'' +
                ", price=" + price +
                ", stock=" + stock +
                ", categoryId=" + categoryId +
                '}';
    }
}
