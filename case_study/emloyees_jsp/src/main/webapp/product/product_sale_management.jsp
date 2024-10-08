<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 8/30/2024
  Time: 4:05 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Quản lý đơn hàng</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <script src="search.js"></script>

    <style>
        .custom-navbar {
            background-color: #343a40; /* Dark gray background for navbar */
        }

        .custom-table thead {
            background-color: #343a40; /* Dark gray background for table headers */
            color: white; /* White text color for table headers */
        }

        .navbar-brand, .nav-link, .dropdown-item, .btn-outline-light {
            color: white !important; /* White text color for navbar, dropdown, and outline button */
        }

        .btn-outline-light:hover {
            color: #343a40; /* Dark gray text color on hover */
            background-color: white; /* White background color on hover */
        }

        body {
            background-color: #f8f9fa; /* Overall background color of the page */
        }

        .modal-header, .modal-footer {
            background-color: #343a40; /* Dark gray background for modal header and footer */
            color: white; /* White text color for modal */
        }

        .modal-content {
            border-color: #343a40; /* Dark gray border color for modal */
        }
    </style>
</head>
<body>
<!-- Navigation bar -->
<nav class="navbar navbar-expand-lg navbar-dark custom-navbar">
    <a class="navbar-brand" href="#">
        <img src="/image/4gear.png" width="80" height="50" class="d-inline-block align-top" alt="Logo">
        Laptop 4Gear Nhân viên
    </a>
    <div class="collapse navbar-collapse">
        <!-- Order search form -->
        <form class="form-inline my-2 my-lg-0 ml-auto">
            <input class="form-control mr-sm-2" type="search" placeholder="Tìm kiếm đơn hàng" aria-label="Search">
            <button class="btn btn-outline-light my-2 my-sm-0" type="submit">Tìm kiếm</button>
        </form>
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
    <!-- Daily total revenue -->
    <div class="mb-4">
        <h4>Tổng doanh thu trong ngày: <span id="total-revenue">$1000</span></h4>
    </div>

    <!-- Date search form -->
    <div class="mb-4">
        <h5>Tìm kiếm đơn hàng theo ngày:</h5>
        <div class="form-inline">
            <input type="date" id="searchDate" class="form-control mr-2">
            <button class="btn btn-primary" onclick="searchByDate()">Tìm kiếm</button>
        </div>
    </div>

    <!-- Order management -->
    <div id="order-management">
        <h2>Quản lý đơn hàng</h2>
        <table class="table table-bordered custom-table">
            <thead>
            <tr>
                <th>#</th>
                <th>Mã đơn hàng</th>
                <th>Tên khách hàng</th>
                <th>Ngày đặt hàng</th>
                <th>Tổng cộng</th>
                <th>Trạng thái</th>
                <th>Thao tác</th>
            </tr>
            </thead>
            <tbody id="orderTable">
            <!-- Sample data -->
            <tr>
                <td>1</td>
                <td>ORD001</td>
                <td>Nguyễn Văn A</td>
                <td>2024-08-23</td>
                <td>$1000</td>
                <td>Processing</td>
                <td>
                    <a href="productDetail.jsp" class="btn btn-sm btn-primary">Xem</a>
                    <button class="btn btn-sm btn-success">Giao hàng</button>
                    <button class="btn btn-sm btn-danger">Hủy</button>
                </td>
            </tr>
            <!-- More rows can be added here -->
            </tbody>
        </table>
    </div>
</div>

<!-- Modal for displaying order details -->
<div class="modal fade" id="orderDetailsModal" tabindex="-1" aria-labelledby="orderDetailsModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="orderDetailsModalLabel">Chi tiết đơn hàng</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <!-- Order detail content -->
                <p><strong>Mã đơn hàng:</strong> ORD001</p>
                <p><strong>Tên khách hàng:</strong> Nguyễn Văn A</p>
                <p><strong>Ngày đặt hàng:</strong> 2024-08-23</p>
                <p><strong>Sản phẩm:</strong></p>
                <ul>
                    <li>Laptop Dell Inspiron - $500 x 2</li>
                </ul>
                <p><strong>Tổng cộng:</strong> $1000</p>
                <p><strong>Trạng thái:</strong> Processing</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Đóng</button>
            </div>
        </div>
    </div>
</div>

<!-- Bootstrap JS and jQuery -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<!-- JavaScript for date search -->

</body>
</html>
