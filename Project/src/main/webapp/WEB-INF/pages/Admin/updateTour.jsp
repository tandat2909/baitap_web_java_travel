<%--<jsp:useBean id="tour" type="com.travels.springmvc.pojo.Tour"></jsp:useBean>--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../LibraryJSP.jsp" %>
<div class="main-content">

    <%@include file="../Alert.jsp" %>
    <!-- content -->
    <div class="container-fluid content-top-gap">

        <!-- breadcrumbs -->
        <nav aria-label="breadcrumb" class="mb-4">
            <ol class="breadcrumb my-breadcrumb">
                <li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/admin">Home</a></li>
                <li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/admin/tours">Thêm</a>
                </li>

            </ol>
        </nav>
        <!-- //breadcrumbs -->


        <section class="">
            <form class="was-validated" enctype="multipart/form-data" id="tournew" method="post"
                  onsubmit="summitFormAddTour()" action="">
                <div class="row form-row">
                    <div class="col-6">
                        <label>Tên Tour</label>
                        <input name="tourName" required class="form-control" type="text" value="${tour.tourName}"/>
                    </div>
                    <div class="col-2">
                        <label>Số chỗ tối đa</label>
                        <input name="maxseats" min="1" required pattern="[0-9]{1,20}"  class="form-control" value="${tour.maxseats}"
                               type="number"/>
                    </div>
                    <div class="col-4">
                        <label>Phương tiện</label>
                        <select name="vehicle" onchange="checkSelect(this)" class="custom-select is-valid" name="vehicle">
                            <option selected value="${tour.vehicle}">${tour.vehicle}</option>
                            <c:if test="${tour.vehicle == 'Máy Bay'}">
                                <option value="Xe Hơi">Xe Hơi</option>
                            </c:if>
                            <c:if test="${tour.vehicle == 'Xe Hơi'}">
                                <option value="Máy Bay">Máy Bay</option>
                            </c:if>

                        </select>
                    </div>

                    <div class="col-3 mt-3">
                        <label>Ngày đi </label>
                        <input name="ngaydi" required class="form-control mt-1" type="date" id="ngaydi" value="${tour.startDay}"/>
                    </div>
                    <div class="col-3 mt-3">
                        <label class="">Ngày về </label>
                        <input name="ngayve" required class="form-control mt-1" type="date" id="ngayve" value="${tour.endDay}"/>
                    </div>

                    <div class="col-12 mt-3">
                        <label>Giá Tour</label>
                        <table class="table table-bordered" style="">
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

                                <td class="p-0">
                                    <c:forEach items="${prices}" var="price">
                                        <c:if test="${price.ageId == 'f53d20c2-7f20-4fad-bab6-76847d102ef9'}">
                                            <input type="text" data-id="f53d20c2-7f20-4fad-bab6-76847d102ef9"
                                                       required pattern="[0-9]{3,20}" value="${price.price}" class="form-control pricejs"></td>
                                        </c:if>

                                        <c:if test="${price.ageId == 'c71fb358-c195-4bc4-9e45-004fd8a5ffd2'}">
                                            <td class="p-0"><input type="text" data-id="c71fb358-c195-4bc4-9e45-004fd8a5ffd2"
                                                                   required pattern="[0-9]{1,20}" value="${price.price}" class="form-control pricejs"></td>
                                        </c:if>

                                        <c:if test="${price.ageId == 'bdee5279-4601-484c-8fce-e8f5781deda3'}">
                                            <td class="p-0"><input type="text" data-id="bdee5279-4601-484c-8fce-e8f5781deda3"
                                                                   required pattern="[0-9]{1,20}" value="${price.price}" class="form-control pricejs"></td>
                                        </c:if>
                                        <c:if test="${price.ageId == '31c75b0d-ec1c-4c39-9caf-5f2e90e7f492'}">
                                            <td class="p-0"><input type="text" data-id="31c75b0d-ec1c-4c39-9caf-5f2e90e7f492"
                                                                   required pattern="[0-9]{1,20}" value="${price.price}" class="form-control pricejs"></td>
                                        </c:if>

                                        <td class="p-0"><input type="text" required disabled pattern="[0-9]" class="form-control">
                                        </td>
                                    </c:forEach>
                                <input type="hidden" id="prices" name="prices">
                            </tr>
                            </tbody>
                        </table>
                    </div>
                    <label>Hình ảnh</label>
                    <div class=" col-12 custom-file mt-2" style="z-index: 0">
                        <input type="file" class="custom-file-input" id="imgjs" onchange="setNameFile()" name="img"
                               required="" >
                        <label class="custom-file-label" id="imgname" onchange="setNameFile()">Choose file...</label>
                    </div>
                    <div class="col-12 pt-2 mt-3">
                        <label> Mô tả ngắn </label>
                        <textarea class="w-100 form-control" name="content" required style="height: 10em;">${tour.content}</textarea>
                    </div>
                    <h3 class="col-12 mt-3">Chương trình Tour</h3>

                    <c:forEach items="${tour.contents}" var="c" varStatus="dem">
                    <div class="col-12" id="cttour">
                        <div class="row mt-3">
                            <div class="col-12 title">
                                <h5 id="title_1">Ngày thứ ${dem + 1}</h5>
                            </div>
                            <div class="col-4 pt-2">
                                <select id="provice_1" onchange="addOptionLandMark(this);checkSelect(this)" day=1
                                        class="custom-select is-invalid">
                                    <option selected disabled>Chọn tỉnh</option>
                                    <c:forEach items="${tour.contents}" var="p">
                                        <%--                                <jsp:useBean id="p" scope="request" type="com.travels.springmvc.pojo.Province"/>--%>
                                        <option value="${p.provinceId}">${p.provinceName}</option>
                                    </c:forEach>
                                </select>
                            </div>
                            <div class="col-4 pt-2">
                                <select id="landMark_1" day=1 onchange="checkSelect(this)" class="custom-select is-invalid">
                                    <option disabled selected>Chọn tỉnh trước khi chọn địa danh</option>
                                </select>
                            </div>
                            <div class="col-12 pt-2">
                                <p>Nội dung: </p>
                                <textarea id="content_1"  day= 1  required class="w-100 form-control"  style="height: 10em;"></textarea>
                            </div>
                        </div>
                    </div>
                    </c:forEach>
                    <input type="hidden" id="contentspost" name="contents">
                    <div class="col-12 text-center mt-3">
                        <button class="btn btn-primary" onclick="summitFormAddTour()"
                                type="submit">Thêm tour
                        </button>
                        <a class="btn btn-danger" href="${pageContext.request.contextPath}/admin/tours"
                           type="submit">Hủy
                        </a>
                    </div>

                </div>
            </form>

        </section>
    </div>
</div>