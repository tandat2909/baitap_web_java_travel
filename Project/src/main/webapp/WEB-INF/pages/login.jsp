<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>

<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <title><tiles:insertAttribute name="title"/> </title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="<c:url value="login/css/bootstrap.min.css"/> ">
    <link rel="stylesheet" href="<c:url value="login/css/style-starter.css"/>"/>
    <script src="<c:url value="login/js/jquery-3.3.1.min.js"/> "></script>
    <script src="<c:url value="login/js/popper.min.js"/> "></script>
    <script src="<c:url value="login/js/bootstrap.min.js"/> "></script>

</head>
<body>
<section>

    <!-- content -->
    <div class="">
        <!-- login form -->
        <c:if test="${param.error != null }">
            <div class="alert alert-danger alert-dismissible fade show text-center" style="position: absolute; width: 100%" role="alert">
                Đang nhập thất bại
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
        </c:if>
        <c:if test="${param.accessDenied != null}">
            <div class="alert alert-danger alert-dismissible fade show text-center" style="position: absolute; width: 100%" role="alert">
                Bạn không có quyền truy cập
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
        </c:if>
        <c:if test="${success != null}">
            <div class="alert alert-success alert-dismissible fade show text-center" style="position: absolute; width: 100%" role="alert">
                ${success}
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
        </c:if>

        <section class="login-form py-md-5 py-3">
            <div class="card card_border p-md-4">
                <div class="card-body">
                    <!-- form -->
                    <form action="${pageContext.request.contextPath}/login" method="POST">
                        <div class="login__header text-center mb-lg-5 mb-4">
                            <h3 class="login__title mb-2"> Login</h3>
                            <p>Welcome back, login to continue</p>
                        </div>
                        <div class="form-group">
                            <label for="username" class="input__label">Username</label>
                            <input type="text"  class="form-control login_text_field_bg input-style" id="username" name="username" aria-describedby="emailHelp" placeholder="User name" required autofocus="">
                        </div>
                        <div class="form-group">
                            <label for="password" class="input__label">Password</label>
                            <input type="password" class="form-control login_text_field_bg input-style" id="password" name="password" placeholder="Password" required>
                        </div>
                        <div class="form-check check-remember check-me-out">
                            <input type="checkbox" class="form-check-input checkbox" id="exampleCheck1">
                            <label class="form-check-label checkmark" for="exampleCheck1">Remember
                                me</label>
                        </div>
                        <div class="d-flex align-items-center flex-wrap justify-content-between">
                            <button type="submit" class="btn btn-primary btn-style mt-4">Login now</button>

                            <p class="signup mt-4">Don’t have an account? <a href="${pageContext.request.contextPath}/SignUp" class="signuplink">Sign
                                up</a></p>
                        </div>
                    </form>
                    <!-- //form -->
                    <p class="backtohome mt-4"><a href="${pageContext.request.contextPath}/" class="back"><i class="fa fa-chevron-left" aria-hidden="true"></i>Back to Home </a></p>
                </div>
            </div>
        </section>

    </div>
    <!-- //content -->

</section>

</body>
</html>