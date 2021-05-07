<jsp:useBean id="bookinview" scope="request" type="com.travels.springmvc.modelView.BookingView"/>
<jsp:useBean id="tour" scope="request" type="com.travels.springmvc.pojo.Tour"/>
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
                    <form id="bookinginfo" action="">
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
                                                    <input class="form-control" id="contact_name" name="${bookinview.customer.firstName}"

                                                           required="required" type="text" value="">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label>Tên (<span class="star">*</span>)</label>
                                                <div>
                                                    <input class="form-control"

                                                           id="ten"
                                                           name="${bookinview.customer.lastName}"
                                                           required="required"
                                                           type="text"
                                                           value="">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label>Địa chỉ</label>
                                                <div>
                                                    <input class="form-control" id="address" name="" type="text"

                                                           value="">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6 col-sm-12 col-xs-12">
                                            <div class="form-group">
                                                <label>Email (<span class="star">*</span>)</label>
                                                <div>
                                                    <input class="form-control" id="email" name="${bookinview.customer.email}"
                                                           required="required" type="email" value="">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label>Điện thoại</label>
                                                <div>
                                                    <input class="form-control" id="phone" name="${bookinview.customer.phoneNumber}"
                                                            type="text" value="">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <div class="row">
                                                    <div class="col-md-3 col-sm-2 col-xs-6 mg-bot15">
                                                        <label>Người lớn</label>
                                                        <div>

                                                            <input class="form-control" id="adult"  name="adult"
                                                                   data-toggle="tooltip" data-placement="bottom" title="Từ 12 tuổi trở lên"
                                                                   onchange="totalGuests(this)" min="0" type="number"
                                                                   value="1">
                                                        </div>
                                                    </div>
                                                    <div class="col-md-2 col-sm-2 col-xs-6  mg-bot15">
                                                        <label>Trẻ em</label>
                                                        <div>
                                                            <input class="form-control"  type="number" id="children11" name="children11" value="0"
                                                                   data-toggle="tooltip" data-placement = "bottom" title="Từ 5 tuổi đến dưới 12 tuổi"
                                                                   onchange="totalGuests(this)" min="0"
                                                                   >
                                                        </div>
                                                    </div>
                                                    <div class="col-md-2 col-sm-3 col-xs-6 mg-bot15">
                                                        <label>Trẻ nhỏ</label>
                                                        <div>
                                                            <input class="form-control" type="number" id="children" name="children" data-toggle="tooltip" data-placement="bottom"
                                                                   title = "Từ 2 tuổi đến dưới 5 tuổi"
                                                                   onchange="totalGuests(this)" min="0"
                                                                   value="0">
                                                        </div>
                                                    </div>
                                                    <div class="col-md-2 col-sm-2 col-xs-6 mg-bot15">
                                                        <label>Em bé</label>
                                                        <div>
                                                            <input class="form-control" type="number" id="small_children" name="small_children"
                                                                   data-toggle="tooltip" data-placement="bottom" title="Dưới 2 tuổi"
                                                                   onchange="totalGuests(this)" min="0"
                                                                   value="0">
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3 col-sm-3 col-xs-12">
                                                        <label>Số khách</label>
                                                        <div>
                                                            <input class="form-control" id="guests" name="guests"
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
                                                    <textarea class="form-control" cols="20" id="note" name="note"
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
                                            <div class="cus-num">Khách hàng 1</div>
                                            <div class="frame-cus">
                                                <div class="form-horizontal">
                                                    <div class="row mg-bot10">
                                                        <div class="col-lg-3 col-md-8 col-sm-6 col-xs-12 mg-bot10">
                                                            <label class="mg-bot5">Họ tên (<span
                                                                    class="star">*</span>)</label>
                                                            <div>
                                                                <input class="form-control"
                                                                       required="" type="text" value="">
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-2 col-md-4 col-sm-6 col-xs-12 mg-bot10">
                                                            <label class="mg-bot5">Giới tính</label>
                                                            <div>
                                                                <select class="form-control" name="[0].gender">
                                                                    <option value="0">Nữ</option>
                                                                    <option value="1">Nam</option>
                                                                </select>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12 mg-bot10">
                                                            <label class="mg-bot5">Ngày sinh (<span
                                                                    class="star">*</span>)</label>
                                                            <div>
                                                                <input type="date" class="form-control">
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-2 col-md-4 col-sm-6 col-xs-12 mg-bot10">
                                                            <label class="mg-bot5">Độ tuổi</label>
                                                            <div>
                                                                <select class="form-control" id="personkind0">
                                                                    <option value="0">Người lớn</option>
                                                                </select>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 mg-bot10"
                                                             style="display:none;">
                                                            <label class="mg-bot5">Loại khách:</label>
                                                            <div>
                                                                <select class="form-control" id="loaikhachnoidia0"
                                                                        name="[0].loaikhachnoidia"
                                                                        onchange="ChangeChoose();">
                                                                    <option value="0">Việt Nam</option>
                                                                    <option value="1">Việt kiều</option>
                                                                    <option value="2">Nước ngoài</option>
                                                                </select>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-2 col-md-4 col-sm-6 col-xs-12 mg-bot10">
                                                            <label class="mg-bot5">Phòng đơn</label>
                                                            <div>
                                                                <select class="form-control" id="loaiphuthuphongdon0">
                                                                    <option selected="selected" value="0">Không</option>
                                                                    <option value="1">Có</option>
                                                                </select></div>
                                                        </div>
                                                    </div>
                                                    <div class="row total">
                                                        <div class="col-md-12 col-sm-12 text-right">
                                                            Trị giá: <span class="price"
                                                                           id="spanprice0">2,690,000 đ</span>
                                                            <input class="form-control" disabled="disabled" id="price0"
                                                                   name="price0" type="hidden" value="2690000 đ">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

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
                                            <input class="form-check-input" type="radio" value="" name="typethanhtoan"
                                                   id="defaultCheck1">
                                            <label class="form-check-label" for="defaultCheck1">
                                                Tiền mặt
                                            </label>
                                        </div>
                                        <div class="form-check">
                                            <input class="form-check-input" type="radio" name="typethanhtoan" value=""
                                                   id="defaultCheck2">
                                            <label class="form-check-label" for="defaultCheck2">
                                                Thanh toán bằng momo
                                            </label>
                                        </div>
                                        <div class="form-check">
                                            <input class="form-check-input" type="radio" name="typethanhtoan" value=""
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

