<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 8/29/2024
  Time: 11:22 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <meta charset="UTF-8">
    <title>Product List</title>
</head>
<body>
<h2>All Products</h2>
<h3><a href="product-servlet?action=create">Thêm mới sản phẩm</a></h3>
<h3><a href="product-servlet?action=search">Tìm kiếm</a></h3>
<table border="1">
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Price</th>
        <th>Description</th>
        <th>Manufacturer</th>
        <th>Actions</th>
    </tr>
    <c:forEach var="product" items="${products}">
        <tr>
            <td>${product.id}</td>
            <td>${product.name}</td>
            <td>${product.price}</td>
            <td>${product.description}</td>
            <td>${product.manufacturer}</td>
            <td>
                <a href="product-servlet?action=view&id=${product.id}">View</a>
                <a href="product-servlet?action=edit&id=${product.id}">Edit</a>
                <a href="product-servlet?action=delete&id=${product.id}" onclick="return confirm('Bạn có muốn xóa không?');">Delete</a>
            </td>
        </tr>
    </c:forEach>
</table></body>
</html>
