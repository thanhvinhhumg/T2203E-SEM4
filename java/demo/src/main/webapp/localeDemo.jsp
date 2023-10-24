<%@ page import="java.util.Date" %>
<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 10/24/2023
  Time: 7:25 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="language" value="${empty param.lang ? 'vi_VN' : param.lang}" />
<fmt:setLocale value="${language}" />
<fmt:setBundle basename="ApplicationResources"/>
<html>
<head>
    <title>Locale</title>
</head>
<body>
<h1>${language}</h1>

<fmt:message key="welcome" />
<fmt:formatNumber var="formatNumber" value="123456789987654" type="number" />
<h1> format number : ${formatNumber}</h1>
<fmt:formatNumber var="formatNumberCurrency" value="123456789987654" type="currency" />
<h1> format number : ${formatNumberCurrency}</h1>
<fmt:formatDate value="<%= new Date()%>" var="formatDateFull" dateStyle="FULL"/>
<h1> format date full : ${formatDateFull}</h1>
<fmt:formatDate value="<%= new Date()%>" var="formatDateLong" dateStyle="LONG"/>
<h1> format date long : ${formatDateLong}</h1>

<h1>Using java </h1>
<h1> format number : ${fnumber}</h1>
<h1> format number currency : ${fCurrency}</h1>
<h1>welcome : ${welcome}</h1>
</body>
</html>
