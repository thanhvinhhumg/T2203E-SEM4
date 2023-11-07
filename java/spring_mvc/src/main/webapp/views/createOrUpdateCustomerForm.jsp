<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Customer form</title>
</head>
<body>
<form action="/customer/createOrUpdate" method="post" modelAttribute="customer">
    <input type="hidden" name="id" value="${customer.id}" />
    <input type="text" name="name" value="${customer.name}" />
    <input type="text" name="age" value="${customer.age}" />
    <input type="text" name="address" value="${customer.address}" />
    <input type="submit" value="submit" />
</form>


</body>
</html>