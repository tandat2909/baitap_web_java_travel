<%--
  Created by IntelliJ IDEA.
  User: datoa
  Date: 15/04/2021
  Time: 9:21 SA
  To change this template use File | Settings | File Templates.
--%>

<%@include file="../LibraryJSP.jsp" %>

<!-- banner -->
<section class="banner_inner" id="home">
    <div class="banner_inner_overlay">
    </div>
</section>
<!-- //banner -->
<section class="about py-5">
    <div class="container py-lg-5 py-sm-4">
        <div class="row">
            <div class="col">
                ${tour.tourdetail.contents}
            </div>
        </div>
    </div>
</section>