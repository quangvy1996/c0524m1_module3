<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Product</title>
</head>
<body>
<h1>Edit Product</h1>
<form action="product" method="post">
    <input type="hidden" name="action" value="edit">
    <input type="hidden" name="id" value="${product.id}">
    <label for="name">Name:</label>
    <input type="text" id="name" name="name" value="${product.name}" required>
    <label for="price">Price:</label>
    <input type="number" id="price" name="price" step="0.01" value="${product.price}" required>
    <label for="description">Description:</label>
    <input type="text" id="description" name="description" value="${product.description}" required>
    <label for="manufacturer">Manufacturer:</label>
    <input type="text" id="manufacturer" name="manufacturer" value="${product.manufacturer}" required>
    <button type="submit">Update Product</button>
</form>
<a href="product-servlet">Back to Product List</a>
</body>
</html>
