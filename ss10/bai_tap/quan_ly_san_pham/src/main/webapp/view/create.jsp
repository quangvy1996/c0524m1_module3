<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add New Product</title>
</head>
<body>
<h1>Add New Product</h1>

<!-- Form thêm sản phẩm mới -->
<form method="post">
    <!-- Tham số action để xác định thao tác cần thực hiện trong servlet -->
    <input type="hidden" name="action" value="add">

    <label for="name">Name:</label>
    <input type="text" id="name" name="name" required><br><br>

    <label for="price">Price:</label>
    <input type="number" id="price" name="price" step="0.01" required><br><br>

    <label for="description">Description:</label>
    <input type="text" id="description" name="description" required><br><br>

    <label for="manufacturer">Manufacturer:</label>
    <input type="text" id="manufacturer" name="manufacturer" required><br><br>

    <button type="submit" value="add">Add Product</button>
</form>

<!-- Liên kết quay lại danh sách sản phẩm -->
<a href="product-servlet">Back to Product List</a>
</body>
</html>
