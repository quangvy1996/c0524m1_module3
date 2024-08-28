<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Danh sách khách hàng</title>
  <style>
    table {
      border-collapse: collapse;
      width: 70%;
    }

    th, td {
      padding: 8px;
      text-align: left;
      border-bottom: 1px solid #ddd;
    }
    img {
      width: 50px;
      height: 50px;
    }
  </style>
</head>
<body>
<h2 style="margin-left: 300px">Danh sách khách hàng</h2>
<table>
  <thead>
  <tr>
    <th>Tên</th>
    <th>Ngày sinh</th>
    <th>Địa chỉ</th>
    <th>Ảnh</th>
  </tr>
  </thead>
  <tbody>
  <tr>
    <td>Mai Văn Hoàn</td>
    <td>1983-08-20</td>
    <td>Hà Nội</td>
    <td><img src="image/1.jpeg"> </td>
  </tr>
  <tr>
    <td>Nguyễn Văn Nam</td>
    <td>1983-08-21</td>
    <td>Bắc Giang</td>
    <td><img src="image/2.jpg"></td>
  </tr>
  <tr>
    <td>Nguyễn Thái Hòa</td>
    <td>1983-08-22</td>
    <td>Nam Định</td>
    <td><img src="image/1.jpeg"></td>
  </tr>
  <tr>
    <td>Trần Đăng Khoa</td>
    <td>1983-08-17</td>
    <td>Hà Tây</td>
    <td><img src="image/2.jpg"></td>
  </tr>
  <tr>
    <td>Nguyễn Đình Thi</td>
    <td>1983-08-19</td>
    <td>Hà Nội</td>
    <td><img src="image/1.jpeg"></td>
  </tr>
  </tbody>
</table>
<a href = "<c:url value = "calculator.jsp"/>">Calculator</a>
</body>
</html>