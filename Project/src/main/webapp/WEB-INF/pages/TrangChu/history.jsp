<%--<jsp:useBean id="b" type="com.travels.springmvc.pojo.Booking" ></jsp:useBean>--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../LibraryJSP.jsp" %>
<style>
    .pic-bt {
        width: 100%;
        height: 176px;
        object-fit: cover;
    }

    .chuy {
        text-align: justify;
        line-height: 20px;
        margin-top: 10px;
        border-left: 4px solid #ff002d;
        padding: 15px;
        margin-bottom: 10px;
        color: #212121;
        background: #f4f4f4;
    }

    .cus-num {
        padding: 12px 15px;
        background: #f4f4f4;
        color: #212121;
        font-weight: 500;
        font-size: 16px;
        border: 1px solid #ccc;
    }

    .frame-cus {
        border-left: 1px solid #ccc;
        border-right: 1px solid #ccc;
        border-bottom: 1px solid #ccc;
        padding: 15px;
    }

    .total {
        padding: 15px 0 0;
        border-top: 1px solid #ccc;
        margin-top: 15px;
    }

    .star {
        color: #ff002d;
    }

    .bor-bot {
        border-bottom: 1px dashed #ccc;
        padding-bottom: 10px;
    }

</style>
<!-- banner -->
<section class="banner_inner" id="home">
    <div class="banner_inner_overlay">
    </div>
</section>
<!-- //banner -->
<!-- about -->
<section class="about py-5">
    <div class="container py-lg-5 py-sm-4">
<%--        <div class="row">--%>
<%--            <div class="col-lg-6 about-left">--%>
<%--                <h3 class="mt-lg-3">We will take you to the Top destination in the world, <strong>Explore with us!</strong></h3>--%>
<%--                <p class="mt-4">Duis nisi sapien, elementum finibus fermentum eget, aliquet leo et. Mauris hendrerit vel ex.--%>
<%--                    Quisque vitae luctus massa. Phasellus sed aliquam leo. Vestibulum ullamcorper a massa eu fringilla. Integer ultrices finibus sed nisi.--%>
<%--                    in convallis felis dapibus sit amet.</p>--%>
<%--                <p class="mt-3"> Donec a arcu et sapien hendrerit accumsan. Pellentesque sit amet eros iac, elementum--%>
<%--                    urna ipsum accumsan, iaculis ligula. Aenean quam eget maximus in convallis felis dapibus sit amet.</p>--%>
<%--            </div>--%>
<%--            <div class="col-lg-6 about-right text-lg-right mt-lg-0 mt-5">--%>
<%--                <img src="<c:url value="/TrangChu/images/about.jpg"/>" alt="" class="img-fluid abt-image" />--%>
<%--            </div>--%>
<%--        </div>--%>
<%--        <div class="row mt-5 text-center">--%>
<%--            <div class="col-lg-3 col-6">--%>
<%--                <div class="counter">--%>
<%--                    <span class="fa fa-smile-o"></span>--%>
<%--                    <div class="timer count-title count-number">1000+</div>--%>
<%--                    <p class="count-text text-uppercase">Chờ xác nhận</p>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--            <div class="col-lg-3 col-6">--%>
<%--                <div class="counter">--%>
<%--                    <span class="fa fa-ship"></span>--%>
<%--                    <div class="timer count-title count-number">2271</div>--%>
<%--                    <p class="count-text text-uppercase">Đã book thành công </p>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--            <div class="col-lg-3 col-6 mt-lg-0 mt-5">--%>
<%--                <div class="counter">--%>
<%--                    <span class="fa fa-users"></span>--%>
<%--                    <div class="timer count-title count-number">200</div>--%>
<%--                    <p class="count-text text-uppercase">Book không thành công</p>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--            <div class="col-lg-3 col-6 mt-lg-0 mt-5">--%>
<%--                <div class="counter">--%>
<%--                    <span class="fa fa-gift"></span>--%>
<%--                    <div class="timer count-title count-number">20+<span>years</span></div>--%>
<%--                    <p class="count-text text-uppercase">book lỗi</p>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
    <c:forEach items="${book}" var="b">
        <c:if test="${bookingService.isComfirmBookking(b.bookingId)}">
            <h3 class=" text-capitalize text-center  mb-3" style="color: red"> Thông tin booking đã được xác nhận </h3>
            <div class="row">
                <div class="col-lg-3">
                    <a href="">
                        <img src="<c:url value='/TrangChu/images/tours/${b.tour.image}'/>" class="img-responsive pic-bt">
                    </a>
                </div>
                <div class="col-lg-9">
                    <div class="tour-name">
                        <a target="_blank">
                            <h3> ${b.tour.tourName}</h3></a>
                    </div>

                    <div class="row mt-3">
                        <div class="col-lg-6 mt-1">Mã booking: ${b.bookingId}</div>
                        <div class="col-lg-6 mt-1">Tổng tiền : ${b.totalMoney}</div>
                        <div class="col-lg-6 mt-1">Chú thích:  ${b.note}</div>
                        <div class="col-lg-6 mt-1">Ngày book: <fmt:formatDate value="${b.bookingDate}" pattern="dd-MM-yyyy"/></div>
                        <div class="col-lg-6 mt-1">Tổng số khách: ${b.amountGuests}</div>
                        <div class="col-lg-6 mt-1">Loại thanh toán: ${b.statusPay} </div>
                        <div class="clearfix"></div>
                    </div>

                </div>
            </div>
        </c:if>
        <c:if test="${!bookingService.isComfirmBookking(b.bookingId)}">
            <h3 class=" text-capitalize text-center  mb-3" style="color: red"> Thông tin booking chưa xác nhận </h3>
            <div class="row">
                <div class="col-lg-3">
                    <a href="">
                        <img src="<c:url value='/TrangChu/images/tours/${b.tour.image}'/>" class="img-responsive pic-bt">
                    </a>
                </div>
                <div class="col-lg-9">
                    <div class="tour-name">
                        <a target="_blank">
                            <h3> ${b.tour.tourName}</h3></a>
                    </div>

                    <div class="row mt-3">
                        <div class="col-lg-6 mt-1">Mã booking: ${b.bookingId}</div>
                        <div class="col-lg-6 mt-1">Tổng tiền : ${b.totalMoney}</div>
                        <div class="col-lg-6 mt-1">Chú thích:  ${b.note}</div>
                        <div class="col-lg-6 mt-1">Ngày book: <fmt:formatDate value="${b.bookingDate}" pattern="dd-MM-yyyy"/></div>
                        <div class="col-lg-6 mt-1">Tổng số khách: ${b.amountGuests}</div>
                        <div class="col-lg-6 mt-1">Loại thanh toán: ${b.statusPay} </div>
                        <div class="clearfix"></div>
                    </div>

                </div>
            </div>
        </c:if>
    </c:forEach>
    </div>

<%--    <jsp:useBean id="bookingService" type="com.travels.springmvc.services.IBookingService"></jsp:useBean>--%>

    
</section>
<!-- //about -->



