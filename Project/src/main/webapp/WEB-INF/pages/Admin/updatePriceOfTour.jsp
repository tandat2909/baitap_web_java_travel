<%@ taglib prefix="input" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 02-05-2021
  Time: 10:22 PM
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
                <li class="breadcrumb-item active" aria-current="page">Content Blocks</li>
            </ol>
        </nav>
        <!-- //breadcrumbs -->

        <!-- card heading -->
        <div class="cards__heading">
            <h3>${tour.tourName}</h3>
        </div>
        <!-- //card heading -->

        <!-- content block style 2-->
        <div class="card card_border p-lg-5 p-3 mb-4">
            <div class="card-body py-3 p-0">
                <div class="row">
                    <div class="col-lg-6 pr-lg-4">
                        <img src="<c:url value="/admin/images/template1.jpg"/>" alt="" class="img-fluid rounded" />
                    </div>
                    <div class="col-lg-6 align-self pl-lg-4 mt-lg-0 mt-4">
                        <h3 class="block__title mb-lg-4">Nội Dung Tour</h3>
                        <p class="mb-3">${tour.content}</p>
                        <p class="mb-3">giá: ${tour.price}</p>
                        <a href="#read" class="btn btn-style btn-primary mr-2"> Read More</a>
                        <a href="#more" class="btn btn-style border-btn"> Contact Us</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- //content block style 2-->

        <!-- content block style 6 -->
        <div class="card card_border p-lg-5 p-3 mb-4">
            <div class="card-body py-3 p-0">
                <h3 class="block__title mb-lg-4">Chi tiết tour</h3>
                <div class="row feature-3 text-center">
                    <div class="col-md-4 three-grids-columns mt-5">
                        <span class="fa fa-motorcycle icon-fea" aria-hidden="true"></span>
                        <a href="#">

                            <h4>Vehicle</h4>
                        </a>
                        <p>${tour.vehicle}</p>

                        <a href="#" class="actionbg">Read More</a>
                    </div>
                    <div class="col-md-4 three-grids-columns mt-5">
                        <span class="fa fa-money icon-fea" aria-hidden="true"></span>
                        <a href="#">

                            <h4>Duration</h4>
                        </a>
                        <p class="duration" data-startday="<fmt:formatDate value='${tour.startDay}' pattern='yyyy-MM-dd'/>"
                           data-endday="<fmt:formatDate value='${tour.endDay}' pattern='yyyy-MM-dd'/>"></p>
                        <a href="#" class="actionbg">Read More</a>
                    </div>
                    <div class="col-md-4 three-grids-columns mt-5">
                        <span class="fa fa-users icon-fea" aria-hidden="true"></span>
                        <a href="#">

                            <h4>maxseats</h4>
                        </a>
                        <p>${tour.maxseats}</p>
                        <a href="#" class="actionbg">Read More</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- //content block style 6 -->

        <!-- content block style 7 -->
        <div class="w3l-about1 card card_border p-lg-5 p-3 mb-4" id="updateprice">
            <div class="card-body py-3 p-0">
                <h3 class="block__title mb-lg-4">Giá Tour</h3>
                <form action="" method="post">
                <div class="row cwp23-content">
                    <div class="col-md-6 cwp23-text">
                        <div class="row cwp23-text-cols">
                            <input type="hidden" id="prices" name="prices">
                            <c:forEach items="${price}" var="p">
<%--                                <jsp:useBean id="p" scope="request" type="com.travels.springmvc.pojo.Tourprices"/>--%>
                                <div class="column mt-4 col-md-6 ages">
                                    <span class="fa fa-laptop icon-fea" aria-hidden="true"></span>
                                    <a href="#url">${p.ages.name}</a>
                                    <input type="text" value="${p.price}"  id="${p.ages.ageId}">
                                </div>
                            </c:forEach>
                        </div>
                        <button id="aaaa" class="btn btn-primary btn-style mt-4">save</button>
                    </div>
                    <div class="col-md-6 mt-md-0 mt-5 cwp23-img">
                        <img src="<c:url value="/admin/images/template2.jpg"/>" class="img-fluid rounded" alt="">
                    </div>
                </div>
                </form>
            </div>
        </div>
        <!-- //content block style 7 -->

    </div>
    <!-- //content -->

</div>

<!-- main content end-->
