package com.example.emloyees.Repository;

import com.example.emloyees.BaseRepository;
import com.example.emloyees.Model.Product;

import java.sql.*;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class ProductRepository implements IProductRepository {
    private static final List<Product> productList = new ArrayList<>();
    private BaseRepository baseRepository;
    public static final String SELECT_ALL_USERS = "SELECT * FROM PRODUCTS;";
    public static final String ADD_PRODUCT_SQL = "INSERT INTO products (name, description, brand, price, stock, category_id) VALUES (?, ?, ?, ?, ?, ?);";

    public ProductRepository() {
    }


    public List<Product> selectAllProducts() {
        List<Product> products = new ArrayList<>();
        try (Connection connection = baseRepository.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_USERS)) {
            System.out.println(preparedStatement);

            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                int productId = resultSet.getInt("product_id");
                String name = resultSet.getString("name");
                String description = resultSet.getString("description");
                String brand = resultSet.getString("brand");
                double price = resultSet.getDouble("price");
                int stock = resultSet.getInt("stock");
                int categoryId = resultSet.getInt("category_id");

                Product product = new Product(productId, name, description, brand, price, stock, categoryId);
                products.add(product);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return products;

    }

    public void addProduct(Product product) {
        Connection connection = baseRepository.getConnection();

        PreparedStatement preparedStatement = null;
        try {
            preparedStatement = connection.prepareStatement(ADD_PRODUCT_SQL);
            preparedStatement.setString(1, product.getName());
            preparedStatement.setString(2, product.getDescription());
            preparedStatement.setString(3, product.getBrand());
            preparedStatement.setDouble(4, product.getPrice());
            preparedStatement.setInt(5, product.getStock());
            preparedStatement.setInt(6, product.getCategoryId());
            System.out.println(preparedStatement);
            preparedStatement.executeUpdate();

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
