<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 07-04-2021
  Time: 11:17 AM
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
<section class="banner_w3lspvt" id="home">
    <div class="csslider infinity" id="slider1">
        <input type="radio" name="slides" checked="checked" id="slides_1" />
        <input type="radio" name="slides" id="slides_2" />
        <input type="radio" name="slides" id="slides_3" />
        <input type="radio" name="slides" id="slides_4" />
        <ul>
            <li>
                <div class="banner-top">
                    <div class="overlay">
                        <div class="container">
                            <div class="w3layouts-banner-info">
                                <h3 class="text-wh">Never let your memories be greater than your dreams.</h3>
                                <h4 class="text-wh">tristique senectus et netus et malesuada</h4>
                                <div class="buttons mt-4">
                                    <a  href="/About" class="btn mr-2">About Us</a>
                                    <a href="/Booking" class="btn">Book a Tour</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </li>
            <li>
                <div class="banner-top1">
                    <div class="overlay">
                        <div class="container">
                            <div class="w3layouts-banner-info">
                                <h3 class="text-wh">It is better to travel than to arrive. Let's Be Adventurers.</h3>
                                <h4 class="text-wh">tristique senectus et netus et malesuada</h4>
                                <div class="buttons mt-4">
                                    <a  href="/About" class="btn mr-2">About Us</a>
                                    <a href="/Booking" class="btn">Book a Tour</a>
                                </div>
                                <!-- tìm kiếm -->
                                <div class="row">
                                    <div class="col-sm-3" style="background-color:lavender; margin: 5px;">.col-sm-4</div>
                                    <div class="col-sm-3" style="background-color:lavenderblush;margin: 5px;">.col-sm-4</div>
                                    <div class="col-sm-3" style="background-color:lavender;margin: 5px;">.col-sm-4</div>
                                    <br>

                                    <div class="col-sm-3" style="background-color:lavender; margin: 5px;">.col-sm-4</div>
                                    <div class="col-sm-3" style="background-color:lavenderblush;margin: 5px;">.col-sm-4</div>
                                    <div class="col-sm-3" style="background-color:lavender;margin: 5px;">.col-sm-4</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </li>
            <li>
                <div class="banner-top2">
                    <div class="overlay">
                        <div class="container">
                            <div class="w3layouts-banner-info">
                                <h3 class="text-wh">Never let your memories be greater than your dreams.</h3>
                                <h4 class="text-wh">tristique senectus et netus et malesuada</h4>
                                <div class="buttons mt-4">
                                    <a  href="/About" class="btn mr-2">About Us</a>
                                    <a href="/Booking" class="btn">Book a Tour</a>
                                </div>
                                <div class="row">
                                    <div class="col-sm-3" style="background-color:lavender; margin: 5px;">.col-sm-4</div>
                                    <div class="col-sm-3" style="background-color:lavenderblush;margin: 5px;">.col-sm-4</div>
                                    <div class="col-sm-3" style="background-color:lavender;margin: 5px;">.col-sm-4</div>
                                    <br>

                                    <div class="col-sm-3" style="background-color:lavender; margin: 5px;">.col-sm-4</div>
                                    <div class="col-sm-3" style="background-color:lavenderblush;margin: 5px;">.col-sm-4</div>
                                    <div class="col-sm-3" style="background-color:lavender;margin: 5px;">.col-sm-4</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </li>
            <li>
                <div class="banner-top3">
                    <div class="overlay1">
                        <div class="container">
                            <div class="w3layouts-banner-info">
                                <h3 class="text-wh">It is better to travel than to arrive. Let's Be Adventurers.</h3>
                                <h4 class="text-wh">tristique senectus et netus et malesuada</h4>
                                <div class="buttons mt-4">
                                    <a href="/About" class="btn mr-2">About Us</a>
                                    <a href="/Booking" class="btn">Book a Tour</a>
                                </div>
                                <div class="row">
                                    <div class="col-sm-3" style="background-color:lavender; margin: 5px;">.col-sm-4</div>
                                    <div class="col-sm-3" style="background-color:lavenderblush;margin: 5px;">.col-sm-4</div>
                                    <div class="col-sm-3" style="background-color:lavender;margin: 5px;">.col-sm-4</div>
                                    <br>

                                    <div class="col-sm-3" style="background-color:lavender; margin: 5px;">.col-sm-4</div>
                                    <div class="col-sm-3" style="background-color:lavenderblush;margin: 5px;">.col-sm-4</div>
                                    <div class="col-sm-3" style="background-color:lavender;margin: 5px;">.col-sm-4</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </li>
        </ul>
        <div class="arrows">
            <label for="slides_1"></label>
            <label for="slides_2"></label>
            <label for="slides_3"></label>
            <label for="slides_4"></label>
        </div>
    </div>
</section>
<!-- //banner -->
<div style="width: 80%; margin: 10px auto; margin-top: 40px;">
    <div  style="width: 100%; margin: 10px 0 ;">
        <form id="abc" action="${pageContext.request.contextPath}/timkiem" method="get" style="display: flex;">
        <div  <%--style="width: 10%; margin: 1%"--%>>
            <select class="form-control" style="width: 90%;" typesearch = "province" onchange="search(this)" name="province">
                <c:forEach items="${tinh}" var="t">
                    <option value="">Tỉnh</option>
                    <option value="${t.provinceId}">${t.provinceName}</option>
                </c:forEach>
            </select>
        </div>
        <div  <%--style="width: 10%; margin: 1%"--%>>
            <select class="form-control" style="width: 90%;" typesearch = "diadiemdi" <%--onchange="search(this)"--%> id="ddd" name="diadiemdi">
                <option value="">Các điểm địa đi</option>
<%--                <c:forEach items="${diadiemdi}" var="dd">--%>
<%--                    <option value="${dd.landMarkId}">${dd.landMarkName}</option>--%>
<%--                </c:forEach>--%>
            </select>
        </div>
        <div  <%--style="width: 10%; margin: 1%"--%>>
            <select class="form-control" style="width: 90%;" typesearch = "price" <%--onchange="search(this)"--%> name="price">
                <option value="">Price</option>
                <option value="0-1">dưới 1 triệu</option>
                <c:forEach var="to" begin="1" end="4">
                    <option value="${to}-${to+1}">${to} - ${to+2} triệu</option>
                </c:forEach>
            </select>
        </div>
        <div <%--style="width: 10%; margin: 1%"--%>>
           <input type="date" class="form-control" style="width: 90%;" <%--onchange="search(this)"--%> typesearch = "ngaydi" id="ngaydi" name="ngaydi">
        </div>
        <div <%--style="width: 10%; margin: 1%"--%>>
            <input type="date" class="form-control" style="width: 90%;" <%--onchange="search(this)"--%> typesearch = "ngayve" id="ngayve" name="ngayve">
        </div>
        <button type="submit" class="btn btn-primary">Tìm Kiếm</button>
        </form>
    </div>
</div>
<%--<form action="${pageContext.request.contextPath}/timkiem" method="GET" id="abc">--%>
<%--    <input type="hidden" id="loaitimkiem" name="loaiTimKiem" />--%>
<%--    <input type="hidden" value="" id="kw" name="kw"/>--%>
<%--</form>--%>
<script>
    function search(select){
        var  urlhome = $("#uri").attr("href")
        var kw = $(select).val()
        let diadiemdi = document.getElementById("ddd")
        fetch(urlhome+"/landmarkId?kw=" + kw, {
            headers: {
                "content-type": "application/json"
            }
        }).then(res => res.json()).then(data =>{
            console.log(data[0])
            for(let i = 0; i < data.length; i++){
                diadiemdi.append(new Option(data[i].landMarkName, data[i].landMarkId))

            }
        })
        // $.getJSON("/landmarkId?kw=" + kw).done(function (landmark){
        //     console.log("vasdvs", JSON.stringify(landmark))
        // })
        // console.log(kw)
        // console.log($(select).attr("typesearch"))
        // $("#kw").val(kw);
        // $("#loaitimkiem").val($(select).attr("typesearch"))
        //$("#abc").submit();
    }
</script>
<!-- about -->
<section class="about py-5">
    <div class="container py-lg-5 py-sm-4">
        <div class="row">
            <div class="col-lg-6 about-left">
                <h3 class="mt-lg-3">We will take you to the Top destination in the world, <strong>Explore with us!</strong></h3>
                <p class="mt-4">Duis nisi sapien, elementum finibus fermentum eget, aliquet leo et. Mauris hendrerit vel ex.
                    Quisque vitae luctus massa. Phasellus sed aliquam leo. Vestibulum ullamcorper a massa eu fringilla. Integer ultrices finibus sed nisi.
                    in convallis felis dapibus sit amet.</p>
                <p class="mt-3"> Donec a arcu et sapien hendrerit accumsan. Pellentesque sit amet eros iac, elementum
                    urna ipsum accumsan, iaculis ligula. Aenean quam eget maximus in convallis felis dapibus sit amet.</p>
            </div>
            <div class="col-lg-6 about-right text-lg-right mt-lg-0 mt-5">
                <img src="<c:url value="/TrangChu/images/about.jpg"/>" alt="" class="img-fluid abt-image" />
            </div>
        </div>
        <div class="row mt-5 text-center">
            <div class="col-lg-3 col-6">
                <div class="counter">
                    <span class="fa fa-smile-o"></span>
                    <div class="timer count-title count-number">1000+</div>
                    <p class="count-text text-uppercase">happy customers</p>
                </div>
            </div>
            <div class="col-lg-3 col-6">
                <div class="counter">
                    <span class="fa fa-ship"></span>
                    <div class="timer count-title count-number">2271</div>
                    <p class="count-text text-uppercase">Tours & Travels </p>
                </div>
            </div>
            <div class="col-lg-3 col-6 mt-lg-0 mt-5">
                <div class="counter">
                    <span class="fa fa-users"></span>
                    <div class="timer count-title count-number">200</div>
                    <p class="count-text text-uppercase">destinations</p>
                </div>
            </div>
            <div class="col-lg-3 col-6 mt-lg-0 mt-5">
                <div class="counter">
                    <span class="fa fa-gift"></span>
                    <div class="timer count-title count-number">20+<span>years</span></div>
                    <p class="count-text text-uppercase">experience</p>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- //about -->
<!-- how to book -->
<section class="book py-5">
    <div class="container py-lg-5 py-sm-3">
        <h2 class="heading text-capitalize text-center"> How To Plan Your Trip</h2>
        <div class="row mt-5 text-center">
            <div class="col-lg-4 col-sm-6">
                <div class="grid-info">
                    <div class="icon">
                        <span class="fa fa-map-signs"></span>
                    </div>
                    <h4>Pick Destination</h4>
                    <p class="mt-3">Vestibulum urna ligula, molestie at ante ut, finibus. Integer ultrices finibus sed nisi in convallis sed dolor.</p>
                </div>
            </div>
            <div class="col-lg-4 col-sm-6 mt-sm-0 mt-5">
                <div class="grid-info">
                    <div class="icon">
                        <span class="fa fa-calendar"></span>
                    </div>
                    <h4>Select Date</h4>
                    <p class="mt-3">Vestibulum urna ligula, molestie at ante ut, finibus. Integer ultrices finibus sed nisi in convallis sed dolor.</p>
                </div>
            </div>
            <div class="col-lg-4 col-sm-6 mt-lg-0 mt-5">
                <div class="grid-info">
                    <div class="icon">
                        <span class="fa fa-gift"></span>
                    </div>
                    <h4>Enjoy the Trip</h4>
                    <p class="mt-3">Vestibulum urna ligula, molestie at ante ut, finibus. Integer ultrices finibus sed nisi in convallis sed dolor.</p>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- //how to book -->

<!-- tour packages -->
<section class="packages py-5">
    <div class="container py-lg-4 py-sm-3">
        <h3 class="heading text-capitalize text-center"> Discover our tour packages</h3>
        <p class="text mt-2 mb-5 text-center">Vestibulum tellus neque, sodales vel mauris at, rhoncus finibus augue. Vestibulum urna ligula, molestie at ante ut, finibus vulputate felis.</p>
        <div class="row">
            <div class="col-lg-3 col-sm-6">
                <div class="image-tour position-relative">
                    <img src="<c:url value="/TrangChu/images/p1.jpg"/>" alt="" class="img-fluid" />
                    <p><span class="fa fa-tags"></span> <span>20$</span></p>
                </div>
                <div class="package-info">
                    <h6 class="mt-1"><span class="fa fa-map-marker mr-2"></span>Paris, France.</h6>
                    <h5 class="my-2">Sodales vel mauris</h5>
                    <p class="">Vestibulum tellus neque, et velit mauris at, augue.</p>
                    <ul class="listing mt-3">
                        <li><span class="fa fa-clock-o mr-2"></span>Duration : <span>10 Days</span></li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-3 col-sm-6">
                <div class="image-tour position-relative">
                    <img src="<c:url value="/TrangChu/images/p2.jpg"/>" alt="" class="img-fluid" />
                    <p><span class="fa fa-tags"></span> <span>20$</span></p>
                </div>
                <div class="package-info">
                    <h6 class="mt-1"><span class="fa fa-map-marker mr-2"></span>Los Angles, USA.</h6>
                    <h5 class="my-2">Sodales vel mauris</h5>
                    <p class="">Vestibulum tellus neque, et velit mauris at, augue.</p>
                    <ul class="listing mt-3">
                        <li><span class="fa fa-clock-o mr-2"></span>Duration : <span>10 Days</span></li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-3 col-sm-6 mt-lg-0 mt-5">
                <div class="image-tour position-relative">
                    <img src="<c:url value="/TrangChu/images/p3.jpg"/>" alt="" class="img-fluid" />
                    <p><span class="fa fa-tags"></span> <span>20$</span></p>
                </div>
                <div class="package-info">
                    <h6 class="mt-1"><span class="fa fa-map-marker mr-2"></span>Agra, India.</h6>
                    <h5 class="my-2">Sodales vel mauris</h5>
                    <p class="">Vestibulum tellus neque, et velit mauris at, augue.</p>
                    <ul class="listing mt-3">
                        <li><span class="fa fa-clock-o mr-2"></span>Duration : <span>10 Days</span></li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-3 col-sm-6 mt-lg-0 mt-5">
                <div class="image-tour position-relative">
                    <img src="<c:url value="/TrangChu/images/p4.jpg"/>" alt="" class="img-fluid" />
                    <p><span class="fa fa-tags"></span> <span>20$</span></p>
                </div>
                <div class="package-info">
                    <h6 class="mt-1"><span class="fa fa-map-marker mr-2"></span>Paris, France.</h6>
                    <h5 class="my-2">Sodales vel mauris</h5>
                    <p class="">Vestibulum tellus neque, et velit mauris at, augue.</p>
                    <ul class="listing mt-3">
                        <li><span class="fa fa-clock-o mr-2"></span>Duration : <span>10 Days</span></li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="view-package text-center mt-4">
            <a href="/Packages">View All Packages</a>
        </div>
    </div>
</section>
<!-- tour packages -->

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
                    <a href="/Booking">Book Now</a>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- //text -->

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
                        <a href="/Booking">Book Now</a>
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
                        <a href="/Booking">Book Now</a>
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
                        <a href="/Booking">Book Now</a>
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
                        <a href="/Booking">Book Now</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- destinations -->
