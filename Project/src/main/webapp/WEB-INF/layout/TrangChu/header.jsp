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
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<!-- header -->


<header>
    <div class="container">
        <!-- nav -->
        <nav class="py-md-4 py-3 d-lg-flex">
            <div id="logo">
                <h1 class="mt-md-0 mt-2"><a href="${pageContext.request.contextPath}/TrangChu"><span
                        class="fa fa-map-signs"></span> Grand Tour </a></h1>
            </div>
            <label for="drop" class="toggle"><span class="fa fa-bars"></span></label>
            <input type="checkbox" id="drop"/>
            <ul class="menu ml-auto mt-1">
                <li class="active"><a href="${pageContext.request.contextPath}/">Home</a></li>
                <li class=""><a href="${pageContext.request.contextPath}/About">About Us</a></li>
                <li class=""><a href="${pageContext.request.contextPath}/Services">Services</a></li>
                <li class=""><a href="${pageContext.request.contextPath}/Packages">Packages</a></li>
                <li class=""><a href="${pageContext.request.contextPath}/Contact">Contact</a></li>
                <li>
                    <c:choose>
                        <c:when test="${pageContext.request.userPrincipal.name == null }">
                            <a href="${pageContext.request.contextPath}/login">Login</a>
                        </c:when>
                        <c:when test="${pageContext.request.userPrincipal != null}">
                            <a class="dropdown-toggle" style="color: white;cursor: pointer" data-toggle="dropdown" aria-haspopup="true"
                               aria-expanded="false">
                                ${pageContext.request.userPrincipal.name}
                            </a>
                            <div class="dropdown-menu">
                                <a class="dropdown-item" href="${pageContext.request.contextPath}/profile">Profile</a>
                                <a class="dropdown-item" href="#">Order</a>
                                <a class="dropdown-item" href="#">Something else here</a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="${pageContext.request.contextPath}/logout"><i
                                        class="fa fa-sign-out"></i> Logout</a>
                            </div>
                        </c:when>
                    </c:choose>


                </li>
            </ul>


        </nav>
        <!-- //nav -->
    </div>
</header>
<!-- //header -->

