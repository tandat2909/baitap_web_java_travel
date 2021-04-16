<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 10-04-2021
  Time: 7:58 PM
  To change this template use File | Settings | File Templates.
--%>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<h1 class="text-center" style="padding: 20px 0;">Thông tin khách hàng</h1>
<form:form modelAttribute="Customer"  class="form-inline" action="/them" method="post">
    <input type="hidden" id="editid">
    <div class="form-group">
        <label class="mr-sm-2">First name:</label>
        <input class="form-control mb-2 mr-sm-2" placeholder="Enter first name" id="fname" name="firstName">
        <label class="mr-sm-2">Last name:</label>
        <input class="form-control mb-2 mr-sm-2" placeholder="Enter last name" id="lname" name="lastName">
        <label for="email" class="mr-sm-2">email:</label>
        <input type="email" class="form-control mb-2 mr-sm-2" placeholder="Enter email" id="email" name="email">
    </div>

    <div class="form-group">
        <label class="mr-sm-2">birthday:</label>
        <input class="form-control mb-2 mr-sm-2" placeholder="birthday" id="bday" name="birthDay">
        <label class="mr-sm-2">ccid:</label>
        <input class="form-control mb-2 mr-sm-2" placeholder="Enter ccid" id="ccid" name="ccid">
        <label for="email" class="mr-sm-2">phone number:</label>
        <input class="form-control mb-2 mr-sm-2" placeholder="Enter phone number" id="pnumber" name="phoneNumber">
    </div>
    <br>


<button type="button" class="btn btn-success" onclick="updateCustomer()">Lưu</button>
<button type="submit" class="btn btn-success">thêm</button>
</form:form>
<table class="table table-bordered" id="example" class="display">
    <thead>
    <tr>
        <th>customerId</th>
        <th>firstName</th>
        <th>lastName</th>
        <th>email</th>
        <th>birthDay</th>
        <th>ccid</th>
        <th>phoneNumber</th>
        <th>xóa</th>
        <th>sửa</th>

<%--        <th>Chức Năng</th>--%>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${customers}" var="cus">
        <tr id="cus${cus.customerId}">
            <td>${cus.customerId}</td>
            <td>${cus.firstName}</td>
            <td>${cus.lastName}</td>
            <td>${cus.email}</td>
            <td>${cus.birthDay}</td>
            <td>${cus.ccid}</td>
            <td>${cus.phoneNumber}</td>
            <td><a href="javascript:;" onclick="deleteCustomer(${cus.customerId})">xóa</a></td>
            <td><a href="javascript:;" onclick="layDL('${cus.customerId}')">sửa</a></td>
        </tr>
    </c:forEach>
    </tbody>
</table>