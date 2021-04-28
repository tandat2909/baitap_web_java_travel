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

    /*.chuongtrinhtour .list .list__item .list__desc {*/
    /*    width: 70%;*/
    /*    color: #212121;*/
    /*    font-size: 15px;*/
    /*    line-height: 22px;*/
    /*    padding-bottom: 30px;*/
    /*    position: relative;*/
    /*}*/

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
            <div class="col-lg-9 col-md-9 col-sm-8 col-xs-12">
                <h2 class="title-lg">Chương trình tour</h2>
                <div class="row">
                    <div class="col-3">
                        <div class="list__time">
                            <div class="num">Ngày 01</div>
                            <div class="day">01-05-2021</div>
                        </div>
                    </div>
                    <div class="col-9">
                        <div class="list__desc">
                            <h3 class="font500 name"><img src="/Content/ThemeHe/img/i-marker.png"
                                                          alt="marker">&nbsp;&nbsp;&nbsp;PHÒNG
                                LƯU TRÚ</h3>
                            <div class="d1 detail" style="max-height: initial; overflow-y: initial;">


                                <title></title>


                                <div style="text-align: justify;">
                                    <div>
                                        <div>
                                            <strong>&nbsp; Điều kiện áp dụng:</strong></div>
                                        <div>
                                            • Áp dụng khi đặt 02 Khách/Phòng
                                        </div>
                                        <div>
                                            • Dành cho Khách Việt Nam
                                        </div>
                                        <div>
                                            • Chính sách hủy: Không hoàn, không đổi, không hủy.
                                        </div>
                                        <div>
                                            • Chính sách phụ thu người thứ ba và trẻ em: vui lòng liên hệ
                                        </div>
                                        <div>
                                            &nbsp;
                                        </div>
                                        <div>
                                            <strong>&nbsp; Giá phòng không bao gồm:</strong></div>
                                        <div>
                                            • Chi phí ăn uống cá nhân
                                        </div>
                                        <div>
                                            • Các chi phí khác không bao gồm trong giá
                                        </div>
                                        <div>
                                            &nbsp;
                                        </div>
                                        <div>
                                            <strong>&nbsp; Thời gian nhận phòng: 14:00</strong></div>
                                        <div>
                                            <strong>&nbsp; Thời gian trả phòng: 12:00</strong></div>
                                        <div>
                                            &nbsp;
                                        </div>
                                    </div>
                                    <div>
                                        &nbsp;
                                    </div>
                                </div>
                            </div>
                            <div class="an-hien ah1">
                                <div class="hienra" style="display: none;">
                                    <a href="#"> Xem thêm &nbsp;<i class="fas fa-arrow-down"></i></a>
                                </div>
                                <div class="andi" style="display: block;">
                                    <a href="#"> Ẩn đi &nbsp;<i class="fas fa-arrow-up"></i></a>
                                </div>
                            </div>
                            <div class="border"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>