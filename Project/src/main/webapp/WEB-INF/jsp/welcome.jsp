<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>

<h1>helo </h1>
<table>
    <tr>
        <td>id</td>
        <td>username</td>
        <td>pw</td>
    </tr>
    <c:forEach items="${lsaccount}" var="i">
        <tr>
            <td>${i.accountId}</td>
            <td>${i.userName}</td>
            <td>${i.pw}</td>
        </tr>
    </c:forEach>
</table>

<table>
    <tr>
        <td>customerId</td>
        <td>lastName</td>
        <td>accountId</td>
    </tr>
    <c:forEach items="${lscustomer}" var="i">
        <tr>
            <td>${i.customerId}</td>
            <td>${i.lastName}</td>
            <td>${i.account.accountId}</td>
        </tr>
    </c:forEach>
</table>

</body>
</html>