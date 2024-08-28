<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 8/28/2024
  Time: 10:46 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <meta charset="UTF-8">
    <title>Calculator</title>
</head>
<body>
<h1>Simple Calculator</h1>
<form action="CalculatorServlet" method="post">
    <fieldset>
        <legend>Calculator</legend>
        <label for="operand1">First operand:</label>
        <input type="number" id="operand1" name="operand1" required><br><br>

        <label for="operator">Operator:</label>
        <select id="operator" name="operator">
            <option value="add">Addition</option>
            <option value="subtract">Subtraction</option>
            <option value="multiply">Multiplication</option>
            <option value="divide">Division</option>
        </select><br><br>

        <label for="operand2">Second operand:</label>
        <input type="number" id="operand2" name="operand2" required><br><br>

        <input type="submit" value="Calculate">
    </fieldset>
</form>
</body>
</html>
