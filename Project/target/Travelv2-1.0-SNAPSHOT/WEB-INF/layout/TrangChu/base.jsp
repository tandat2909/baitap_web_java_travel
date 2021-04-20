<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 07-04-2021
  Time: 10:22 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"
           uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring"
           uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="tiles"
           uri="http://tiles.apache.org/tags-tiles" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Grand Tour Travel Category Flat Bootstrap Responsive Web Template | Home :: w3layouts</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="utf-8">
    <meta name="keywords" content="Grand Tour Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />

    <script>
        addEventListener("load", function () {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    </script>

    <!-- css files -->
    <link  href="<c:url value="/TrangChu/css/bootstrap.css"/>" rel='stylesheet' type='text/css' /><!-- bootstrap css -->
    <link href="<c:url value="/TrangChu/css/style.css"/>" rel='stylesheet' type='text/css' /><!-- custom css -->
    <link href="<c:url value="/TrangChu/css/font-awesome.min.css"/>" rel="stylesheet"><!-- fontawesome css -->
    <!-- //css files -->

    <link href="<c:url value="/TrangChu/css/css_slider.css"/>" type="text/css" rel="stylesheet" media="all">

    <!-- google fonts -->
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">
    <link href="http://fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
    <!-- //google fonts -->



</head>
<body>
    <tiles:insertAttribute name="header" />

    <tiles:insertAttribute name="content" />
    <tiles:insertAttribute name="footer" />

</body>
<script src="<c:url value="/TrangChu/js/jquery-3.3.1.min.js"/>"type="text/javascript" ></script>
<script src="<c:url value="/TrangChu/js/popper.min.js"/> "></script>
<script src="<c:url value="/TrangChu/js/bootstrap.min.js"/>"></script>
</html>
