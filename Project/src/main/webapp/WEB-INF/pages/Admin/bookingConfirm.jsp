    <%--<jsp:useBean id="book" type="com.travels.springmvc.pojo.Booking"></jsp:useBean>--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../LibraryJSP.jsp" %>
<!-- main content start -->
<div class="main-content">

    <!-- content -->
    <div class="container-fluid content-top-gap">

        <!-- breadcrumbs -->
        <nav aria-label="breadcrumb" class="mb-4">
            <ol class="breadcrumb my-breadcrumb">
                <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                <li class="breadcrumb-item active" aria-current="page">Pricing Tables</li>
            </ol>
        </nav>
        <!-- //breadcrumbs -->

        <!-- pricing -->
        <section class="pricing">
            <div class="card card_border mb-5">
                <div class="cards__heading">
                    <h3>Pricing Tables -<span> Version 1</span></h3>
                </div>
                <div class="card-body">
                    <!-- pricing version 1 -->

                    <!--//BLOCK ROW END-->

                    <section class="w3l-pricing1">
                        <div class="row px-2">
                            <c:forEach items="booking" var="book">
                                <div class="col-md-4 px-2">
                                    <div class="mb-4 price-card price-card1 p-lg-4 p-md-3 p-4">
                                        <div class="card-header p-0 card-heading">
                                            <h4 class="mb-4">${book.tour.tourName}</h4>
                                        </div>
                                        <div class="card-body p-0">
                                            <h1 class="card-title pricing-card-title my-price-title">Total money: $${book.totalMoney}
                                            </h1>
                                            <p>note: không có </p>
                                            <ul class="list-unstyled list-pricing mt-3 mb-4">
                                                <li>Booking date: ${book.bookingDate}</li>
                                                <li>Customer: ${book.customer.lastName}</li>
                                                <li>Total Customer: ${book.amountGuests}</li>
                                                <li>Type pay: ${book.typePay}</li>
<%--                                                <c:if test="${book.status == 0}" >--%>
<%--                                                    <li>Trạng Thái: chưa xác nhận </li>--%>
<%--                                                </c:if>--%>
<%--                                                <c:if test="${book.status != 0}" >--%>
<%--                                                    <li>Trạng Thái: Đã xác nhận </li>--%>
<%--                                                </c:if>--%>
                                            </ul>
                                            <div class="mt-4">
                                                <a href="${pageContext.request.contextPath}/admin/bookingdetail?bookingId?=${book.bookingId}" class="btn btn-lg btn-outline-primary btn-style border-btn">Confirm</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>


                        </div>
                    </section>
                </div>
            </div>
        </section>
    </div>
</div>
