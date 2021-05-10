<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 11-04-2021
  Time: 12:24 PM
  To change this template use File | Settings | File Templates.
--%>
<%--<jsp:useBean id="tour" scope="request" class="com.travels.springmvc.pojo.Tour"></jsp:useBean>--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../LibraryJSP.jsp" %>


<!-- banner -->
<section class="banner_inner" id="home">
    <div class="banner_inner_overlay">
    </div>
</section>
<!-- //banner -->


<!-- tour packages -->
<section class="packages pt-5">
    <div class="container py-lg-4 py-sm-3">
        <h2 class="heading text-capitalize text-center"> Discover our tour packages</h2>
        <p class="text mt-2 mb-5 text-center">Vestibulum tellus neque, sodales vel mauris at, rhoncus finibus augue. Vestibulum urna ligula, molestie at ante ut, finibus vulputate felis.</p>
        <div class="row">
            <c:forEach items="${tours}" var="tour">
            <div class="col-lg-3 col-sm-6 mb-5">
                <div class="image-tour position-relative">
                    <img src="<c:url value="/TrangChu/images/tours/${tour.image}"/>" alt="" class="img-fluid" />
                    <p><span class="fa fa-tags"></span> <span>${tour.price}</span></p>
                </div>
                <div class="package-info">

                    <a href="${pageContext.request.contextPath}/tour?tourid=${tour.tourId}">
                        <h5 class="my-2">${tour.tourName}</h5>
                    </a>
                    <p class="">${tour.content}</p>
                    <ul class="listing mt-3">
                        <li><span class="fa fa-clock-o mr-2"></span>Thời gian : <span class="duration" data-startday="<fmt:formatDate value='${tour.startDay}' pattern='yyyy-MM-dd'/>"
                                                                                      data-endday="<fmt:formatDate value='${tour.endDay}' pattern='yyyy-MM-dd'/>"
                        ></span></li>
                        <li><span class="fa fa-clock-o mr-2"></span>Phương tiện : <span>${tour.vehicle}</span></li>
                        <li><span class="fa fa-clock-o mr-2"></span>Chỗ : <span>${tour.maxseats}</span></li>
                    </ul>
                </div>
            </div>
            </c:forEach>

        </div>
    </div>
</section>
<!-- tour packages -->

<!-- destinations -->
<section class="destinations py-5" id="destinations">
    <div class="container py-xl-5 py-lg-3">
        <h3 class="heading text-capitalize text-center"> Popular Destinations</h3>
        <p class="text mt-2 mb-5 text-center">Vestibulum tellus neque, sodales vel mauris at, rhoncus finibus augue. Vestibulum urna ligula, molestie at ante ut, finibus vulputate felis.</p>
        <div class="row inner-sec-w3layouts-w3pvt-lauinfo">
            <div class="col-md-3 col-sm-6 col-6 destinations-grids text-center">
                <h4 class="destination mb-3">China</h4>
                <div class="image-position position-relative">
                    <img src="<c:url value="/TrangChu/images/china.jpg"/>" class="img-fluid" alt="">
                    <div class="rating">
                        <ul>
                            <li><span class="fa fa-star"></span></li>
                            <li><span class="fa fa-star"></span></li>
                            <li><span class="fa fa-star"></span></li>
                            <li><span class="fa fa-star"></span></li>
                            <li><span class="fa fa-star"></span></li>
                        </ul>
                    </div>
                </div>
                <div class="destinations-info">
                    <div class="caption mb-lg-3">
                        <h4>China</h4>
                        <a href="booking.html">Book Now</a>
                    </div>
                </div>
            </div>
            <div class="col-md-3 col-sm-6 col-6 destinations-grids text-center">
                <h4 class="destination mb-3">Malaysia</h4>
                <div class="image-position position-relative">
                    <img src="<c:url value="/TrangChu/images/malaysia.jpg"/>" class="img-fluid" alt="">
                    <div class="rating">
                        <ul>
                            <li><span class="fa fa-star"></span></li>
                            <li><span class="fa fa-star"></span></li>
                            <li><span class="fa fa-star"></span></li>
                            <li><span class="fa fa-star"></span></li>
                            <li><span class="fa fa-star"></span></li>
                        </ul>
                    </div>
                </div>
                <div class="destinations-info">
                    <div class="caption mb-lg-3">
                        <h4>Malaysia</h4>
                        <a href="booking.html">Book Now</a>
                    </div>
                </div>
            </div>
            <div class="col-md-3 col-sm-6 col-6 destinations-grids text-center mt-md-0 mt-4">
                <h4 class="destination mb-3">Japan</h4>
                <div class="image-position position-relative">
                    <img src="<c:url value="/TrangChu/images/japan.jpg"/>" class="img-fluid" alt="">
                    <div class="rating">
                        <ul>
                            <li><span class="fa fa-star"></span></li>
                            <li><span class="fa fa-star"></span></li>
                            <li><span class="fa fa-star"></span></li>
                            <li><span class="fa fa-star"></span></li>
                            <li><span class="fa fa-star"></span></li>
                        </ul>
                    </div>
                </div>
                <div class="destinations-info">
                    <div class="caption mb-lg-3">
                        <h4>Japan</h4>
                        <a href="booking.html">Book Now</a>
                    </div>
                </div>
            </div>
            <div class="col-md-3 col-sm-6 col-6 destinations-grids text-center mt-md-0 mt-4">
                <h4 class="destination mb-3">Singapore</h4>
                <div class="image-position position-relative">
                    <img src="<c:url value="/TrangChu/images/singapore.jpg"/>" class="img-fluid" alt="">
                    <div class="rating">
                        <ul>
                            <li><span class="fa fa-star"></span></li>
                            <li><span class="fa fa-star"></span></li>
                            <li><span class="fa fa-star"></span></li>
                            <li><span class="fa fa-star"></span></li>
                            <li><span class="fa fa-star"></span></li>
                        </ul>
                    </div>
                </div>
                <div class="destinations-info">
                    <div class="caption mb-lg-3">
                        <h4>Singapore</h4>
                        <a href="booking.html">Book Now</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- destinations -->