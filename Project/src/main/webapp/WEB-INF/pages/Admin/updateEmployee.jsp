
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../LibraryJSP.jsp"%>
<div class="main-content">
    <%@ include file="../Alert.jsp"%>
    <!-- content -->
    <div class="container-fluid content-top-gap">

        <!-- breadcrumbs -->
        <nav aria-label="breadcrumb" class="mb-4">
            <ol class="breadcrumb my-breadcrumb">
                <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                <li class="breadcrumb-item active" aria-current="page">Forms</li>
            </ol>
        </nav>
        <!-- //breadcrumbs -->
        <!-- forms -->
        <section class="forms">
            <!-- forms 2 -->
            <div class="card card_border py-2 mb-4">
                <div class="card-body">
                    <form action="" method="post" id="view">
                        <!-- usename password-->
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label class="input__label" >UseName</label>
                                <input type="text" class="form-control input-style" disabled value="${account.userName}" name="userName">
                            </div>
                            <div class="form-group col-md-6">
                                <label class="input__label">Address</label>
                                <input type="text" class="form-control input-style" value="${employee.address}" name="address">
                            </div>
                        </div>
                        <!--name-->
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label class="input__label">First Name</label>
                                <input type="text" class="form-control input-style" value="${employee.firstName}" name="firstName">
                            </div>
                            <div class="form-group col-md-6">
                                <label class="input__label">Last Name</label>
                                <input type="text" class="form-control input-style" value="${employee.lastName}" name="lastName"
                                >
                            </div>
                        </div>
                        <!--email birthday-->
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="inputEmail4" class="input__label">Email</label>
                                <input type="email" class="form-control input-style" id="inputEmail4" value="${employee.email}" name="email">
                            </div>
                            <div class="form-group col-md-6">
                                <label class="input__label">Birthday</label>
                                <input type="date" class="form-control input-style"
                                       value="${fn:substringBefore(employee.birthDay.toString(), " ")}" name="birthDay">
                            </div>
                        </div>
                        <!--CCID phoneNumber-->
                        <div class="form-row">
                            <div class="form-group col-md-4">
                                <label class="input__label">CCID</label>
                                <input type="text" class="form-control input-style"
                                       value="${employee.ccid}" name="CCID">
                            </div>
                            <div class="form-group col-md-4">
                                <label class="input__label">Phone number</label>
                                <input type="text" class="form-control input-style"
                                       value="${employee.phoneNumber}" name="phoneNumber">
                            </div>
                            <div class="form-group col-md-4">
                                <label class="input__label">Gender</label>
                                <select id="inputState" class="form-control input-style" name="gender">
                                    <option selected >${employee.gender}</option>
                                    <option>Nam</option>
                                    <option>Nữ</option>
                                    <option>Khác</option>
                                </select>
                            </div>
                        </div>
                        <!--file anh-->
                        <%--                        <div class="form-group  custom-file">--%>
                        <%--                            <label class="input__label">Hình ảnh</label>--%>
                        <%--                            <input type="file" class="custom-file-input" id="validatedCustomFile" required>--%>
                        <%--                            <label class="custom-file-label">Choose file...</label>--%>

                        <%--                        </div>--%>
                        <button type="submit" class="btn btn-primary btn-style mt-4">save</button>
                    </form>
                </div>
            </div>
            <!-- //forms 2 -->


        </section>
        <!-- //forms -->
        </section>
        <!-- //forms  -->

    </div>
    <!-- //content -->

