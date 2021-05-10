<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>
<%--<jsp:useBean id="cha" scope="request" type="com.travels.springmvc.pojo.Comment"/>--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../LibraryJSP.jsp"%>
<style>
    .comment_item {
        margin-top: 20px;
        padding: 0;
        word-wrap: break-word;
    }
    .width_common {
        width: 100%;

    }
    .user_status {
        position: relative;
        float: left;
    }
    .avata_coment {
        margin: 0 10px 0 0;
        float: left;
        width: 36px;
        height: 36px;
        background: #E5E5E5;
        line-height: 36px;
        text-align: center;
        color: #131313 !important;
        font-weight: 700;
        text-transform: uppercase;
        font-size: 18px !important;
        font-family: arial;
        overflow: hidden;
        border-radius: 50%;
    }
    .content-comment {
        padding: 0 0 0 46px;
        margin-top: 0;
    }
    .comment_item p {
        padding-bottom: 0;
        font: 400 15px arial;
        line-height: 150%;
    }
    .comment_item .txt-name {
        color: #04416D;
        margin-right: 5px;
    }
    .comment_item .txt-name .nickname {
        color: #04416D;
    }
    .comment_item .block_like_web {
        float: left;
        text-align: left;
        padding: 0;
        font-size: 13px;
        position: relative;
        margin-top: 10px;
    }
    .comment_item .block_like_web a {
        color: #757575;
        margin-right: 20px;
    }
    .comment_item .block_like_web .time-com {
        font-size: 13px;
        color: #828282;
    }
    .box_comment_vne .sub_comment, #box_comment .sub_comment {
        padding: 0 0 0 56px;
        width: 100%;
        position: relative;
    }
    /*.sub_comment:before, #box_comment .sub_comment:before {*/
    /*    content: '';*/
    /*    background: #E5E5E5;*/
    /*    width: 2px;*/
    /*    height: calc(100% - 20px);*/
    /*    position: absolute;*/
    /*    top: 20px;*/
    /*    left: 46px;*/
    /*}*/
    .box_comment_vne .sub_comment .sub_comment_item, #box_comment .sub_comment .sub_comment_item {
        padding: 0;
        margin-bottom: 0;
        border-top: none;
    }

</style>
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
        <form action="${pageContext.request.contextPath}/comment" method="post" id="comment">
            <textarea style="height: 100px; width: 100%;" name="content"></textarea>
            <input type="hidden" name="newsId" value="${param.get("newId")}"/>
            <button type="submit" class="btn btn-primary btn-style mt-4">Gửi</button>
        </form>
    </div>
    <!--Comment-->
    <div class="container py-xl-5 py-lg-3">

        <c:forEach items="${commentParent}" var="cha">
            <div class="comment_item width_common hight_light_cmt" data-time="1620522933">
            <div class="user_status"><a class="avata_coment" href="javascript:;">${fn:substring(cha.account.userName,0, 1)}</a></div>
            <div class="content-comment">
                <p class="full_content" >
                    <span class="txt-name">
                        <a class="nickname"  title=""><b>${cha.account.userName}</b></a>
                    </span>
                        ${cha.content}
                </p>
                <p class="block_like_web width_common">
                    <a id="" class="link_reply" href="javascript:;" onclick="addComment('${cha.commentId}')">Trả lời</a>
                    <span class="time-com"><fmt:formatDate value='${cha.date_comment}' pattern="dd-MM-yyyy"/></span>
                </p>
                <div class="sub_comment width_common clearfix ml-4" style="border-left-color: white;margin-top: 56px;border-left: 4px solid gray;">
                    <c:forEach items="${cha.comment_parent}" var="con">
                        <div class="sub_comment_item comment_item width_common mt-2 ml-3">
                            <div class="user_status" data-user-type="6">
                                    <%--                        <a class="avata_coment" href="https://my.vnexpress.net/users/feed/1013871031">V--%>
                                    <%--                            <div class="info_avata_cmt">--%>
                                    <%--                                <a href="https://my.vnexpress.net/users/feed/1013871031" class="avata_coment" target="_blank"><img src="https://s1.vnecdn.net/myvne/i/v1/graphics/img_60x60.gif" alt="Đang tải ảnh đại diện">--%>
                                    <%--                                </a>--%>
                                    <%--                                <p>--%>
                                    <%--                                    <a href="https://my.vnexpress.net/users/feed/1013871031" target="_blank"><strong>Viet Dung</strong></a> - <span class="txt_666">42 ý kiến</span>--%>
                                    <%--                                </p>--%>
                                    <%--                                <p>--%>
                                    <%--                                    <a href="https://vnexpress.net/thu-nhap-5-trieu-dong-moi-thang-khien-toi-be-tac-4274892.html?commentid=39787707">Bạn thử nam tiến xem có khá hơn chứ ở thủ đô m không à lương hơn 4 tr sao sống nổi.</a>--%>
                                    <%--                                </p>--%>
                                    <%--                                <p class="txt_666">2 giờ trước</p>--%>
                                    <%--                                <p><strong><a href="https://vnexpress.net/thu-nhap-5-trieu-dong-moi-thang-khien-toi-be-tac-4274892.html?commentid=39787707">Thu nhập 5 triệu đồng mỗi tháng khiến tôi bế tắc</a></strong></p>--%>
                                    <%--                            </div>--%>
                                    <%--                        </a>--%>
                                <a class="avata_coment" href="javascript:;">${fn:substring(con.account.userName,0, 1)}</a>
                            </div>
                            <div class="content-comment">
                                <p class="full_content">
                                    <span class="txt-name">
                                        <a class="nickname" href="" title="Xem trang ý kiến của Viet Dung" target="_blank"><b>${con.account.userName}</b>
                                        </a>
                                    </span>
                                </p>${con.content}
                                <p class="block_like_web width_common" id="${con.commentId}">
                                    <a  class="link_reply"  onclick="addComment('${con.commentId}')">Trả lời</a>
                                    <span class="time-com"><fmt:formatDate value='${cha.date_comment}' pattern="dd-MM-yyyy"/></span>
                                </p>
                            </div>
                        </div>
                    </c:forEach>
                </div>
                <div id="${cha.commentId}"></div>
            </div>


        </c:forEach>
    </div>
</section>

<script>
    var newid = '${param.get('newId')}'
</script>



