<jsp:useBean id="tour" scope="request" type="com.travels.springmvc.pojo.Tour"/>
<%--
  Created by IntelliJ IDEA.
  User: datoa
  Date: 15/04/2021
  Time: 9:21 SA
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../LibraryJSP.jsp" %>


<style>
    .title-lg {
        text-transform: uppercase;
        font-weight: 500;
        font-size: 20px;
        background: #e1e1e1;
        padding: 15px;
    }

    /*.chuongtrinhtour .list {*/
    /*    float: left;*/
    /*    padding: 1.5em 0;*/
    /*    margin-bottom: 3em;*/
    /*}*/

    .list__item {
        float: left;
        width: 100%;
        display: flex;
        justify-content: space-around;
        align-items: center;
    }

    .list__time {
        color: #212121;
        text-align: left;
    }

    .num {
        font-size: 28px;
        font-weight: 700;
        color: #ff002d;
        margin-bottom: 7px;
    }

    .day {
        width: 100%;
    }

    /*.name {*/
    /*    padding-bottom: 7px;*/
    /*    border-bottom: 1px dashed #ccc;*/
    /*    margin-bottom: 7px;*/
    /*    color: #007ce6;*/
    /*}*/

    .list__desc {
        width: 95%;
        color: #212121;
        font-size: 15px;
        line-height: 22px;
        padding-bottom: 30px;
        position: relative;
    }

    /*.chuongtrinhtour .list .list__item .list__desc .border {*/
    /*    background: #afafaf;*/
    /*    width: 3px;*/
    /*    position: absolute;*/
    /*    top: 0;*/
    /*    bottom: -1px;*/
    /*    left: -8%;*/
    /*}*/

    /*.border {*/
    /*    border: 1px solid #eee;*/
    /*    border-radius: 5px;*/
    /*}*/

    .chuongtrinhtour .list .list__item .list__desc .border:after {
        content: "";
        background: #ff002d;
        border: 3px solid #ffd200;
        border-radius: 50%;
        position: absolute;
        top: 50%;
        margin-top: -9px;
        left: -9px;
        width: 20px;
        height: 20px;
    }

    /*.sec-info {*/
    /*    background: #f1f1f1;*/
    /*    height: auto;*/
    /*}*/
</style>

<!-- banner -->
<section class="banner_inner" id="home">
    <div class="banner_inner_overlay">
    </div>
</section>
<!-- //banner -->
<section class="about py-5">
    <div class="container py-lg-5 py-sm-4">
        <div class="row">
            <div class="col-lg-2 col-sm-4">
                <ul>
                    <li><a data-toggle="collapse" href="#chuongtrinhtour" role="button" aria-expanded="true" aria-controls="chuongtrinhtour">Chương trình tour</a></li>
                    <li><a data-toggle="collapse" href="#chitiet" role="button" aria-expanded="false" aria-controls="chitiet">Chi Tiết</a></li>
                    <li><a class="btn btn-warning" href="${pageContext.request.contextPath}/booking?tourid=${tour.tourId}"> Đặt Tour </a></li>
                </ul>
            </div>
            <div class="col-lg-10 col-md-9 col-sm-8 col-xs-12" >
                <div class="collapse show mb-5" id="chuongtrinhtour">
                    <h2 class="title-lg">Chương trình tour</h2>
                    <p class="pl-1">${tour.content}</p>

                    <c:forEach var="t" items="${tour.contents}" varStatus="loop">
                        <div class="row mt-4" style="padding: 0" >
                        <div class="col-2 list__item" style="border-right:3px solid #afafaf">
                            <div class="list__time">
                                <div class="num">Ngày ${loop.index +1  < 10 ?("0"+(loop.index+1)) : loop.index+1}</div>
                                <div class="day">
<%--                                    <jsp:useBean id="t" scope="request" type="com.travels.springmvc.pojo.Contents"/>--%>
                                <fmt:formatDate value="${t.date}" pattern="dd-MM-yyyy" /></div>
                            </div>
                        </div>
                        <div class="col-10">
                            <div class="list__desc">
                                <div class="d1 detail" style="max-height: initial; overflow-y: initial;">
                                    <div style="text-align: justify;">
                                        <div>${t.content}</div>
                                    </div>
                                </div>
<%--                                <div class="an-hien ah1">--%>
<%--                                    <div class="hienra" style="display: none;">--%>
<%--                                        <a href="#"> Xem thêm &nbsp;<i class="fas fa-arrow-down"></i></a>--%>
<%--                                    </div>--%>
<%--                                    <div class="andi" style="display: block;">--%>
<%--                                        <a href="#"> Ẩn đi &nbsp;<i class="fas fa-arrow-up"></i></a>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                                <div class="border"></div>--%>
                            </div>
                        </div>
                    </div>
                    </c:forEach>
                </div>
                <div class="collapse" id="chitiet">
                    <h2 class="title-lg">Thông tin chi tiết</h2>
                    <div class="row ml-2">
                        <div class="col-12 mt-2">
                           <h6>THÔNG TIN KHÁCH SẠN</h6>
                            <p>Đang cập nhật</p>
                        </div>
                        <div class="col-12 mt-3">
                            <h6>THÔNG TIN HƯỚNG DẪN VIÊN</h6>
                            <p>Đang cập nhật</p>
                        </div>
                        <c:if test="${tour.startDay != tour.endDay}">
                        <div class="col-12 mt-3">
                            <h6>NGÀY KHỞI HÀNH - KẾT THÚC</h6>
                            <p>Ngày khởi hành: <fmt:formatDate value="${tour.startDay}" pattern="dd-MM-yyyy"/> </p>
                            <p>Ngày kết thúc: <fmt:formatDate value="${tour.endDay}" pattern="dd-MM-yyyy"/></p>
                        </div>
                        </c:if>
                        <c:if test="${tour.startDay == tour.endDay}">
                            <div class="col-12 mt-3">
                                <h6>NGÀY BẮT ĐẦU</h6>
                                <p> <fmt:formatDate value="${tour.startDay}" pattern="dd-MM-yyyy"/> </p>

                            </div>
                        </c:if>
                        <div class="col-12 mt-3">
                            <h6>GIÁ TOUR</h6>
                            <table class="table table-bordered">
                                <tr>
                                    <td>Loại Khách</td>
                                    <td>Giá Tour</td>
                                </tr>
                                <c:forEach items="${tour.tourprices}" var="i">
                                    <tr>
                                        <td>${i.ages.name}</td>
                                        <td>${i.price} VNĐ</td>
                                    </tr>
                                </c:forEach>
                            </table>
                        </div>


                    </div>
                </div>

            </div>
        </div>
    </div>
</section>