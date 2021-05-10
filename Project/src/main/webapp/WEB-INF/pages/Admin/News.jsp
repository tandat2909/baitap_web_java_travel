<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 04-05-2021
  Time: 8:15 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../LibraryJSP.jsp"%>

<style>
    .destinations-grids {
        overflow: hidden;
        position: relative;
    }

    .caption a {
        font-size: 15px;
        background: none;
        border: 1px solid #ccc;
        padding: 12px 20px;
        letter-spacing: 1px;
        color: #ccc;
        margin-top: 20px;
        display: inline-block;
    }

    .destinations-info {
        position: absolute;
        margin: 0;
        background: rgba(0, 0, 0, 0.8);
        padding: 30px 0px 10px;
        transition: .5s all;
        -webkit-transition: 0.5s all;
        -moz-transition: 0.5s all;
        -o-transition: 0.5s all;
        -ms-transition: 0.5s all;
        left: -40em;
        width: 100%;
        height: 100%;
        text-align: center;
    }

    .destinations-grids:hover div.destinations-info {
        left: 0;
    }

    .caption {
        padding: 0px;
    }
    .price{
        color: red;
    }

</style>
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
                <div class="cards__heading" >
                    <h3>Danh sách tin tức</h3>
                    <div class="text-right" ><a class="btn btn-primary" href="${pageContext.request.contextPath}/admin/addNews">
                        <i class="fa fa-plus"></i>  Thêm Tin Tức</a></div>

                </div>
                <div class="card-body">
                    <div class="card-columns" >
                        <c:forEach items="${news}" var="n">
                            <div class="card destinations-grids" id="${n.newId}">
                                <div class="destinations-info">
                                    <div class="caption mb-lg-3">
                                        <a href="${pageContext.request.contextPath}/newsdetails?newId=${n.newId}"
                                           target="_blank"><i class="fa fa-info-circle"></i> Chi tiết</a>
                                        <br>
                                        <a href="${pageContext.request.contextPath}/admin/editNews?newId=${n.newId}"
                                           target="_blank"><i class="fa fa-edit"></i> Chỉnh sửa</a>
                                        <a href="javascript:" onclick="deleteNew('${n.newId}')"><i class="fa fa-trash"></i> Xóa</a>
                                    </div>
                                </div>
                                <div>
                                    <img src="<c:url value="${n.image}"/>" class="card-img-top" alt="...">
                                </div>

                                <div class="card-body">
                                    <h4 class="card-title">${n.title}</h4>
                                    <p class="card-text mb-4">Mô tả ngắn: ${n.short_description}</p>
                                    <p class="card-text mt-1"><i class="fa fa-calendar"></i> Ngày đăng: <fmt:formatDate value="${n.date_submitted}"/></p>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </div>
            </div>
            <!-- /Card Columns -->



        </section>
        <!-- //cards -->

    </div>
    <!-- //content -->
</div>
<!-- main content end-->
