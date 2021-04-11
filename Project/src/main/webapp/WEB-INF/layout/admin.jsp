<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 10-04-2021
  Time: 1:20 PM
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
<!DOCTYPE HTML>
<html>
<head>
    <title>Modern an Admin Panel Category Flat Bootstarp Resposive Website Template | Home :: w3layouts</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Modern Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!-- Bootstrap Core CSS -->
    <link href="<c:url value="/admin/css/bootstrap.min.css"/>" rel='stylesheet' type='text/css' />
    <!-- Custom CSS -->
    <link href="<c:url value="/admin/css/style.css"/>" rel='stylesheet' type='text/css' />
    <!-- Graph CSS -->
    <link href="<c:url value="/admin/css/lines.css"/>" rel='stylesheet' type='text/css' />
    <link href="<c:url value="/admin/css/font-awesome.css"/>" rel="stylesheet">
    <!-- jQuery -->
    <script src="<c:url value="/admin/js/jquery.min.js"/>"></script>
    <!----webfonts--->
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900' rel='stylesheet' type='text/css'>
    <!---//webfonts--->
    <!-- Nav CSS -->
    <link href="<c:url value="/admin/css/custom.css"/>" rel="stylesheet">
    <!-- Metis Menu Plugin JavaScript -->
    <script src="<c:url value="/admin/js/metisMenu.min.js"/>"></script>
    <script src="<c:url value="/admin/js/custom.js"/>"></script>
    <!-- Graph JavaScript -->
    <script src="<c:url value="/admin/js/d3.v3.js"/>"></script>
    <script src="<c:url value="/admin/js/rickshaw.js"/>"></script>
</head>
<body>
<div id="wrapper">
    <tiles:insertAttribute name="adminHeader" />
    <div id="page-wrapper">
    <tiles:insertAttribute name="content" />
    </div>
</div>



<!-- Bootstrap Core JavaScript -->
<script src="<c:url value="/admin/js/bootstrap.min.js"/>"></script>
</body>

</html>
