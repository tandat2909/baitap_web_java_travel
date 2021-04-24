<%--<jsp:useBean id="tour" scope="request" type="com.travels.springmvc.pojo.Tour"/>--%>
<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 11-04-2021
  Time: 12:25 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
                            <div class="col-lg-6">Số chỗ còn nhận: ${tour.maxseats}</div>
                            <div class="col-lg-6">Ngày khởi hành: ${tour.startDay}</div>
                            <div class="col-lg-6"><a href="/ngaykhaccuatour">Ngày Khác</a></div>
                            <div class="col-lg-6">Số ngày: 1</div>
                            <div class="col-lg-6">Giá: ${tour.price}</div>
                            <div class="clearfix"></div>
                        </div>

                    </div>
                    <div class="row">
                        <div class="col-lg-12">
                            <h4 class="text-center  text-capitalize mt-3 mb-3" style="color: red">Giá Tour Cơ Bản</h4>
                            <table class="table table-bordered">
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
                                        <td data-title="${price.ages.name}">${price.price}<span> đ</span></td>
                                    </c:forEach>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
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
                                                    <input class="form-control" id="contact_name" name="contact_name"
                                                           required="required" type="text" value="">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label>Tên (<span class="star">*</span>)</label>
                                                <div>
                                                    <input class="form-control" id="ten" name=""
                                                           onchange="CheckMobile();"
                                                           onkeypress="return funCheckInt(event)" required="required"
                                                           type="text" value="">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label>Địa chỉ</label>
                                                <div>
                                                    <input class="form-control" id="address" name="address" type="text"
                                                           value="">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6 col-sm-12 col-xs-12">
                                            <div class="form-group">
                                                <label>Email (<span class="star">*</span>)</label>
                                                <div>
                                                    <input class="form-control" id="email" name="email"
                                                           required="required" type="email" value="">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label>Điện thoại</label>
                                                <div>
                                                    <input class="form-control" id="phone" name="phone"
                                                           onkeypress="return funCheckInt(event)" type="text" value="">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <div class="row">
                                                    <div class="col-md-3 col-sm-2 col-xs-6 mg-bot15">
                                                        <label>Người lớn</label>
                                                        <div>
                                                            <input class="form-control" id="adult"  name="adult"

                                                                   onchange="addDanhSachKhachHang(this)" type="text"
                                                                   value="1">
                                                        </div>
                                                    </div>
                                                    <div class="col-md-2 col-sm-2 col-xs-6  mg-bot15">
                                                        <label>Trẻ em</label>
                                                        <div>
                                                            <input class="form-control" id="children11"
                                                                   name="children11"


                                                                   value="0">
                                                        </div>
                                                    </div>
                                                    <div class="col-md-2 col-sm-3 col-xs-6  mg-bot15">
                                                        <label>Trẻ nhỏ</label>
                                                        <div>
                                                            <input class="form-control" id="children" name="children"
                                                                   onblur="javascript:clear_text(this);"
                                                                   onclick="javascript:show_text('Từ 2 tuổi đến dưới 5 tuổi',this)"
                                                                   onkeypress="return funCheckInt(event)" type="text"
                                                                   value="0">
                                                        </div>
                                                    </div>
                                                    <div class="col-md-2 col-sm-2 col-xs-6 mg-bot15">
                                                        <label>Em bé</label>
                                                        <div>
                                                            <input class="form-control" id="small_children"
                                                                   name="small_children"
                                                                   onblur="javascript:clear_text(this);"
                                                                   onclick="javascript:show_text('Dưới 2 tuổi',this)"
                                                                   onkeypress="return funCheckInt(event)" type="text"
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

                                        <%--<script>
                                            //$(function () {
                                            ChangeChoose();

                                            //});

                                            function CheckDOBByPersonkind() {
                                                var totalMember = parseInt('1');
                                                var end_date = new Date('2021', parseInt('5') - 1, '5', '15', '30', '0');

                                                for (var i = 0; i < totalMember; i++) {
                                                    var dateofbirth = $("#dateofbirth" + i).val();
                                                    var personkind = $("#personkind" + i).val();//(0 : NguoiLon,1:TreNho, 2:EmBe, 3: TreEm)

                                                    var ldob = dateofbirth.split("/");

                                                    if (personkind == 0)//Nguoi lon >= 12 tuổi
                                                    {
                                                        //var year = parseInt(ldob[2]) + 12;
                                                        var dobNew = new Date(parseInt(ldob[2]) + 12 + "-" + ldob[1] + "-" + ldob[0]);//Them 12 nam so với chọn ngày sinh

                                                        if (dobNew > end_date) {
                                                            alert('Ngày sinh & loại khách không tương ứng. Quý khách cần kiểm tra lại ngày sinh( so với ngày về của tour : ' + '05/05/21 15:30:00'.toString() + ')')
                                                            $("#dateofbirth" + i).val("");
                                                            $("#dateofbirth" + i).focus();

                                                            $("#dob" + i).val("");
                                                            $("#dob" + i + "_day").val("");
                                                            $("#dob" + i + "_month").val("");
                                                            $("#dob" + i + "_year").val("");
                                                        }
                                                    }
                                                    if (personkind == 3)//5 tuoi <= Tre em < 12 tuoi
                                                    {
                                                        var dobMin = new Date(parseInt(ldob[2]) + 5 + "-" + ldob[1] + "-" + ldob[0]);
                                                        var dobMax = new Date(parseInt(ldob[2]) + 12 + "-" + ldob[1] + "-" + ldob[0]);

                                                        if (dobMin > end_date || dobMax < end_date) {
                                                            alert('Ngày sinh & loại khách không tương ứng. Quý khách cần kiểm tra lại ngày sinh( so với ngày về của tour : ' + '05/05/21 15:30:00'.toString() + ')')
                                                            $("#dateofbirth" + i).val("");
                                                            $("#dateofbirth" + i).focus();

                                                            $("#dob" + i).val("");
                                                            $("#dob" + i + "_day").val("");
                                                            $("#dob" + i + "_month").val("");
                                                            $("#dob" + i + "_year").val("");
                                                        }
                                                    }
                                                    if (personkind == 1)//2 tuoi <= Tre Nhỏ < 5 tuoi
                                                    {
                                                        var dobMin = new Date(parseInt(ldob[2]) + 2 + "-" + ldob[1] + "-" + ldob[0]);
                                                        var dobMax = new Date(parseInt(ldob[2]) + 5 + "-" + ldob[1] + "-" + ldob[0]);

                                                        if (dobMin > end_date || dobMax < end_date) {
                                                            alert('Ngày sinh & loại khách không tương ứng. Quý khách cần kiểm tra lại ngày sinh( so với ngày về của tour : ' + '05/05/21 15:30:00'.toString() + ')')
                                                            $("#dateofbirth" + i).val("");
                                                            $("#dateofbirth" + i).focus();

                                                            $("#dob" + i).val("");
                                                            $("#dob" + i + "_day").val("");
                                                            $("#dob" + i + "_month").val("");
                                                            $("#dob" + i + "_year").val("");
                                                        }
                                                    }
                                                    if (personkind == 2)//Em bé <= 2 tuoi
                                                    {
                                                        var dobNew = new Date(parseInt(ldob[2]) + 2 + "-" + ldob[1] + "-" + ldob[0]);

                                                        if (dobNew < end_date) {
                                                            alert('Ngày sinh & loại khách không tương ứng. Quý khách cần kiểm tra lại ngày sinh( so với ngày về của tour : ' + '05/05/21 15:30:00'.toString() + ')')
                                                            $("#dateofbirth" + i).val("");
                                                            $("#dateofbirth" + i).focus();

                                                            $("#dob" + i).val("");
                                                            $("#dob" + i + "_day").val("");
                                                            $("#dob" + i + "_month").val("");
                                                            $("#dob" + i + "_year").val("");
                                                        }
                                                    }
                                                }
                                            }

                                            function ChangeChoose() {
                                                var CurrencyName = 'đ';
                                                var Rate = '1';

                                                var totalMember = parseInt('1');
                                                var totalAdult = parseInt('1');

                                                var totalPrice = 0;
                                                for (var i = 0; i < totalMember; i++) {
                                                    var amount_vn = 0;
                                                    var loaikhachnoidia = $("#loaikhachnoidia" + i).val();//(0 : VietNam, 1: Viet kiều, 2: Nuoc ngoài)
                                                    var personkind = $("#personkind" + i).val();//(0 : NguoiLon,1:TreNho, 2:EmBe, 3: TreEm)
                                                    var loaiphuthuphongdon = $("#loaiphuthuphongdon" + i).val();//(0:Không, 1 : Có)

                                                    $("#loaikhachnoidia" + i).change(function () {
                                                        loaikhachnoidia = $("#loaikhachnoidia" + i).val();
                                                    });

                                                    $("#personkind" + i).change(function () {
                                                        personkind = $("#personkind" + i).val();
                                                    });

                                                    $("#loaiphuthuphongdon" + i).change(function () {
                                                        loaiphuthuphongdon = $("#loaiphuthuphongdon" + i).val();
                                                    });

                                                    if (totalAdult == 1) {
                                                        $("#loaiphuthuphongdon0").val('1');

                                                    }
                                                    loaiphuthuphongdon = $("#loaiphuthuphongdon" + i).val();

                                                    amount_vn = CalPrice(loaikhachnoidia, personkind, loaiphuthuphongdon);

                                                    //$("#price" + i).val(formatnumber(amount_vn.toString()) + ' đ');
                                                    $("#price" + i).val((amount_vn / Rate).toFixed(0) + ' ' + CurrencyName);
                                                    $("#spanprice" + i).text(formatnumber((amount_vn / Rate).toFixed(0)) + ' ' + CurrencyName);

                                                    totalPrice += amount_vn;
                                                }

                                                //$("#TotalPrice").val(formatnumber(totalPrice.toString()) + ' đ');
                                                $("#TotalPrice").val((totalPrice / Rate).toFixed(0) + ' ' + CurrencyName);
                                                $("#spanTotalPrice").text(formatnumber((totalPrice / Rate).toFixed(0)) + ' ' + CurrencyName);
                                            }

                                            function CalPrice(loaikhachnoidia, personkind, loaiphuthuphongdon) {

                                                //Gia tri cua tour

                                                //NguoiLon
                                                var adult_price = parseFloat('2090000');//VietNam
                                                var adult_o_price = parseFloat('2090000');//VietKieu
                                                var adult_f_price = parseFloat('2090000');//NuocNgoai

                                                //TreNho
                                                var child_price = parseFloat('1000000');//VietNam
                                                var child_o_price = parseFloat('1000000');//VietKieu
                                                var child_f_price = parseFloat('1000000');//NuocNgoai

                                                //EmBe
                                                var child_price5 = parseFloat('220000');//VietNam
                                                var pretty_o_price = parseFloat('220000');//VietKieu
                                                var pretty_f_price = parseFloat('220000');//NuocNgoai

                                                //TreEm
                                                var child_price11 = parseFloat('1492500');//VietNam
                                                var child_o_price11 = parseFloat('1492500');//VietKieu
                                                var child_f_price11 = parseFloat('1492500');//NuocNgoai

                                                var phuthuphongdon_vn = parseFloat('600000');//VietNam
                                                var phuthuphongdon_vk = parseFloat('600000');//VietKieu
                                                var phuthuphongdon_nn = parseFloat('600000');//NuocNgoai

                                                //Gia tri cua tour

                                                var amount_vn = 0;

                                                /* Xử lý tính giá tiền theo độ tuổi,loại khách, phụ thu phòng đơn */
                                                switch (personkind)//Độ tuổi
                                                {
                                                    case "0"://Người lớn
                                                        switch (loaikhachnoidia)//loại khách
                                                        {
                                                            case "0":
                                                                amount_vn = adult_price;//VietNam
                                                                if (loaiphuthuphongdon == 1)//Phụ thu phòng đơn
                                                                {
                                                                    amount_vn = amount_vn + phuthuphongdon_vn;
                                                                }
                                                                break;
                                                            case "1":
                                                                amount_vn = adult_o_price;//Vietkieu
                                                                if (loaiphuthuphongdon == 1)//Phụ thu phòng đơn
                                                                {
                                                                    amount_vn = amount_vn + phuthuphongdon_vk;
                                                                }
                                                                break;
                                                            case "2":
                                                                amount_vn = adult_f_price;//Nuocngoai
                                                                if (loaiphuthuphongdon == 1)//Phụ thu phòng đơn
                                                                {
                                                                    amount_vn = amount_vn + phuthuphongdon_nn;
                                                                }
                                                                break;
                                                        }
                                                        break;

                                                    case "1"://Trẻ nhỏ
                                                        switch (loaikhachnoidia)//loại khách
                                                        {
                                                            case "0":
                                                                amount_vn = child_price;//VietNam
                                                                if (loaiphuthuphongdon == 1)//Phụ thu phòng đơn
                                                                {
                                                                    amount_vn = amount_vn + phuthuphongdon_vn;
                                                                }
                                                                break;
                                                            case "1":
                                                                amount_vn = child_o_price;//Vietkieu
                                                                if (loaiphuthuphongdon == 1)//Phụ thu phòng đơn
                                                                {
                                                                    amount_vn = amount_vn + phuthuphongdon_vk;
                                                                }
                                                                break;
                                                            case "2":
                                                                amount_vn = child_f_price;//Nuocngoai
                                                                if (loaiphuthuphongdon == 1)//Phụ thu phòng đơn
                                                                {
                                                                    amount_vn = amount_vn + phuthuphongdon_nn;
                                                                }
                                                                break;
                                                        }
                                                        break;

                                                    case "2"://Em bé
                                                        switch (loaikhachnoidia)//loại khách
                                                        {
                                                            case "0":
                                                                amount_vn = child_price5;//VietNam
                                                                if (loaiphuthuphongdon == 1)//Phụ thu phòng đơn
                                                                {
                                                                    amount_vn = amount_vn + phuthuphongdon_vn;
                                                                }
                                                                break;
                                                            case "1":
                                                                amount_vn = pretty_o_price;//Vietkieu
                                                                if (loaiphuthuphongdon == 1)//Phụ thu phòng đơn
                                                                {
                                                                    amount_vn = amount_vn + phuthuphongdon_vk;
                                                                }
                                                                break;
                                                            case "2":
                                                                amount_vn = pretty_f_price;//Nuocngoai
                                                                if (loaiphuthuphongdon == 1)//Phụ thu phòng đơn
                                                                {
                                                                    amount_vn = amount_vn + phuthuphongdon_nn;
                                                                }
                                                                break;
                                                        }
                                                        break;

                                                    case "3"://Trẻ em
                                                        switch (loaikhachnoidia)//loại khách
                                                        {
                                                            case "0":
                                                                amount_vn = child_price11;//VietNam
                                                                if (loaiphuthuphongdon == 1)//Phụ thu phòng đơn
                                                                {
                                                                    amount_vn = amount_vn + phuthuphongdon_vn;
                                                                }
                                                                break;
                                                            case "1":
                                                                amount_vn = child_o_price11;//Vietkieu
                                                                if (loaiphuthuphongdon == 1)//Phụ thu phòng đơn
                                                                {
                                                                    amount_vn = amount_vn + phuthuphongdon_vk;
                                                                }
                                                                break;
                                                            case "2":
                                                                amount_vn = child_f_price11;//Nuocngoai
                                                                if (loaiphuthuphongdon == 1)//Phụ thu phòng đơn
                                                                {
                                                                    amount_vn = amount_vn + phuthuphongdon_nn;
                                                                }
                                                                break;
                                                        }
                                                        break;
                                                }
                                                /* End Xử lý tính giá tiền theo độ tuổi,loại khách, phụ thu phòng đơn */
                                                return amount_vn;
                                            }

                                            var datenow = '20/04/2021';
                                            var datemin = '20/04/1951';
                                            var yearmin = '1951';
                                            var yearmax = '2021';
                                            $(".date").datepicker({
                                                dateFormat: 'dd/mm/yy',
                                                defaultDate: '01/01/1980',
                                                inline: true,
                                                changeMonth: true,
                                                changeYear: true,
                                                maxDate: datenow,
                                                minDate: datemin,
                                                yearRange: yearmin + ':' + yearmax
                                            });

                                        </script>--%>
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
                                            <input class="form-check-input" type="radio" value="" name="thanhtoan"
                                                   id="defaultCheck1">
                                            <label class="form-check-label" for="defaultCheck1">
                                                Tiền mặt
                                            </label>
                                        </div>
                                        <div class="form-check">
                                            <input class="form-check-input" type="radio" name="thanhtoan" value=""
                                                   id="defaultCheck2">
                                            <label class="form-check-label" for="defaultCheck2">
                                                Thanh toán bằng momo
                                            </label>
                                        </div>
                                        <div class="form-check">
                                            <input class="form-check-input" type="radio" name="thanhtoan" value=""
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

                            <form action="${pageContext.request.contextPath}/addBooking" method="post" modelAttribute="bookingvalue" id="fm_bookingvalue">
                                <input type="hidden" value="" path="bookingvalue" id="bookingvalue"/>
                            </form>


                        </div>

                    </div>
                </div>

            </div>

        </div>
    </div>
</section>

