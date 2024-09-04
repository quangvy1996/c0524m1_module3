<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 8/30/2024
  Time: 4:41 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Chi tiết đơn hàng</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .custom-navbar {
            background-color: #343a40; /* Đổi màu nền navbar thành xám đậm */
        }
        .order-details-table th, .order-details-table td {
            border: 1px solid #343a40; /* Đổi màu viền bảng thành xám đậm */
        }
        .order-details-table th {
            background-color: #343a40; /* Đổi màu nền tiêu đề bảng thành xám đậm */
            color: white; /* Giữ màu chữ trắng cho tiêu đề bảng */
        }
        .navbar-brand, .nav-link, .dropdown-item {
            color: white !important; /* Đổi màu chữ navbar và dropdown thành trắng */
        }
        body {
            background-color: #f8f9fa; /* Màu nền tổng thể của trang */
        }
        .btn-primary {
            background-color: #343a40; /* Đổi màu nền nút button thành xám đậm */
            border-color: #343a40; /* Đổi màu viền nút button thành xám đậm */
        }
        .btn-primary:hover {
            background-color: #23272b; /* Màu nền nút button khi hover thành xám đậm hơn */
            border-color: #23272b; /* Màu viền nút button khi hover */
        }
    </style>
</head>
<body>
<!-- Thanh điều hướng -->
<nav class="navbar navbar-expand-lg navbar-dark custom-navbar">
    <a class="navbar-brand" href="order-management.html">
        <img src="/image/4gear.png" width="80" height="50" class="d-inline-block align-top" alt="Logo">
        Laptop 4Gear Nhân viên
    </a>
    <div class="collapse navbar-collapse">
        <ul class="navbar-nav ml-auto">
            <li class="nav-item"><a class="nav-link" href="product_management.jsp">Quản lý sản phẩm</a></li>
            <li class="nav-item"><a class="nav-link" href="product_sale_management.jsp">Quản lý đơn hàng</a></li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Nhân viên
                </a>
                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                    <a class="dropdown-item" href="#">Thông tin cá nhân</a>
                    <a class="dropdown-item" href="#">Đăng xuất</a>
                </div>
            </li>
        </ul>
    </div>
</nav>

<div class="container mt-5">
    <h2>Chi tiết đơn hàng</h2>
    <!-- Bảng chi tiết đơn hàng -->
    <table class="table order-details-table">
        <thead>
        <tr>
            <th>#</th>
            <th>Tên sản phẩm</th>
            <th>Số lượng</th>
            <th>Giá mỗi sản phẩm</th>
            <th>Tổng cộng</th>
        </tr>
        </thead>
        <tbody>
        <!-- Dữ liệu mẫu -->
        <tr>
            <td>1</td>
            <td>Laptop Dell Inspiron</td>
            <td>2</td>
            <td>$500</td>
            <td>$1000</td>
        </tr>
        <!-- Thêm các dòng khác nếu cần -->
        </tbody>
    </table>

    <!-- Thông tin chi tiết khác -->
    <div class="mb-4">
        <p><strong>Mã đơn hàng:</strong> ORD001</p>
        <p><strong>Tên khách hàng:</strong> Nguyễn Văn A</p>
        <p><strong>Ngày đặt hàng:</strong> 2024-08-23</p>
        <p><strong>Tổng cộng:</strong> $1000</p>
        <p><strong>Trạng thái:</strong> Processing</p>
    </div>

    <div>
        <button class="btn btn-primary">Quay lại</button>
    </div>
</div>

<!-- Bootstrap JS và jQuery -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
