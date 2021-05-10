<%--
  Created by IntelliJ IDEA.
  User: datoa
  Date: 10/05/2021
  Time: 3:20 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="LibraryJSP.jsp"%>

<c:if test="${messges != null}">
    <div class="alert alert-${messges[0] == 'error'?'danger':messges[0]} alert-dismissible  fade show text-center"
         style="position: absolute; right:0px; width: 30% ; z-index: 4" role="alert">
            ${messges[1]}
        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">&times;</span>
        </button>
    </div>
</c:if>