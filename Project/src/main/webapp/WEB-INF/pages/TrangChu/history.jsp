<%--<jsp:useBean id="b" type="com.travels.springmvc.pojo.Booking" ></jsp:useBean>--%>
<%--<jsp:useBean id="customer" type="com.travels.springmvc.pojo.Customer"></jsp:useBean>--%>
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
    .col-lg-12{
        font-size: larger;
    }
    .col-lg-6{
        font-size: larger;
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

        <div class="row" style="padding: 45px;">
            <div class="col-lg-3">
                <img src="<c:url value="/TrangChu/images/p1.jpg"/>" class="img-responsive pic-bt">
            </div>
            <div class="col-lg-9">

                <h3 style="color: red;">Thông tin cá nhân</h3>

                <h5>Họ và tên: ${customer.firstName} ${customer.lastName}</h5>
                <h5>ngày sinh: <fmt:formatDate value="${customer.birthDay}" pattern="dd-MM-yyyy"/></h5>
                <h5>email: ${customer.email}</h5>
                <h5>CCID: ${customer.ccid}</h5>
                <h5>Gender: ${customer.gender}</h5>
                <h5>address: ${customer.address}</h5>
                <h5>SDT: ${customer.phoneNumber}</h5>
            </div>
        </div >

    <c:forEach items="${book}" var="b">
        <c:if test="${bookingService.isComfirmBookking(b.bookingId)}">
            <h3 class=" text-capitalize text-center  mb-3" style="color: red"> Thông tin booking đã được xác nhận </h3>
            <div class="row" style="padding: 45px; padding-top: 5px;">
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
                        <div class="col-lg-12 mt-1">Mã booking: ${b.bookingId}</div>
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
            <div class="row" style="padding: 45px; padding-top: 5px;">
                <div class="col-lg-3">
                    <a href="">
                        <img src="<c:url value="/TrangChu/images/${b.tour.image}"/>" class="img-responsive pic-bt">
                    </a>
                </div>
                <div class="col-lg-9">
                    <div class="tour-name">
                        <a target="_blank">
                            <h3> ${b.tour.tourName}</h3></a>
                    </div>

                    <div class="row mt-3">
                        <div class="col-lg-12 mt-1">Mã booking: ${b.bookingId}</div>
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



