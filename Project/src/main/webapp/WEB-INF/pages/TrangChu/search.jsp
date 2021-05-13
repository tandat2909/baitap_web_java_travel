
<%@page contentType="text/html" pageEncoding="UTF-8" %>
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
<!-- places Search -->
<section class="trav-grids py-5" id="desti">
    <div class="container py-xl-5 py-lg-3">
        <form id="abc" action="${pageContext.request.contextPath}/timkiem" method="get" style="display: flex;">

            <div>
                <input type="date" class="form-control" style="width: 90%;"  id="ngaydi" name="ngaydi">
            </div>
            <div>
                <input type="date" class="form-control" style="width: 90%;"  id="ngayve" name="ngayve">
            </div>
            <button type="submit" class="btn btn-primary">Tìm Kiếm</button>
            <input type="hidden" name ="diemden" value="${param.get("diemden")}">
            <input type="hidden" name ="diemdi" value="${param.get("diemdi")}">
        </form>

        <h3 class="heading text-capitalize text-center mb-lg-5 mb-4">Kết quả tìm kiếm</h3>
        <div>
            <c:if test="${tours == null}">
                <h4 class="text-center">Không tìm thấy </h4>
            </c:if>
            <c:forEach items="${tours}" var="Search">
                <div class="col-lg-12" style="padding: 30px;">
                    <div class="grids-tem-one">
                        <div class="row">
                            <div class="col-sm-3 grids-img-left">
                                <img src="<c:url value="/TrangChu/images/japan.jpg"/>" alt="" class="img-fluid">
                            </div>
                                <div class="col-sm-9 right-cont">
                                    <h4 class="mb-2 let mt-sm-0 mt-2 tm-clr">${Search.tourName}</h4>
                                    <ul class="d-flex">
                                        <li><span class="fa fa-star"></span></li>
                                        <li><span class="fa fa-star"></span></li>
                                        <li><span class="fa fa-star"></span></li>
                                        <li><span class="fa fa-star"></span></li>
                                        <li><span class="fa fa-star"></span></li>
                                    </ul>
                                    <div class="col-sm-12"><p >Mô tả ngắn: ${Search.content}</p></div>
                                    <div class="row">
                                        <div class="col-sm-3"><p class="mt-3">Phương tiện: ${Search.vehicle}</p></div>
                                        <div class="col-sm-3"><p class="mt-3">Giá: ${Search.price}</p></div>
                                        <div class="col-sm-3"><p class="mt-3">Số chỗ: ${Search.maxseats}</p></div>

                                    </div>

                                    <span class="fa fa-clock-o mr-2"></span><strong> Duration </strong><span class="duration" data-startday="<fmt:formatDate value='${Search.startDay}' pattern='yyyy-MM-dd'/>"
                                                                                                                                    data-endday="<fmt:formatDate value='${Search.endDay}' pattern='yyyy-MM-dd'/>"></span>
                                </div>
                        </div>
                    </div>
                </div>
            </c:forEach>

        </div>

    </div>
</section>
<!-- //places -->
