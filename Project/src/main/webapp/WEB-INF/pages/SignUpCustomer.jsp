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
    <script src="<c:url value="login/js/jquery-3.3.1.min.js"/>"></script>
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
                    <form action="${pageContext.request.contextPath}/SignUp" class="was-validated" method="POST" id="user">
                        <div class="register__header text-center mb-lg-5 mb-4">
                            <h3 class="register__title mb-2"> Signup</h3>
                            <p>Create your account here, and continue </p>
                        </div>
                        <div class="form-group">
                            <label for="firstName" class="input__label">First name</label>
                            <input name="customer.firstName" type="text"  class="form-control login_text_field_bg input-style" id="firstName" aria-describedby="emailHelp" placeholder="First name" required="" autofocus="" />
                        </div>
                        <div class="form-group">
                            <label for="lastName" class="input__label">Last name</label>
                            <input name="customer.lastName" type="text"  class="form-control login_text_field_bg input-style" id="lastName" aria-describedby="emailHelp" placeholder="Last name" required="" autofocus="" />
                        </div>
                        <div class="form-group">
                            <label for="username" class="input__label">User name</label>
                            <input name="account.userName" type="text" pattern="[a-zA-Z0-9]{5,}" class="form-control login_text_field_bg input-style" id="username" aria-describedby="emailHelp" placeholder="User name" required="" autofocus="" />
                        </div>
                        <div class="form-group">
                            <label for="email" class="input__label">Email</label>
                            <input name="customer.email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" type="email" class="form-control login_text_field_bg input-style" id="email" aria-describedby="emailHelp" placeholder="Email" required=""/>
                        </div>
                        <div class="form-group">
                            <label for="ccid" class="input__label">CCID</label>
                            <input name="customer.ccid" pattern="[0-9]{9}|[0-9]{12}" title="căng cước công dân 9 hoặc 12 số" type="text" class="form-control login_text_field_bg input-style" id="ccid" aria-describedby="emailHelp" placeholder="CCID" required=""/>
                        </div>

                        <div class="form-group">
                            <label for="birthdate" class="input__label">Birth Date</label>
                            <input name="date"  type="date" class="form-control login_text_field_bg input-style" id="birthdate" aria-describedby="emailHelp" placeholder="BirthDate" required=""/>
                        </div>

                        <div class="form-group">
                            <label for="password" class="input__label">Password</label>
                            <input name="account.pw" pattern="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" type="password" class="form-control login_text_field_bg input-style" id="password" placeholder="Password" required=""/>
                        </div>
                        <div class="form-group">
                            <label for="confirmPw" class="input__label">Confirm Password</label>
                            <input name="account.confirmPw" pattern="" type="password" class="form-control login_text_field_bg input-style" id="confirmPw" placeholder="Confirm Password" required=""/>
                        </div>
                        <div class="form-check check-remember check-me-out" >
                            <input type="checkbox" onclick="enbt(this)" class="form-check-input checkbox" id="exampleCheck1">
                            <label class="form-check-label checkmark" for="exampleCheck1" style="color: #5d6b71">I agree to the
                                <a href="#terms" >Terms of service</a> and <a href="#privacy" style="">Privacy policy</a> </label>
                        </div>
                        <div class="d-flex align-items-center flex-wrap justify-content-between">
                            <button type="submit" class="btn btn-primary btn-style mt-4" disabled>Create Account</button>
                            <p class="signup mt-4">Already have an account? <a href="${pageContext.request.contextPath}/login" class="signuplink">Login </a>
                            </p>
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
<script>
    function enbt(checkbox){
        if($(checkbox).is(":checked")){
            $('button[type="submit"]').removeAttr('disabled');
        }else  $('button[type="submit"]').attr('disabled','disabled');
    }
    function checkpw(){

    }
    var birthdate = $("#birthdate")[0]
    var today = new Date();
    var month = (today.getMonth()+1);
    var date = today.getFullYear() - 18 +'-'+(month> 9 ? month : ("0" + month)) +'-'+today.getDate();
    $("#birthdate").attr("max",date)

    $("#confirmPw").keyup(function (){
        console.log($("#password").val() + " " + $(this).val())
        if ($("#password").val() === $(this).val())
            $(this).removeAttr("pattern")
        else $(this).attr("pattern",'')
    })

</script>
</html>