<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 10/21/2023
  Time: 5:08 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="custTag" uri="WEB-INF/myCustomTag.tld" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>Custom tag</title>
</head>
<body>
<h1> This is customTag demo</h1>

<custTag:myCustomTagHandler name="T2203E"/>

<custTag:tagBodyCustom>
    Ngày hôm nay là :
</custTag:tagBodyCustom>
</body>
</html>
