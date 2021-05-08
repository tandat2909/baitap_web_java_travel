<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 29-04-2021
  Time: 10:32 PM
  To change this template use File | Settings | File Templates.
--%>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"
           uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring"
           uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="tiles"
           uri="http://tiles.apache.org/tags-tiles" %>
<!-- banner -->
<section class="banner_inner" id="home">
    <div class="banner_inner_overlay">
    </div>
</section>
<!-- //banner -->
<!-- places Search -->
<section class="trav-grids py-5" id="desti">
    <div class="container py-xl-5 py-lg-3">
        <h3 class="heading text-capitalize text-center mb-lg-5 mb-4">Kết quả tìm kiếm</h3>
        <div>
            <c:forEach items="${tours}" var="Search">
                <div class="col-lg-6 mt-4">
                    <div class="grids-tem-one">
                        <div class="row">
                            <div class="col-sm-5 grids-img-left">
                                <img src="<c:url value="/TrangChu/images/japan.jpg"/>" alt="" class="img-fluid">
                            </div>
                                <div class="col-sm-7 right-cont">
                                    <h4 class="mb-2 let mt-sm-0 mt-2 tm-clr">${Search.tourName}</h4>
                                    <ul class="d-flex">
                                        <li><span class="fa fa-star"></span></li>
                                        <li><span class="fa fa-star"></span></li>
                                        <li><span class="fa fa-star"></span></li>
                                        <li><span class="fa fa-star"></span></li>
                                        <li><span class="fa fa-star"></span></li>
                                    </ul>
                                    <p class="mt-3">${Search.content}</p>
                                    <p class="duration mt-2"><span class="fa fa-clock-o mr-2"></span><strong>Duration</strong>${Search.startDay}</p>
                                </div>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>

    </div>
</section>
<!-- //places -->
