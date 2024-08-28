<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <title>Product Discount Calculator</title>
</head>
<body>
<form action="discount" method="post"><label for = "description">Product Description:</label>
  <input type= text name = "description" id="description">
  <label for="price">List Price</label>
  <input type="number" name="price" id="price">
  <label for="discount">Discount Percent</label>
  <input type="number" name="discount" id="discount">
  <input type="submit" value="SUBMIT"></form>



</body>
</html>