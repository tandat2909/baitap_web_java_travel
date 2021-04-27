<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 11-04-2021
  Time: 11:56 AM
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
        <div class="row">
            <div class="col-lg-6 mt-4">
                <div class="grids-tem-one">
                    <div class="row">
                        <div class="col-sm-5 grids-img-left">
                            <img src="<c:url value="/TrangChu/images/japan.jpg"/>" alt="" class="img-fluid">
                        </div>
                        <c:forEach items="${diadiemdiSearch}" var="Search">
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
                            <p class="duration mt-2"><span class="fa fa-clock-o mr-2"></span><strong>Duration</strong> : 2 Days, 3hrs</p>
                        </div>
                        </c:forEach>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 mt-4">
                <div class="grids-tem-one">
                    <div class="row">
                        <div class="col-sm-5 grids-img-left">
                            <img src="<c:url value="/TrangChu/images/singapore.jpg"/>" alt="" class="img-fluid">
                        </div>
                        <div class="col-sm-7 right-cont">
                            <h4 class="mb-2 let mt-sm-0 mt-2 tm-clr">Singapore</h4>
                            <ul class="d-flex">
                                <li><span class="fa fa-star"></span></li>
                                <li><span class="fa fa-star"></span></li>
                                <li><span class="fa fa-star"></span></li>
                                <li><span class="fa fa-star"></span></li>
                                <li><span class="fa fa-star"></span></li>
                            </ul>
                            <p class="mt-3">Sed ut perspiciatis unde omnis istes natus error sit volup tatem accusani tium doloremque laudantium.</p>
                            <p class="duration mt-2"><span class="fa fa-clock-o mr-2"></span><strong>Duration</strong> : 2 Days, 3hrs</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row pt-lg-3">
            <div class="col-lg-6 mt-4">
                <div class="grids-tem-one">
                    <div class="row">
                        <div class="col-sm-5 grids-img-left">
                            <img src="<c:url value="/TrangChu/images/malaysia.jpg"/>" alt="" class="img-fluid">
                        </div>
                        <div class="col-sm-7 right-cont">
                            <h4 class="mb-2 let mt-sm-0 mt-2 tm-clr">Malaysia</h4>
                            <ul class="d-flex">
                                <li><span class="fa fa-star"></span></li>
                                <li><span class="fa fa-star"></span></li>
                                <li><span class="fa fa-star"></span></li>
                                <li><span class="fa fa-star"></span></li>
                                <li><span class="fa fa-star"></span></li>
                            </ul>
                            <p class="mt-3">Sed ut perspiciatis unde omnis istes natus error sit volup tatem accusani tium doloremque laudantium.</p>
                            <p class="duration mt-2"><span class="fa fa-clock-o mr-2"></span><strong>Duration</strong> : 2 Days, 3hrs</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 mt-4">
                <div class="grids-tem-one">
                    <div class="row">
                        <div class="col-sm-5 grids-img-left">
                            <img src="<c:url value="/TrangChu/images/china.jpg"/>" alt="" class="img-fluid">
                        </div>
                        <div class="col-sm-7 right-cont">
                            <h4 class="mb-2 mt-sm-0 mt-2 let tm-clr">China</h4>
                            <ul class="d-flex">
                                <li><span class="fa fa-star"></span></li>
                                <li><span class="fa fa-star"></span></li>
                                <li><span class="fa fa-star"></span></li>
                                <li><span class="fa fa-star"></span></li>
                                <li><span class="fa fa-star"></span></li>
                            </ul>
                            <p class="mt-3">Sed ut perspiciatis unde omnis istes natus error sit volup tatem accusani tium doloremque laudantium.</p>
                            <p class="duration mt-2"><span class="fa fa-clock-o mr-2"></span><strong>Duration</strong> : 2 Days, 3hrs</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- //places -->

<!-- services -->
<section class="services pt-5">
    <div class="container py-lg-5 py-sm-3">
        <h2 class="heading text-capitalize text-center mb-lg-5 mb-4"> Our Services</h2>
        <div class="row">
            <div class="col-lg-3 main-title-text">
                <h4 class="my-lg-4 mb-4">The journey of a thousand miles begins with a single step.</h4>
                <img src="<c:url value="/TrangChu/images/p1.jpg"/>" alt="" class="img-fluid" />
            </div>
            <div class="col-lg-9 mt-lg-0 mt-5">
                <div class="row">
                    <div class="col-lg-4 col-md-6 col-sm-6 service-grid-wthree text-center mb-5">
                        <div class="ser-fashion-grid">
                            <div class="about-icon mb-md-4 mb-3">
                                <span class="fa fa-building" aria-hidden="true"></span>
                            </div>
                            <div class="ser-sevice-grid">
                                <h4 class="pb-3">Accomodation</h4>
                                <p>Duis nisi sapien, elementum et finibus et fermen eget, aliquet etleo. Mauris vel ex.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 col-sm-6 service-grid-wthree text-center mb-5">
                        <div class="ser-fashion-grid">
                            <div class="about-icon mb-md-4 mb-3">
                                <span class="fa fa-free-code-camp" aria-hidden="true"></span>
                            </div>
                            <div class="ser-sevice-grid">
                                <h4 class="pb-3">Winter Tours</h4>
                                <p>Duis nisi sapien, elementum et finibus et fermen eget, aliquet etleo. Mauris vel ex.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 col-sm-6 service-grid-wthree text-center mb-5">
                        <div class="ser-fashion-grid">
                            <div class="about-icon mb-md-4 mb-3">
                                <span class="fa fa-users" aria-hidden="true"></span>
                            </div>
                            <div class="ser-sevice-grid">
                                <h4 class="pb-3">Exp Agents</h4>
                                <p>Duis nisi sapien, elementum et finibus et fermen eget, aliquet etleo. Mauris vel ex.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 col-sm-6 service-grid-wthree text-center mb-5">
                        <div class="ser-fashion-grid">
                            <div class="about-icon mb-md-4 mb-3">
                                <span class="fa fa-money" aria-hidden="true"></span>
                            </div>
                            <div class="ser-sevice-grid">
                                <h4 class="pb-3">Low Prices</h4>
                                <p>Duis nisi sapien, elementum et finibus et fermen eget, aliquet etleo. Mauris vel ex.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 col-sm-6 service-grid-wthree text-center mb-5">
                        <div class="ser-fashion-grid">
                            <div class="about-icon mb-md-4 mb-3">
                                <span class="fa fa-binoculars" aria-hidden="true"></span>
                            </div>
                            <div class="ser-sevice-grid">
                                <h4 class="pb-3">Easy Booking</h4>
                                <p>Duis nisi sapien, elementum et finibus et fermen eget, aliquet etleo. Mauris vel ex.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 col-sm-6 service-grid-wthree text-center mb-5">
                        <div class="ser-fashion-grid">
                            <div class="about-icon mb-md-4 mb-3">
                                <span class="fa fa-camera" aria-hidden="true"></span>
                            </div>
                            <div class="ser-sevice-grid">
                                <h4 class="pb-3">Best Packages</h4>
                                <p>Duis nisi sapien, elementum et finibus et fermen eget, aliquet etleo. Mauris vel ex.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- //services -->

<!-- text -->
<section class="text-content">
    <div class="overlay-inner py-5">
        <div class="container py-md-3">
            <div class="test-info">
                <h4 class="tittle">Enjoy The Trip</h4>
                <p class="mt-3">Duis nisi sapien, elementum finibus fermentum eget, aliquet leo et. Mauris hendrerit vel ex. Quisque vitae luctus massa.
                    Phasellus sed aliquam leo a massa eu fringilla. Integer ultrices finibus sed nisi. in convallis felis dapibus
                    sit amet.</p>
                <div class="text-left mt-4">
                    <a href="booking.html">Book Now</a>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- //text -->

<!-- places -->
<section class="trav-grids py-5" id="desti">
    <div class="container py-xl-5 py-lg-3">
        <h3 class="heading text-capitalize text-center mb-lg-5 mb-4">Tourism Places</h3>
        <div class="row">
            <div class="col-lg-6 mt-4">
                <div class="grids-tem-one">
                    <div class="row">
                        <div class="col-sm-5 grids-img-left">
                            <img src="<c:url value="/TrangChu/images/japan.jpg"/>" alt="" class="img-fluid">
                        </div>
                        <div class="col-sm-7 right-cont">
                            <h4 class="mb-2 let mt-sm-0 mt-2 tm-clr">Japan</h4>
                            <ul class="d-flex">
                                <li><span class="fa fa-star"></span></li>
                                <li><span class="fa fa-star"></span></li>
                                <li><span class="fa fa-star"></span></li>
                                <li><span class="fa fa-star"></span></li>
                                <li><span class="fa fa-star"></span></li>
                            </ul>
                            <p class="mt-3">Sed ut perspiciatis unde omnis istes natus error sit volup tatem accusani tium doloremque laudantium.</p>
                            <p class="duration mt-2"><span class="fa fa-clock-o mr-2"></span><strong>Duration</strong> : 2 Days, 3hrs</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 mt-4">
                <div class="grids-tem-one">
                    <div class="row">
                        <div class="col-sm-5 grids-img-left">
                            <img src="<c:url value="/TrangChu/images/singapore.jpg"/>" alt="" class="img-fluid">
                        </div>
                        <div class="col-sm-7 right-cont">
                            <h4 class="mb-2 let mt-sm-0 mt-2 tm-clr">Singapore</h4>
                            <ul class="d-flex">
                                <li><span class="fa fa-star"></span></li>
                                <li><span class="fa fa-star"></span></li>
                                <li><span class="fa fa-star"></span></li>
                                <li><span class="fa fa-star"></span></li>
                                <li><span class="fa fa-star"></span></li>
                            </ul>
                            <p class="mt-3">Sed ut perspiciatis unde omnis istes natus error sit volup tatem accusani tium doloremque laudantium.</p>
                            <p class="duration mt-2"><span class="fa fa-clock-o mr-2"></span><strong>Duration</strong> : 2 Days, 3hrs</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row pt-lg-3">
            <div class="col-lg-6 mt-4">
                <div class="grids-tem-one">
                    <div class="row">
                        <div class="col-sm-5 grids-img-left">
                            <img src="<c:url value="/TrangChu/images/malaysia.jpg"/>" alt="" class="img-fluid">
                        </div>
                        <div class="col-sm-7 right-cont">
                            <h4 class="mb-2 let mt-sm-0 mt-2 tm-clr">Malaysia</h4>
                            <ul class="d-flex">
                                <li><span class="fa fa-star"></span></li>
                                <li><span class="fa fa-star"></span></li>
                                <li><span class="fa fa-star"></span></li>
                                <li><span class="fa fa-star"></span></li>
                                <li><span class="fa fa-star"></span></li>
                            </ul>
                            <p class="mt-3">Sed ut perspiciatis unde omnis istes natus error sit volup tatem accusani tium doloremque laudantium.</p>
                            <p class="duration mt-2"><span class="fa fa-clock-o mr-2"></span><strong>Duration</strong> : 2 Days, 3hrs</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 mt-4">
                <div class="grids-tem-one">
                    <div class="row">
                        <div class="col-sm-5 grids-img-left">
                            <img src="<c:url value="/TrangChu/images/china.jpg"/>" alt="" class="img-fluid">
                        </div>
                        <div class="col-sm-7 right-cont">
                            <h4 class="mb-2 mt-sm-0 mt-2 let tm-clr">China</h4>
                            <ul class="d-flex">
                                <li><span class="fa fa-star"></span></li>
                                <li><span class="fa fa-star"></span></li>
                                <li><span class="fa fa-star"></span></li>
                                <li><span class="fa fa-star"></span></li>
                                <li><span class="fa fa-star"></span></li>
                            </ul>
                            <p class="mt-3">Sed ut perspiciatis unde omnis istes natus error sit volup tatem accusani tium doloremque laudantium.</p>
                            <p class="duration mt-2"><span class="fa fa-clock-o mr-2"></span><strong>Duration</strong> : 2 Days, 3hrs</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- //places -->
