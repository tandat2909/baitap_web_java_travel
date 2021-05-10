<%--
  Created by IntelliJ IDEA.
  User: datoa
  Date: 25/04/2021
  Time: 10:43 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../LibraryJSP.jsp" %>
<style>
    .destinations-grids {
        overflow: hidden;
        position: relative;
    }

    .caption a {
        font-size: 15px;
        background: none;
        border: 1px solid #ccc;
        padding: 12px 20px;
        letter-spacing: 1px;
        color: #ccc;
        margin-top: 20px;
        display: inline-block;
    }

    .destinations-info {
        position: absolute;
        margin: 0;
        background: rgba(0, 0, 0, 0.8);
        padding: 30px 0px 10px;
        transition: .5s all;
        -webkit-transition: 0.5s all;
        -moz-transition: 0.5s all;
        -o-transition: 0.5s all;
        -ms-transition: 0.5s all;
        left: -40em;
        width: 100%;
        height: 100%;
        text-align: center;
    }

    .destinations-grids:hover div.destinations-info {
        left: 0;
    }

    .caption {
        padding: 0px;
    }
    .price{
        color: red;
    }

</style>
<div class="main-content">

    <!-- content -->
    <div class="container-fluid content-top-gap">

        <!-- breadcrumbs -->
        <nav aria-label="breadcrumb" class="mb-4">
            <ol class="breadcrumb my-breadcrumb">
                <li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/admin">Home</a></li>
                <li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/admin/tours">Danh sách tour</a>
                </li>

            </ol>
        </nav>
        <!-- //breadcrumbs -->

        <section class="">

            <div class="card card_border mb-5">
                <div class="cards__heading">
                    <h3>Danh sách Tour
                      </h3>
                    <div class="text-right" ><a class="btn btn-primary" href="${pageContext.request.contextPath}/admin/tour/add">
                        <i class="fa fa-plus"></i>  Thêm Tour</a></div>
                </div>
                <div class="card-body">
                    <div class="row px-2" id="search-element">
                        <c:url value="/admin/images/avatar/" var="path_img"/>
                        <c:forEach items="${lsTour}" var="i">
<%--                            <jsp:useBean id="i" scope="request" type="com.travels.springmvc.pojo.Tour"/>--%>

                            <div class="col-lg-4 col-md-6 mb-4 search-tour " id="${i.tourId}"  >
                                <div class="card card_border" <%--onclick="openLink('${pageContext.request.contextPath}/tour?tourid=${i.tourId}','_blank')" title="Click để xem chi tiết"--%> >
                                    <div class="card-img-top destinations-grids">
                                        <div class="destinations-info">
                                            <div class="caption mb-lg-3">
                                                <a href="${pageContext.request.contextPath}/tour?tourid=${i.tourId}"
                                                   target="_blank"><i class="fa fa-info-circle"></i> Chi tiết</a>
                                                <br>
                                                <a href="${pageContext.request.contextPath}/admin/updateTour?tourid=${i.tourId}"
                                                   target="_blank"><i class="fa fa-edit"></i> Chỉnh sửa</a>
                                                <a href="javascript:" onclick="deleteTour('${i.tourId}')"
                                                   ><i class="fa fa-trash"></i> Xóa</a>
                                            </div>
                                        </div>
                                        <img src="<c:url value="/TrangChu/images/tours/${i.image}"/>" class="card-img-top"
                                             alt="...">
                                    </div>

                                    <div class="card-body">
                                        <h5 class="card-title">${i.tourName}</h5>
                                        <p class="card-text mt-1"><i class="fa fa-dollar"></i> Giá: <span
                                                class="price">${i.price} VNĐ</span>
                                            <a href="${pageContext.request.contextPath}/admin/updateTour?tourid=${i.tourId}#updateprice"
                                               target="_blank"> <i class="fa fa-pencil" aria-hidden="true"
                                                                   style="float: right;"></i></a>
                                        </p>
                                        <p class="card-text mt-1"> Số chỗ: ${i.maxseats}</p>
                                        <p class="card-text mt-1"><i class="fa fa-calendar"></i> Ngày
                                            đi: <fmt:formatDate value="${i.startDay}" pattern="dd-MM-yyyy"/></p>
                                    </div>
                                </div>

                            </div>
                        </c:forEach>
                    </div>
                </div>
            </div>
        </section>
    </div>
</div>
