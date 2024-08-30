<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Search Product</title>
</head>
<body>
<h1>Search Product by Name</h1>

<!-- Form để nhập tên sản phẩm cần tìm kiếm -->
<form action="product" method="get">
    <input type="hidden" name="action" value="search">
    <label for="name">Enter Product Name:</label>
    <input type="text" id="name" name="name" required>
    <button type="submit">Search</button>
</form>

<!-- Hiển thị kết quả tìm kiếm -->
<c:if test="${not empty product}">
    <h2>Product Details</h2>
    <p><strong>ID:</strong> ${product.id}</p>
    <p><strong>Name:</strong> ${product.name}</p>
    <p><strong>Price:</strong> ${product.price}</p>
    <p><strong>Description:</strong> ${product.description}</p>
    <p><strong>Manufacturer:</strong> ${product.manufacturer}</p>
</c:if>

<!-- Thông báo khi không tìm thấy sản phẩm -->
<c:if test="${empty product}">
    <c:if test="${not empty name}">
        <p>No product found with name: "${name}"</p>
    </c:if>
</c:if>

<!-- Liên kết để quay lại danh sách sản phẩm -->
<a href="product-servlet">Back to Product List</a>
</body>
</html>
