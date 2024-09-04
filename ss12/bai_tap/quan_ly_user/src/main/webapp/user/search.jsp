<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>User List</title>
</head>
<body>
<h2>
    <a href="users?action=users">List All Users</a>
</h2>
<h1>User List</h1>
<form method="post">
    <label>
        <input type="text" name="name" placeholder="Search by name">
    </label>
    <input type="hidden" name="action" value="search">
    <input type="submit" value="Search">
</form>
<table border="1">
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Email</th>
        <th>Country</th>
    </tr>
    <c:forEach var="user" items="${listUser}">
        <tr>
            <td>${user.id}</td>
            <td>${user.name}</td>
            <td>${user.email}</td>
            <td>${user.country}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
