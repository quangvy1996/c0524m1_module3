<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Calculator Result</title>
</head>
<body>
<h1>Result:</h1>
<%
    Double operand1 = (Double) request.getAttribute("operand1");
    Double operand2 = (Double) request.getAttribute("operand2");
    String operation = (String) request.getAttribute("operation");
    Double result = (Double) request.getAttribute("result");
    String errorMessage = (String) request.getAttribute("errorMessage");

    if (errorMessage != null) {
%>
<p><strong><%= errorMessage %></strong></p>
<%
} else {
%>
<p><%= operand1 %> <%= operation %> <%= operand2 %> = <%= result %></p>
<%
    }
%>
</body>
</html>
