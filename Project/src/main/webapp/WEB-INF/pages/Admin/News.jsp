<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 04-05-2021
  Time: 8:15 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../LibraryJSP.jsp"%>
<!-- main content start -->
<div class="main-content">
    <!-- content -->
    <div class="container-fluid content-top-gap">
        <!-- breadcrumbs -->
        <nav aria-label="breadcrumb" class="mb-4">
            <ol class="breadcrumb my-breadcrumb">
                <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                <li class="breadcrumb-item"><a href="#">Elements</a></li>
                <li class="breadcrumb-item active" aria-current="page">Cards</li>
            </ol>
        </nav>
        <!-- //breadcrumbs -->
        <!-- cards -->
        <section class="template-cards">
            <!-- Card Columns -->

            <div class="card card_border mb-5">
                <div class="cards__heading">
                    <h3>Card Columns</h3>
                </div>
                <div class="card-body">
                    <div class="card-columns">
                        <c:forEach items="${new}" var="n">
                        <div class="card">
                            <img src="<c:url value="/admin/images/cart.jpg"/>" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title">${n.title}</h5>
                                <p class="card-text mb-4">${n.short_description}</p>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
            <!-- /Card Columns -->
            </c:forEach>


        </section>
        <!-- //cards -->

    </div>
    <!-- //content -->
</div>
<!-- main content end-->
