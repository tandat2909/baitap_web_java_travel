<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 04-05-2021
  Time: 3:14 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../LibraryJSP.jsp"%>

<style>
    div.annd{
        /*white-space: nowrap;*/
        width: 80%;
        height: 50%;
        overflow: hidden;
        text-overflow: clip;

    }
</style>
<!-- banner -->
<section class="banner_inner" id="home">
    <div class="banner_inner_overlay">
    </div>
</section>
<!-- //banner -->
<!-- places Search -->
<section class="trav-grids py-5" id="desti">
    <div class="container py-xl-5 py-lg-3">
        <h3 class="heading text-capitalize text-center mb-lg-5 mb-4">tin tức du lịch</h3>
        <div>
            <c:forEach items="${news}" var="n">
                <div class="col-lg-12 mt-4">
                    <div class="grids-tem-one">
                        <div class="row">
                            <div class="col-4 grids-img-left">
                                <img src="<c:url value="${n.image}"/>" alt="" class="img-fluid im">
                            </div>
                            <div class="col-8 right-cont">
                                <a href="${pageContext.request.contextPath}/newsdetails?newId=${n.newId}">
                                    <h4 class="mb-2 let mt-sm-0 mt-2 tm-clr " style="color: #007bff">${n.title}</h4>
                                </a>
                                <p class=" mt-2"><span class="fa fa-clock-o mr-2"></span><strong>Duration: </strong>
                                    <fmt:formatDate value='${n.date_submitted}' />
                                </p>
                                <div class="annd">
                                    <p class="mt-3">${n.short_description}</p>
                                </div>

                                <a href="${pageContext.request.contextPath}/newsdetails?newId=${n.newId}">xem thêm</a>
                            </div>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>

    </div>
</section>

<!-- //places -->