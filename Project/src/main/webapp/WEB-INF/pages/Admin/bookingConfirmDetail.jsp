<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 12-05-2021
  Time: 2:29 PM
  To change this template use File | Settings | File Templates.
--%>
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
<!-- main content start -->
<div class="main-content">

    <!-- content -->
    <div class="container-fluid content-top-gap">

        <!-- breadcrumbs -->
        <nav aria-label="breadcrumb" class="mb-4">
            <ol class="breadcrumb my-breadcrumb">
                <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                <li class="breadcrumb-item active" aria-current="page">Forms</li>
            </ol>
        </nav>
        <!-- //breadcrumbs -->
        <!-- forms -->
        <section class="forms">
            <!-- forms thông tin tour -->
            <div class="card card_border py-2 mb-4">
                <div class="cards__heading">
                    <h3>Thông tin Tour<span></span></h3>
                </div>
                <div class="card-body">
                    <form action="#" method="post">
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <img src="<c:url value="/admin/images/template1.jpg"/>" alt="" class="img-fluid rounded" />
                            </div>
                            <div class="form-group col-md-5" style="width: 90%;margin: 0 auto;">
                                <div class="form-group" >

                                    <h3><a href="#"> Miền Tây - Châu Đốc - Rừng Tràm Trà Sư - Hà Tiên - Rạch Giá - Cần Thơ"
                                    </a></h3>
                                </div>
                                <div class="form-group">
                                    <label class="input__label">BookingID</label>
                                    <input type="text" class="form-control input-style"  value="Xe Hơi" disabled>
                                </div>
                                <div class="form-group">
                                    <label class="input__label">TourId</label>
                                    <input type="text" class="form-control input-style" value="6000000" disabled>
                                </div>
                                <div class="form-group">
                                    <label class="input__label">Price</label>
                                    <input type="text" class="form-control input-style" value="3" disabled>
                                </div>

                            </div>
                        </div>

                    </form>
                </div>
            </div>
            <!-- forms thông tin tour -->



            <!-- forms thông tin tour -->
            <div class="card card_border py-2 mb-4">
                <div class="cards__heading">
                    <h3>Thông tin Tour<span></span></h3>
                </div>
                <div class="card-body">
                    <form action="#" method="post">
                        <div class="form-group">
                            <label class="input__label">Tour Name</label>
                            <input type="text" class="form-control input-style"  value="Miền Tây - Châu Đốc - Rừng Tràm Trà Sư - Hà Tiên - Rạch Giá - Cần Thơ"
                                   disabled >
                        </div>
                        <div class="form-group">
                            <label class="input__label">Mô tả ngắn</label>
                            <textarea disabled class="form-control input-style">Du lịch » Du lịch trong nước » Tour Miền Bắc » Du lịch Lào Cai » Bay cùng Vietravel Airlines: Hà Nội - Sapa - Fansipan - Lào Cai - Chùa Bái Đính - Tràng An - Tuyệt Tịnh Cốc (Tặng vé xe lửa Mường Hoa)
                            </textarea>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-4">
                                <label class="input__label">Vehicle</label>
                                <input type="text" class="form-control input-style"  value="Xe Hơi" disabled>
                            </div>
                            <div class="form-group col-md-4">
                                <label class="input__label">Price</label>
                                <input type="text" class="form-control input-style" value="6000000" disabled>
                            </div>
                            <div class="form-group col-md-4">
                                <label class="input__label">Duration</label>
                                <input type="text" class="form-control input-style" value="3" disabled>
                            </div>
                        </div>

                    </form>
                </div>
            </div>
            <!-- forms thông tin tour -->

            <!-- forms thông tin khách hang chính -->
            <div class="card card_border py-2 mb-4">
                <div class="cards__heading">
                    <h3>Thông tin khách hàng<span></span></h3>
                </div>
                <div class="card-body">
                    <form action="#" method="post">
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label  class="input__label">First Name</label>
                                <input type="text" class="form-control input-style" value="Phan Thị Như" disabled
                                       >
                            </div>
                            <div class="form-group col-md-6">
                                <label class="input__label">Last Name</label>
                                <input type="text" class="form-control input-style" value="Quỳnh" disabled
                                >
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label class="input__label">Email</label>
                                <input type="text" class="form-control input-style" value="1851050124quynh@ou.edu.vn" disabled
                                >
                            </div>
                            <div class="form-group col-md-6">
                                <label class="input__label">Phone number</label>
                                <input type="text" class="form-control input-style" value="0774046060" disabled
                                >
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="input__label">Address</label>
                            <input type="text" class="form-control input-style" value="khong biết" disabled>
                        </div>
                        <div class="form-group">
                            <label class="input__label">Note</label>
                            <textarea disabled class="form-control input-style">mmmmmmmmmmmmmmm

                            </textarea>
                        </div>

                    </form>
                </div>
            </div>
            <!-- forms thông tin khách hang chính -->

            <!-- Danh sach ticket-->
            <div class="card card_border py-2 mb-4">
                <div class="cards__heading">
                    <h3>Danh sach ticket<span></span></h3>
                </div>
                <div class="list">
                <div class="cus-num" id="title_1" data-stt="0">Khách hàng 1</div>
                <div class="frame-cus">
                    <div class="form-horizontal">
                        <div class="row mg-bot10">
                            <div class="col-lg-3 col-md-8 col-sm-6 col-xs-12 mg-bot10">
                                <label class="mg-bot5">Họ tên (<span class="star">*</span>)
                                </label>
                                <div>
                                    <input class="form-control" required="" type="text" id="hoten_0" value="">
                                </div>
                            </div>
                            <div class="col-lg-2 col-md-4 col-sm-6 col-xs-12 mg-bot10">
                                <label class="mg-bot5">Giới tính</label>
                                <div>
                                    <select class="form-control" required="" id="gender_0">
                                        <option value="Nữ">Nữ</option>
                                        <option value="Name">Nam</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12 mg-bot10">
                                <label class="mg-bot5">Ngày sinh (<span class="star">*</span>)</label>
                                <div>
                                    <input type="date" required="" class="form-control" id="ngaysinh_0">
                                </div>
                            </div>
                            <div class="col-lg-2 col-md-4 col-sm-6 col-xs-12 mg-bot10">
                                <label class="mg-bot5">Độ tuổi</label>
                                <div>
                                    <select class="form-control" id="personkind_0" disabled="">
                                        <option selected="" value="f53d20c2-7f20-4fad-bab6-76847d102ef9">Người lớn</option>
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
                                Trị giá: <span class="price" id="spanprice_0">0đ</span>
                                <input class="form-control" disabled="disabled" id="price_0" type="hidden" value="0">           </div>       </div>   </div></div>
            </div>
                <div class="list">
                    <div class="cus-num" id="title_1" data-stt="0">Khách hàng 1</div>
                    <div class="frame-cus">
                        <div class="form-horizontal">
                            <div class="row mg-bot10">
                                <div class="col-lg-3 col-md-8 col-sm-6 col-xs-12 mg-bot10">
                                    <label class="mg-bot5">Họ tên (<span class="star">*</span>)
                                    </label>
                                    <div>
                                        <input class="form-control" required="" type="text" id="hoten_0" value="">
                                    </div>
                                </div>
                                <div class="col-lg-2 col-md-4 col-sm-6 col-xs-12 mg-bot10">
                                    <label class="mg-bot5">Giới tính</label>
                                    <div>
                                        <select class="form-control" required="" id="gender_0">
                                            <option value="Nữ">Nữ</option>
                                            <option value="Name">Nam</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12 mg-bot10">
                                    <label class="mg-bot5">Ngày sinh (<span class="star">*</span>)</label>
                                    <div>
                                        <input type="date" required="" class="form-control" id="ngaysinh_0">
                                    </div>
                                </div>
                                <div class="col-lg-2 col-md-4 col-sm-6 col-xs-12 mg-bot10">
                                    <label class="mg-bot5">Độ tuổi</label>
                                    <div>
                                        <select class="form-control" id="personkind_0" disabled="">
                                            <option selected="" value="f53d20c2-7f20-4fad-bab6-76847d102ef9">Người lớn</option>
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
                                    Trị giá: <span class="price" id="spanprice_0">0đ</span>
                                    <input class="form-control" disabled="disabled" id="price_0" type="hidden" value="0">           </div>       </div>   </div></div>
                </div>
                <div class="list">
                    <div class="cus-num" id="title_1" data-stt="0">Khách hàng 1</div>
                    <div class="frame-cus">
                        <div class="form-horizontal">
                            <div class="row mg-bot10">
                                <div class="col-lg-3 col-md-8 col-sm-6 col-xs-12 mg-bot10">
                                    <label class="mg-bot5">Họ tên (<span class="star">*</span>)
                                    </label>
                                    <div>
                                        <input class="form-control" required="" type="text" id="hoten_0" value="">
                                    </div>
                                </div>
                                <div class="col-lg-2 col-md-4 col-sm-6 col-xs-12 mg-bot10">
                                    <label class="mg-bot5">Giới tính</label>
                                    <div>
                                        <select class="form-control" required="" id="gender_0">
                                            <option value="Nữ">Nữ</option>
                                            <option value="Name">Nam</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12 mg-bot10">
                                    <label class="mg-bot5">Ngày sinh (<span class="star">*</span>)</label>
                                    <div>
                                        <input type="date" required="" class="form-control" id="ngaysinh_0">
                                    </div>
                                </div>
                                <div class="col-lg-2 col-md-4 col-sm-6 col-xs-12 mg-bot10">
                                    <label class="mg-bot5">Độ tuổi</label>
                                    <div>
                                        <select class="form-control" id="personkind_0" disabled="">
                                            <option selected="" value="f53d20c2-7f20-4fad-bab6-76847d102ef9">Người lớn</option>
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
                                    Trị giá: <span class="price" id="spanprice_0">0đ</span>
                                    <input class="form-control" disabled="disabled" id="price_0" type="hidden" value="0">           </div>       </div>   </div></div>
                </div>
            </div>
            <!-- Danh sach ticket-->

            <div style="margin: 0 auto;
    width: 20%;">
                <button type="submit" class="btn btn-primary btn-style mt-4" >Confirm</button>
            </div>

        </section>
        <!-- //forms -->
        </section>
        <!-- //forms  -->

    </div>
    <!-- //content -->
</div>