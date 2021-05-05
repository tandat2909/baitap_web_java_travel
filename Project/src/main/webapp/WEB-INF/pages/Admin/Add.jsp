<%--<jsp:useBean id="tournew" scope="request" type="com.travels.springmvc.modelView.TourView"/>--%>
<%--
  Created by IntelliJ IDEA.
  User: datoa
  Date: 03/05/2021
  Time: 11:33 SA
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../LibraryJSP.jsp" %>

<div class="main-content">

    <!-- content -->
    <div class="container-fluid content-top-gap">

        <!-- breadcrumbs -->
        <nav aria-label="breadcrumb" class="mb-4">
            <ol class="breadcrumb my-breadcrumb">
                <li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/admin">Home</a></li>
                <li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/admin/tours">Theem</a>
                </li>

            </ol>
        </nav>
        <!-- //breadcrumbs -->

        <section class="">
            <form class="was-validated"  id="tournew" method="post" onsubmit="summitFormAddTour()" action="" >
                <div class="row form-row">
                    <div class="col-3">
                        <label>Tên Tour</label>
                        <input name="tour.tourName" required class="form-control" type="text"/>
                    </div>
                    <div class="col-3">
                        <label>Ngày di </label>
                        <input name="ngaydi" required class="form-control" type="date" id="ngaydi"/>
                    </div>
                    <div class="col-3">
                        <label>Ngày về </label>
                        <input name="ngayve" required class="form-control" type="date" id="ngayve"/>
                    </div>
                    <div class="col-3">
                        <label>Số chỗ tối đa</label>
                        <input name="tour.maxseats" required pattern="[0-9]{1,20}" value="1"  class="form-control" type="number"/>
                    </div>
                    <div class="col-12">
                        <label>Giá Tour</label>
                        <table class="table table-bordered" style="" >
                            <thead>
                            <tr class="tb-title">
                                <td class="text-center">Người lớn</td>
                                <td class="text-center">Trẻ em</td>
                                <td class="text-center">Trẻ nhỏ</td>
                                <td class="text-center">Em bé</td>
                                <td class="text-center">Phụ thu phòng đơn</td>
                            </tr>
                            </thead>
                            <tbody>
                            <tr id="tourprice">
<%--                                trò chơi mạo hiểm thay đổi id dươi cơ sở dữ liệu coi như fomr này đi tong--%>
                                <td class="p-0"><input type="text" data-id="f53d20c2-7f20-4fad-bab6-76847d102ef9" required pattern="[0-9]{3,20}" class="form-control pricejs" ></td>
                                <td class="p-0"><input type="text" data-id="c71fb358-c195-4bc4-9e45-004fd8a5ffd2" required pattern="[0-9]{3,20}" class="form-control pricejs" ></td>
                                <td class="p-0"><input type="text" data-id="bdee5279-4601-484c-8fce-e8f5781deda3" required pattern="[0-9]{3,20}" class="form-control pricejs" ></td>
                                <td class="p-0"><input type="text" data-id="31c75b0d-ec1c-4c39-9caf-5f2e90e7f492" required pattern="[0-9]{3,20}" class="form-control pricejs"></td>
                                <td class="p-0"><input type="text" required pattern="[0-9]{3,20}" class="form-control"></td>
                                <input type="hidden" id="prices" name="prices">
                            </tr>
                            </tbody>
                        </table>
                    </div>
                    <h3>Chương trình Tour</h3>
                    <div class="col-12" id="cttour">
                        <div class="row" >
                            <div class="col-12 title">
                                <h5 id="title_1">Ngày thứ 1</h5>
                            </div>
                            <div class="col-4 pt-2">
                                <select id="provice_1"  onchange="addOptionLandMark(this)" day= 1 class="custom-select input-style ">
                                    <option selected disabled>Chọn tỉnh</option>
                                    <c:forEach items="${provinces}" var="p">
                                        <%--                                <jsp:useBean id="p" scope="request" type="com.travels.springmvc.pojo.Province"/>--%>
                                        <option value="${p.provinceId}">${p.provinceName}</option>
                                    </c:forEach>
                                </select>
                            </div>
                            <div class="col-4 pt-2">

                                <select id = "landMark_1" day = 1 class="custom-select input-style">
                                <option disabled selected>Chọn tỉnh trước khi chọn địa danh</option>
                            </select>
                            </div>
                            <div class="col-12 pt-2">
                                <p>Nội dung: </p>
                                <textarea id="content_1" day=1 class="w-100" style="height: 10em;"></textarea>
                            </div>
                        </div>


                    </div>
                    <input type="hidden" id="contentspost" name="contents">
                    <div class="col-12 text-center">
                        <button class="btn btn-success" onclick="summitFormAddTour()" style="background: #008af3" type="submit">Thêm tour</button>
                    </div>

                </div>
            </form>

        </section>
    </div>
</div>



