<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 07-04-2021
  Time: 10:22 AM
  To change this template use File | Settings | File Templates.
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- header -->
<div class="header">
    <div class="header-top">
        <input type="text" placeholder="Search" required=" ">
    </div>
    <div class="clearfix"> </div>
    <div class="header-bottom">
        <div class="header-bottom-left">
            <a href="index.html">Eco<span>travel</span></a>
        </div>
        <div class="header-bottom-right">
            <span class="menu">MENU</span>
            <ul class="nav1">
                <li class="cap"><a href="index.html">HOME</a></li>
                <li><a href="about.html">ABOUT</a></li>
                <li><a href="events.html">EVENTS</a></li>
                <li><a href="services.html">SERVICES</a></li>
                <li><a href="gallery.html">GALLERIES</a></li>
                <li><a href="blog.html">BLOG</a></li>
                <li><a href="contact.html">CONTACT</a></li>
            </ul>
            <!-- script for menu -->
            <script>
                $( "span.menu" ).click(function() {
                    $( "ul.nav1" ).slideToggle( 300, function() {
                        // Animation complete.
                    });
                });
            </script>
            <!-- //script for menu -->
        </div>
        <div class="clearfix"> </div>
    </div>
</div>
<!-- //header -->

