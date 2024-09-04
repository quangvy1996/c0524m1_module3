<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Delete Product</title>
</head>
<body>
<h1>Delete Product</h1>

<p>Are you sure you want to delete the following product?</p>

<table border="1">
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Price</th>
        <th>Description</th>
        <th>Manufacturer</th>
    </tr>
    <tr>
        <td>${product.id}</td>
        <td>${product.name}</td>
        <td>${product.price}</td>
        <td>${product.description}</td>
        <td>${product.manufacturer}</td>
    </tr>
</table>

<!-- Form xác nhận xóa -->
<form method="post">
    <input type="hidden" name="action" value="delete">
    <input type="hidden" name="id" value="${product.id}">
    <button type="submit" value="delete">Yes, delete it!</button>
</form>

<!-- Liên kết quay lại danh sách sản phẩm -->
<a href="">No, take me back</a>
</body>
</html>
