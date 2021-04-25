
<%--
  Created by IntelliJ IDEA.
  User: datoa
  Date: 25/04/2021
  Time: 3:38 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../LibraryJSP.jsp"%>
<style>
    .btn_delete{
        font-weight: bold;
        cursor: pointer;
        color: #e3deef;
        font-size: 2em;
        position: absolute;
        line-height: 0.75;
        margin-left: 90%;
    }
    .btn_delete:hover{
        color: #926cef;
    }
</style>
<div class="main-content">

    <!-- content -->
    <div class="container-fluid content-top-gap">

        <!-- breadcrumbs -->
        <nav aria-label="breadcrumb" class="mb-4">
            <ol class="breadcrumb my-breadcrumb">
                <li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/admin">Home</a></li>
                <li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/admin/customers">Danh sách khách hàng</a></li>

            </ol>
        </nav>
        <!-- //breadcrumbs -->

        <!-- people -->
        <section class="people">

            <!-- //teams1 -->
            <!-- //people cards style 2 -->
            <div class="card card_border mb-5">
                <div class="cards__heading">
                    <h3>Danh sách khách hàng hệ thống</h3>
                </div>
                <div class="card-body">
                    <div class="row px-2" id="search-element">
                        <c:url value="/admin/images/avatar/" var="path_img"/>
                        <c:forEach items="${lsCustomer}" var="i">
                                <div class="col-lg-3 col-md-6 mb-4 px-2 search-customer" id ="${i.customerId}">
                                    <div class="card text-center card_border py-2">
                                        <div class="btn_delete" title="Xóa" onclick="deleteCustomer('${i.customerId}')" >x</div>
                                        <div class="card-body">
                                            <div class="team-main-19">
                                                <a href="#url"><img class="rounded-circle " width="50%" src="${path_img}${i.image == null ? (fn:containsIgnoreCase(i.gender,"nữ") ? "default_female.png":"default_male.png") :i.image}" alt=""></a>
                                                <div class="right-team-9">
                                                    <div>
                                                        <h5><a href="#url" class="card__title mb-2 mt-3 ho-ten">${i.lastName} ${i.firstName}</a>
                                                        </h5>
                                                        <p>User name:<a href="#"> ${i.account.userName} </a></p>
<%--                                                        <p>Số điện thoại:<a href="tel:${i.phoneNumber}"> ${i.phoneNumber}</a></p>--%>
                                                    </div>
                                                    <div class="people-social mt-3">
                                                        <a href="tel:${i.phoneNumber}" class="facebook"><span class="fa fa-phone-square"></span></a>
                                                        <a href="mailto:${i.email}" title="Email" class="twitter"><span class="fa fa-envelope"></span></a>
                                                        <a href="#team" class="linkedin" title="chỉnh sửa"><i class="fa fa-edit"></i></a>
                                                    </div>
                                                    <a href="#url" class="btn mt-4 profile-btn text-primary">View profile </a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                        </c:forEach>

                    </div>
                </div>
            </div>
            <!-- //people cards style 2 -->
        </section>
        <!-- //people -->

    </div>
    <!-- //content -->
</div>

