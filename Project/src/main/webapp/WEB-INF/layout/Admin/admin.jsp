<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 10-04-2021
  Time: 1:20 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"
           uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring"
           uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="tiles"
           uri="http://tiles.apache.org/tags-tiles" %>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title><tiles:insertAttribute name="title"/></title>

    <!-- Template CSS -->
    <link rel="stylesheet" href="<c:url value="/admin/css/style-starter.css"/>">

    <!-- google fonts -->
    <link href="http://fonts.googleapis.com/css?family=Nunito:300,400,600,700,800,900&display=swap" rel="stylesheet">
</head>
<body>
    <div class="se-pre-con"></div>
    <section>
    <!-- sidebar menu start -->
    <div class="sidebar-menu sticky-sidebar-menu">

        <!-- logo start -->
        <div class="logo">
            <h1><a href="index.html">Collective</a></h1>
        </div>

        <!-- if logo is image enable this -->
        <!-- image logo
        <div class="logo">
          <a href="index.html">
            <img src="image-path" alt="Your logo" title="Your logo" class="img-fluid" style="height:35px;" />
          </a>
        </div>
       //image logo

        <div class="logo-icon text-center">
            <a href="index.html" title="logo"><img src="assets/images/logo.png" alt="logo-icon"> </a>
        </div>-->
        <!-- //logo end -->

        <div class="sidebar-menu-inner">

            <!-- sidebar nav start -->
            <ul class="nav nav-pills nav-stacked custom-nav">
                <li class="active"><a href="index.html"><i class="fa fa-tachometer"></i><span> Dashboard</span></a>
                </li>
                <li class="menu-list">
                    <a href="#"><i class="fa fa-cogs"></i>
                        <span>Elements <i class="lnr lnr-chevron-right"></i></span></a>
                    <ul class="sub-menu-list">
                        <li><a href="carousels.html">Carousels</a> </li>
                        <li><a href="cards.html">Default cards</a> </li>
                        <li><a href="people.html">People cards</a></li>
                    </ul>
                </li>
                <li><a href="pricing.html"><i class="fa fa-table"></i> <span>Pricing tables</span></a></li>
                <li><a href="blocks.html"><i class="fa fa-th"></i> <span>Content blocks</span></a></li>
                <li><a href="forms.html"><i class="fa fa-file-text"></i> <span>Forms</span></a></li>
            </ul>
            <!-- //sidebar nav end -->
            <!-- toggle button start -->
            <a class="toggle-btn">
                <i class="fa fa-angle-double-left menu-collapsed__left"><span>Collapse Sidebar</span></i>
                <i class="fa fa-angle-double-right menu-collapsed__right"></i>
            </a>
            <!-- //toggle button end -->
        </div>
    </div>
    <!-- //sidebar menu end -->
        <tiles:insertAttribute name="adminHeader" />
        <tiles:insertAttribute name="adminContent" />
</section>
    <tiles:insertAttribute name="adminFooter" />

    <!-- move top -->
    <button onclick="topFunction()" id="movetop" class="bg-primary" title="Go to top">
        <span class="fa fa-angle-up"></span>
    </button>
    <script>
        // When the user scrolls down 20px from the top of the document, show the button
        window.onscroll = function () {
            scrollFunction()
        };

        function scrollFunction() {
            if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
                document.getElementById("movetop").style.display = "block";
            } else {
                document.getElementById("movetop").style.display = "none";
            }
        }

        // When the user clicks on the button, scroll to the top of the document
        function topFunction() {
            document.body.scrollTop = 0;
            document.documentElement.scrollTop = 0;
        }
    </script>
    <!-- /move top -->


    <script src="<c:url value="/admin/js/jquery-3.3.1.min.js"/>"></script>
    <script src="<c:url value="/admin/js/jquery-1.10.2.min.js"/>"></script>

    <!-- chart js -->
    <script src="<c:url value="/admin/js/Chart.min.js"/>"></script>
    <script src="<c:url value="/admin/js/utils.js"/>"></script>
    <!-- //chart js -->

    <!-- Different scripts of charts.  Ex.Barchart, Linechart -->
    <script src="<c:url value="/admin/js/bar.js"/>"></script>
    <script src="<c:url value="/admin/js/linechart.js"/>"></script>
    <!-- //Different scripts of charts.  Ex.Barchart, Linechart -->


    <script src="<c:url value="/admin/js/jquery.nicescroll.js"/>"></script>
    <script src="<c:url value="/admin/js/scripts.js"/>"></script>

    <!-- close script -->
    <script>
        var closebtns = document.getElementsByClassName("close-grid");
        var i;

        for (i = 0; i < closebtns.length; i++) {
            closebtns[i].addEventListener("click", function () {
                this.parentElement.style.display = 'none';
            });
        }
    </script>
    <!-- //close script -->

    <!-- disable body scroll when navbar is in active -->
    <script>
        $(function () {
            $('.sidebar-menu-collapsed').click(function () {
                $('body').toggleClass('noscroll');
            })
        });
    </script>
    <!-- disable body scroll when navbar is in active -->

    <!-- loading-gif Js -->
    <script src="<c:url value="/admin/js/modernizr.js"/>"></script>
    <script>
        $(window).load(function () {
            // Animate loader off screen
            $(".se-pre-con").fadeOut("slow");;
        });
    </script>
    <!--// loading-gif Js -->

    <!-- Bootstrap Core JavaScript -->
    <script src="<c:url value="/admin/js/bootstrap.min.js"/>"></script>
</body>

</html>
