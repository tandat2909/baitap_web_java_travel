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
                  onsubmit="summitFormUpdateTour()" action="">
                <div class="row form-row">
                    <div class="col-6">
                        <label>Tên Tour</label>
                        <input name="tour.tourName" required class="form-control" type="text" value="${tours.tourName}"/>
                    </div>
                    <div class="col-2">
                        <label>Số chỗ tối đa</label>
                        <input name="tour.maxseats" min="1" required pattern="[0-9]{1,20}"  class="form-control" value="${tours.maxseats}"
                               type="number"/>
                    </div>
                    <div class="col-4">
                        <label>Phương tiện</label>
                        <select name="tour.vehicle" onchange="checkSelect(this)" class="custom-select is-valid" >
                            <option selected value="${tours.vehicle}">${tours.vehicle}</option>
                            <c:if test="${tours.vehicle == 'Máy Bay'}">
                                <option value="Xe Hơi">Xe Hơi</option>
                            </c:if>
                            <c:if test="${tours.vehicle == 'Xe Hơi'}">
                                <option value="Máy Bay">Máy Bay</option>
                            </c:if>

                        </select>
                    </div>

                    <div class="col-3 mt-3">
                        <label>Ngày đi </label>
                        <input name="ngaydi" required class="form-control mt-1" type="date" id="ngaydis" min="<fmt:formatDate value='${tours.startDay}' pattern="yyyy-MM-dd" />" value="<fmt:formatDate value='${tours.startDay}' pattern="yyyy-MM-dd" />" />
                    </div>
                    <div class="col-3 mt-3">
                        <label class="">Ngày về </label>
                        <input name="ngayve" required class="form-control mt-1" type="date" id="ngayves" min="<fmt:formatDate value='${tours.startDay}' pattern="yyyy-MM-dd" />" value="<fmt:formatDate value='${tours.endDay}' pattern="yyyy-MM-dd" />" />
                    </div>

                    <div class="col-12 mt-3">
                        <label>Giá Tour</label>
                        <table class="table table-bordered" style="">
                            <thead>
                            <tr class="tb-title">
                                <td class="text-center">Em bé</td>
                                <td class="text-center">Trẻ nhỏ</td>
                                <td class="text-center">Trẻ em</td>
                                <td class="text-center">Người lớn</td>

                            </tr>
                            </thead>
                            <tbody>
                            <tr id="tourprice">
                                    <c:forEach items="${tours.tourprices}" var="price">

                                        <c:if test="${price.ageId == 'f53d20c2-7f20-4fad-bab6-76847d102ef9'}">
                                            <td class="p-0"><input type="text" data-id="f53d20c2-7f20-4fad-bab6-76847d102ef9"
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


                                    </c:forEach>
                                <input type="hidden" id="prices" name="prices">
                            </tr>
                            </tbody>
                        </table>
                    </div>
                    <label>Hình ảnh</label>
                    <div class=" col-12 custom-file mt-2" style="z-index: 0">
                        <input type="file" class="custom-file-input" id="imgjs" onchange="setNameFile()" name="img"
                              value="${tours.image}" >
                        <label class="custom-file-label" id="imgname" onchange="setNameFile()">${tours.image}</label>
                    </div>
                    <div class="col-12 pt-2 mt-3">
                        <label> Mô tả ngắn </label>
                        <textarea class="w-100 form-control" name="tour.content" required style="height: 10em;">${tours.content}</textarea>
                    </div>
                    <h3 class="col-12 mt-3">Chương trình Tour</h3>

                    <c:forEach items="${tours.contents}" var="c" varStatus="dem">
                    <div class="col-12" id="cttour">
                        <div class="row mt-3">
                            <div class="col-12 title">
                                <h5 id="title_1">Ngày thứ ${dem.index + 1}</h5>
                            </div>
                            <div class="col-4 pt-2">
                                <select id="provice_${dem.index + 1}" onchange="addOptionLandMark(this);checkSelect(this)" <%--onload="addOptionLandMark(this)"--%> day=${dem.index + 1}
                                        class="custom-select is-valid" >
<%--                                    <jsp:useBean id="c" scope="request" type="com.travels.springmvc.pojo.Contents"/>--%>
                                    <option selected value="${c.landmark.province.provinceId}">${c.landmark.province.provinceName}</option>
                                    <c:forEach items="${provinces}" var="p">
                                        <c:if test="${p.provinceId != c.landmark.province.provinceId}">
                                            <option value="${p.provinceId}">${p.provinceName}</option>
                                        </c:if>
                                        <%--                                <jsp:useBean id="p" scope="request" type="com.travels.springmvc.pojo.Province"/>--%>

                                    </c:forEach>
                                </select>
                            </div>
                            <div class="col-4 pt-2">
                                <select id="landMark_${dem.index + 1}" day=${dem.index + 1} onchange="checkSelect(this)" class="custom-select is-valid">
                                    <option value="${c.landmark.landMarkId}">${c.landmark.landMarkName}</option>
                                    <c:forEach items="${c.landmark.province.landmarks}" var="l">
                                        <c:if test="${l.landMarkId !=c.landmark.landMarkId}">
                                            <option value="${l.landMarkId}">${l.landMarkName}</option>
                                        </c:if>
                                    </c:forEach>

                                </select>
                            </div>
                            <div class="col-12 pt-2">
                                <p>Nội dung: </p>
                                <textarea id="content_${dem.index + 1}"  day=${dem.index + 1}  required class="w-100 form-control"  style="height: 10em;">${fn:replace(c.content, "<br />", "\\n")}</textarea>
                            </div>
                        </div>
                    </div>
                    </c:forEach>
                    <input type="hidden" id="contentspost" name="contents">
                    <div class="col-12 text-center mt-3">
                        <button class="btn btn-primary" onclick="summitFormUpdateTour()"
                                type="submit">Sửa tour
                        </button>
                        <a class="btn btn-danger" href="${pageContext.request.contextPath}/admin/tours"
                          >Hủy
                        </a>
                    </div>

                </div>
            </form>

        </section>
    </div>
</div>