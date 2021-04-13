<%--
  Created by IntelliJ IDEA.
  User: datoa
  Date: 13/04/2021
  Time: 9:23 SA
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>

<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->

    <title><tiles:insertAttribute name = "title" /></title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="<c:url value="login/css/style-starter.css"/>"/>
</head>
<body>
<section>
    <!-- content -->
    <div class="">
        <!-- Register form -->
        <section class="register-form py-md-5 py-3">
            <div class="card card_border p-md-4">
                <div class="card-body">
                    <!-- form -->
                    <%--@elvariable id="user" type="com.travels.springmvc.modelView.InforAccount"--%>
                    <form:form action="/SignUp" method="POST" modelAttribute="user">
                        <div class="register__header text-center mb-lg-5 mb-4">
                            <h3 class="register__title mb-2"> Signup</h3>
                            <p>Create your account here, and continue </p>
                        </div>
                        <div class="form-group">
                            <label for="firstName" class="input__label">First name</label>
                            <form:input path="customer.firstName" type="text"  cssClass="form-control login_text_field_bg input-style" id="firstName" aria-describedby="emailHelp" placeholder="User name" required="" autofocus="" />
                        </div>
                        <div class="form-group">
                            <label for="lastName" class="input__label">Last name</label>
                            <form:input path="customer.lastName" type="text"  cssClass="form-control login_text_field_bg input-style" id="lastName" aria-describedby="emailHelp" placeholder="User name" required="" autofocus="" />
                        </div>
                        <div class="form-group">
                            <label for="username" class="input__label">User name</label>
                            <form:input path="account.userName" type="text"  cssClass="form-control login_text_field_bg input-style" id="username" aria-describedby="emailHelp" placeholder="User name" required="" autofocus="" />
                        </div>
                        <div class="form-group">
                            <label for="email" class="input__label">Email</label>
                            <form:input path="customer.email" type="email" cssClass="form-control login_text_field_bg input-style" id="email" aria-describedby="emailHelp" placeholder="Email" required=""/>
                        </div>
                        <div class="form-group">
                            <label for="ccid" class="input__label">CCID</label>
                            <form:input path="customer.ccid" type="text" cssClass="form-control login_text_field_bg input-style" id="ccid" aria-describedby="emailHelp" placeholder="CCID" required=""/>
                        </div>

                        <div class="form-group">
                            <label for="birthdate" class="input__label">Birth Date</label>
                            <form:input path="date" type="date" cssClass="form-control login_text_field_bg input-style" id="birthdate" aria-describedby="emailHelp" placeholder="BirthDate" required=""/>
                        </div>

                        <div class="form-group">
                            <label for="password" class="input__label">Password</label>
                            <form:input path="account.pw" type="password" cssClass="form-control login_text_field_bg input-style" id="password" placeholder="Password" required=""/>
                        </div>
                        <div class="form-group">
                            <label for="confirmPw" class="input__label">Confirm Password</label>
                            <form:input path="account.confirmPw" type="password" cssClass="form-control login_text_field_bg input-style" id="confirmPw" placeholder="Confirm Password" required=""/>
                        </div>
                        <div class="form-check check-remember check-me-out">
                            <input type="checkbox" class="form-check-input checkbox" id="exampleCheck1">
                            <label class="form-check-label checkmark" for="exampleCheck1">I agree to the
                                <a href="#terms">Terms of service</a> and <a href="#privacy">Privacy policy</a> </label>
                        </div>
                        <div class="d-flex align-items-center flex-wrap justify-content-between">
                            <button type="submit" class="btn btn-primary btn-style mt-4">Create Account</button>
                            <p class="signup mt-4">Already have an account? <a href="/login" class="signuplink">Login </a>
                            </p>
                        </div>
                    </form:form>
                    <!-- //form -->
                    <p class="backtohome mt-4"><a href="/" class="back"><i class="fa fa-chevron-left" aria-hidden="true"></i>Back to Home </a></p>
                </div>
            </div>
        </section>

    </div>
    <!-- //content -->

</section>
</body>
</html>