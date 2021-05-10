<%--<jsp:useBean id="neww" scope="request" type="com.travels.springmvc.pojo.News"/>--%>
<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 04-05-2021
  Time: 3:14 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../LibraryJSP.jsp"%>
<div class="main-content">
    <%@ include file="../Alert.jsp"%>
    <!-- content -->
    <div class="container-fluid content-top-gap">

        <!-- breadcrumbs -->
        <nav aria-label="breadcrumb" class="mb-4">
            <ol class="breadcrumb my-breadcrumb">
                <li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/admin">Home</a></li>
                <li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/admin/News">Danh sách News</a>
            </ol>
        </nav>
        <!-- //breadcrumbs -->
        <!-- forms -->
        <section class="forms">
            <!-- forms 2 -->
            <div class="card card_border py-2 mb-4">
                <div class="card-body">
                    <form  method="post" id="neww" enctype="multipart/form-data">
                        <!-- tiêu đề-->
                        <div class="form-row">
                            <div class="form-group col-md-2">
                                <label class="input__label">Tiêu đề</label>
                            </div>
                            <div class="form-group col-md-10">
                                <input type="text" class="form-control input-style" value="${neww.title}" name="title"
                                >
                            </div>
                        </div>
                        <!--hình ảnh đại diện-->
                        <div class="form-row">
                            <div class="form-group col-md-2">
                                <label class="input__label">Hình ảnh</label>
                            </div>
                            <div class="form-group col-md-10 custom-file">
                                <input type="file" class="custom-file-input" id="imgjs" onchange="setNameFile()" value="${neww.image}" name="img" required>
                                <label class="custom-file-label" id="imgname" onchange="setNameFile()" >Choose file...</label>
                            </div>
                        </div>

                        <!--mô tả ngắn-->
                        <div class="form-row">
                            <div class="form-group col-md-2">
                                <label class="input__label">Mô tả ngắn</label>
                            </div>
                            <div class="form-group col-md-10">
                                <input type="text" class="form-control input-style" value="${neww.short_description}" name="short_description"
                                >
                            </div>
                        </div>
                        <!--nội dung-->
                        <div class="form-row">
                            <div class="form-group col-md-2">
                                <label class="input__label">Nội dung</label>
                            </div>
                            <div class="form-group col-md-10">
                                <textarea class="form-control input-style" style="height: 500px;"  id="ck" name="long_description">${neww.long_description}</textarea>
                            </div>
                        </div>

                        <button type="submit" class="btn btn-primary btn-style mt-4">save</button>
                    </form>
                </div>
            </div>
            <!-- //forms 2 -->

        </section>
        <!-- //forms -->

        <!-- //forms  -->
    </div>
    <!-- //content -->

</div>
