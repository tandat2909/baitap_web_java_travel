<jsp:useBean id="info" scope="request" type="com.travels.springmvc.modelView.InforAccount"/>
<%--<jsp:useBean id="bookinview" scope="request" type="com.travels.springmvc.modelView.BookingView"/>--%>
<%--<jsp:useBean id="tour" scope="request" type="com.travels.springmvc.pojo.Tour"/>--%>
<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 11-04-2021
  Time: 12:25 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../LibraryJSP.jsp"%>
<!-- banner -->
<section class="banner_inner" id="home">
    <div class="banner_inner_overlay">
    </div>
</section>
<!-- //banner -->
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


<c:if test="${error == true}">
    <div class="alert alert-danger alert-dismissible fade show text-center" style="position: absolute; width: 100%" role="alert">
        ${messges}
        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">×</span>
        </button>
    </div>
</c:if>


<section class="contact py-5">
    <div class="container py-lg-5 py-sm-4">
        <h3 class=" text-capitalize text-center  mb-3" style="color: red"> Thông Tin Tour</h3>
        <div class="contact-grids">
            <div class="tour-info">
                <div class="row">
                    <div class="col-lg-3">
                        <a href="${pageContext.request.contextPath}/tour?tourid=${tour.tourId}">
                            <img src="TrangChu/img/<%--${tour.image}--%>" class="img-responsive pic-bt">
                        </a>
                    </div>
                    <div class="col-lg-9">
                        <div class="tour-name">
                            <a target="_blank" href="${pageContext.request.contextPath}/tour?tourid=${tour.tourId}">
                                <h3> ${tour.tourName}</h3></a>
                        </div>

                        <div class="row">
                            <div class="col-lg-6">Mã Tour:${tour.tourId}</div>
                            <div class="col-lg-6 " id="max-seats" data-seat = "${tour.maxseats}">Số chỗ còn nhận: ${tour.maxseats}</div>
                            <div class="col-lg-6">Ngày khởi hành: <fmt:formatDate value="${tour.startDay}" pattern="dd-MM-yyyy"/> </div>
                            <div class="col-lg-6"><a href="/ngaykhaccuatour">Ngày Khác</a></div>
                            <div class="col-lg-6">Số ngày: 1</div>
                            <div class="col-lg-6">Giá: ${tour.price}</div>
                            <div class="clearfix"></div>
                        </div>

                    </div>
                    <div class="row">
                        <div class="col-lg-12">
                            <h4 class="text-center  text-capitalize mt-3 mb-3" style="color: red">Giá Tour Cơ Bản</h4>
                            <table class="table table-bordered" id = "table_price">
                                <thead>
                                <tr class="tb-title">
                                    <td>Người lớn (Từ 12 tuổi trở lên)</td>
                                    <td>Trẻ em (Từ 5 tuổi đến dưới 12 tuổi)</td>
                                    <td>Trẻ nhỏ (Từ 2 tuổi đến dưới 5 tuổi)</td>
                                    <td>Em bé (Dưới 2 tuổi)</td>
                                    <td>Phụ thu phòng đơn</td>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <c:forEach var="price" items="${tour.tourprices}">
                                        <td data-title="${price.ages.name}" id="${price.ageId}" data-price="${price.price}" >${price.price}<span> đ</span></td>
                                    </c:forEach>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <form id="bookinginfo" action="" method="post" onsubmit="onsubmitBooking()">
                        <div class="row">
                        <div class="col-lg-12">
                            <form id ="fm_dienthongtin">
                                <div class="col-xs-12 mg-bot30">
                                    <h4 class="text-center mt-3 mb-3 " style="color:red;">Thông Tin Liên Lạc</h4>
                                </div>
                                <div class="col-xs-12 form-input mg-bot30">
                                    <div class="row">
                                        <div class="col-md-6 col-sm-12 col-xs-12">
                                            <div class="form-group">
                                                <label>Họ (<span class="star">*</span>)</label>
                                                <div>
                                                    <input class="form-control" id="contact_name" disabled name=""

                                                            type="text" value="${info.firstName}">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label>Tên (<span class="star">*</span>)</label>
                                                <div>
                                                    <input class="form-control"
                                                           id="ten"
<%--                                                           name="customer.lastName"--%>
                                                           required
                                                           disabled
                                                           type="text"
                                                           value="${info.lastName}">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label>Địa chỉ(<span class="star">*</span>)</label>
                                                <div>
                                                    <input class="form-control" id="address" disabled <%--name="customer.address"--%> type="text"
                                                                   value="${info.address}">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6 col-sm-12 col-xs-12">
                                            <div class="form-group">
                                                <label>Email (<span class="star">*</span>)</label>
                                                <div>
                                                    <input class="form-control" id="email" <%--name="customer.email"--%>
                                                           required disabled type="email" value="${info.email}">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label>Điện thoại(<span class="star">*</span>)</label>
                                                <div>
                                                    <input class="form-control" id="phone" disabled <%--name="customer.phoneNumber"--%>
                                                            type="text" value="${info.phoneNumber}">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <div class="row">
                                                    <div class="col-md-3 col-sm-2 col-xs-6 mg-bot15">
                                                        <label>Người lớn(<span class="star">*</span>)</label>
                                                        <div>

                                                            <input class="form-control" id="adult"
                                                                   data-toggle="tooltip" data-placement="bottom" title="Từ 12 tuổi trở lên"
                                                                   onchange="totalGuests()" min="1" type="number"
                                                                   value="1">
                                                        </div>
                                                    </div>
                                                    <div class="col-md-2 col-sm-2 col-xs-6  mg-bot15">
                                                        <label>Trẻ em</label>
                                                        <div>
                                                            <input class="form-control"  type="number" id="children11"  value="0"
                                                                   data-toggle="tooltip" data-placement = "bottom" title="Từ 5 tuổi đến dưới 12 tuổi"
                                                                   onchange="totalGuests()" min="0"
                                                                   >
                                                        </div>
                                                    </div>
                                                    <div class="col-md-2 col-sm-3 col-xs-6 mg-bot15">
                                                        <label>Trẻ nhỏ</label>
                                                        <div>
                                                            <input class="form-control" type="number" id="children" data-toggle="tooltip" data-placement="bottom"
                                                                   title = "Từ 2 tuổi đến dưới 5 tuổi"
                                                                   onchange="totalGuests()" min="0"
                                                                   value="0">
                                                        </div>
                                                    </div>
                                                    <div class="col-md-2 col-sm-2 col-xs-6 mg-bot15">
                                                        <label>Em bé</label>
                                                        <div>
                                                            <input class="form-control" type="number" id="small_children"
                                                                   data-toggle="tooltip" data-placement="bottom" title="Dưới 2 tuổi"
                                                                   onchange="totalGuests()" min="0"
                                                                   value="0">
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3 col-sm-3 col-xs-12">
                                                        <label>Số khách</label>
                                                        <div>
                                                            <input class="form-control" id="guests" name="booking.amountGuests"
                                                                   readonly="readonly" type="text" value="1">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-12 col-sm-12 col-xs-12">
                                            <div class="form-group">
                                                <label>Ghi chú</label>
                                                <div>
                                                    <textarea class="form-control" cols="20" id="note" name="booking.note"
                                                              rows="4"></textarea>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-12 col-sm-12 col-xs-12">
                                            <div class="chuy">
                                                <ul class="row list-chuy">
                                                    <li class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                                        Người lớn sinh từ: <span class="font500"> 05/05/1951</span> đến
                                                        <span class="font500">05/05/2009</span>
                                                    </li>
                                                    <li class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                                        Trẻ em sinh từ: <span class="font500">06/05/2009</span> đến
                                                        <span class="font500">05/05/2016</span>
                                                    </li>
                                                    <li class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                                        Trẻ nhỏ sinh từ: <span class="font500">06/05/2016</span> đến
                                                        <span class="font500">05/05/2019</span>
                                                    </li>
                                                    <li class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                                        Em bé sinh từ: <span class="font500">06/05/2019</span> đến <span
                                                            class="font500">20/04/2021</span>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div id="DanhSachKhach">
                                    <div class="col-xs-12 mt-3 mb-3">
                                        <h4 class="text-center" style="color: red">DANH SÁCH KHÁCH HÀNG</h4>
                                    </div>
                                    <div class="col-xs-12 mg-bot30">
                                        <div class="list">

                                        </div>

                                        <div class="frame-cus">
                                            <div class="row">
                                                <div class="col-md-12 col-sm-12 text-right">
                                                    Tổng cộng: <span class="price"
                                                                     id="spanTotalPrice">2,690,000 đ</span>
                                                    <input type="hidden" id="TotalPrice" disabled="disabled"
                                                           class="form-control" value="2690000 đ">
                                                </div>
                                            </div>
                                        </div>


                                    </div>
                                </div>
                                <div id="ThongTinKhach" style="display: none;">
                                    <div class="col-xs-12 mg-bot30">
                                        (Lưu ý: Nhân viên tư vấn sẽ liên hệ Quý khách trong thời gian sớm nhất. Quý
                                        khách vui lòng chuẩn bị sẵn sàng thông tin cá nhân của khách hàng tham gia
                                        chuyến đi)
                                    </div>
                                </div>
                                <div class="col-xs-12  ">
                                    <h4 class="text-center mt-3 mb-3 " style="color: red">Xin Quý Khách Vui Lòng Chọn
                                        Hình
                                        Thức Thanh Toán</h4>
                                </div>
                                <div class="col-xs-12 mg-bot30">
                                    <div class="frame-payment ">
                                        <div class="form-check">
                                            <input class="form-check-input" type="radio" required value="tienmat" name="booking.typePay"
                                                   id="defaultCheck1">
                                            <label class="form-check-label" for="defaultCheck1">
                                                Tiền mặt
                                            </label>
                                        </div>
                                        <div class="form-check">
                                            <input class="form-check-input" type="radio" required name="booking.typePay" value="momo"
                                                   id="defaultCheck2">
                                            <label class="form-check-label" for="defaultCheck2">
                                                Thanh toán bằng momo
                                            </label>
                                        </div>
                                        <div class="form-check">
                                            <input class="form-check-input" type="radio" required name="booking.typePay" value="blockchain"
                                                   id="defaultCheck3">
                                            <label class="form-check-label" for="defaultCheck3">
                                                Thanh toán bằng blockchain
                                            </label>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-12 mg-bot30 text-center mt-4">
                                    <button type="submit" class="btn btn-md btn-book"
                                            style="color: white;background: red"
                                            onclick="return CheckDieuKhoan();">
                                        Đặt tour&nbsp;&nbsp;<i class="fa fa-arrow-right" style="color: white"></i>
                                    </button>
                                </div>
                            </form>

                           <input type="hidden" id="ticket" name ="tickets">

                        </div>

                    </div>
                    </form>
                </div>

            </div>

        </div>
    </div>
</section>

