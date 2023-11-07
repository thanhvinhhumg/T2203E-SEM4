<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Customer form</title>
</head>
<body>
<h1> List Customer</h1>
<table border="1">
    <tr>
        <th>STT</th>
        <th>Name</th>
        <th>Age</th>
        <th>Address</th>
    </tr>
    <c:forEach var="customer" items="${customers}" varStatus="loop">
        <tr>
            <td>${loop.index + 1}</td>
            <td>${customer.name}</td>
            <td>${customer.age}</td>
            <td>${customer.address}</td>
        </tr>
    </c:forEach>
</table>


</body>
</html>