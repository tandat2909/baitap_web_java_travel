<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 06-05-2021
  Time: 8:43 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../LibraryJSP.jsp"%>
<!-- banner -->
<section class="banner_inner" id="home">
    <div class="banner_inner_overlay">
    </div>
</section>
<!-- //banner -->
<!-- newsdetail-->

<section class="trav-grids py-5" id="desti">
    <div class="container py-xl-5 py-lg-3">
        <h3 class="heading text-capitalize text-center mb-lg-5 mb-4" style="color: red;">${news.title}</h3>
        <p class="card-text mt-1"><i class="fa fa-calendar"></i> Ngày đi: ${news.date_submitted.date}-${news.date_submitted.month +1}-${news.date_submitted.year + 1900}</p>
        <i>${news.short_description}</i>
        <div>${news.long_description}</div>
    </div>
    <div class="container py-xl-5 py-lg-3">
        <h4>Ý kiến</h4>
        <textarea style="height: 100px; width: 100%;"></textarea>
    </div>
</section>


