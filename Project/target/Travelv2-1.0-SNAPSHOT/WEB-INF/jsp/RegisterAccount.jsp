<%--
  Created by IntelliJ IDEA.
  User: datoa
  Date: 03/04/2021
  Time: 12:26 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
          integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
</head>
<body>



<form:form method="post" action="/Travelv2_war_exploded/register/add" modelAttribute="account">
    <h1 class="text-center "> Đăng ký Tài Khoản</h1>
    <div class="form-group">
        <label for="exampleInputEmail1">Email address</label>

        <form:input path="username" cssClass="form-control"  />
        <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
    </div>
    <div class="form-group">
        <label for="exampleInputPassword1">Password</label>
        <form:input path="pw" type="password" class="form-control"   />
    </div>
    <div class="form-group">
        <label for="exampleInputPassword1">Last Name</label>
        <form:input path="lastName" type="text" class="form-control"   />
    </div>
    <div class="form-group">
        <label for="exampleInputPassword1">First Name</label>
        <form:input path="firstName" type="text" class="form-control"   />
    </div>
    <div class="form-group">
        <label for="exampleInputPassword1">date</label>
        <form:input path="date" type="date" class="form-control"   />
    </div>
    <div class="form-group">
        <label for="exampleInputPassword1">email</label>
        <form:input path="email" type="text" class="form-control"   />
    </div>
    <div class="form-group">
        <label for="exampleInputPassword1">phone Number</label>
        <form:input path="phoneNumber" type="text" class="form-control"   />
    </div>

    <div class="form-group form-check">
        <input type="checkbox" class="form-check-input" id="exampleCheck1">
        <label class="form-check-label" for="exampleCheck1">Check me out</label>
    </div>
    <button type="submit" class="btn btn-primary">Submit</button>

</form:form>

</body>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
        integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
        integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
        crossorigin="anonymous"></script>
</html>
