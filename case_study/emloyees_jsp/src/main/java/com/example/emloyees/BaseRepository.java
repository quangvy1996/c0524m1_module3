package com.example.emloyees;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class BaseRepository {
    private Connection connection;
    private String jdbcURL = "jdbc:mysql://localhost:3306/user";
    private String jdbcUsername = "root";
    private String jdbcPassword = "codegym";

    public BaseRepository() {

            try {
                Class.forName("com.mysql.jdbc.Driver");
                connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
            } catch (SQLException e) {
                e.printStackTrace();
            } catch (ClassNotFoundException e) {
                e.printStackTrace();
            }
    }
    public Connection getConnection() {return connection;}
}
