<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 07-04-2021
  Time: 11:17 AM
  To change this template use File | Settings | File Templates.
--%>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"
           uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring"
           uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="tiles"
           uri="http://tiles.apache.org/tags-tiles" %>
<!-- banner -->
<div class="banner-with-text">
    <div class="container">

        <!-- Slider-starts-Here -->
        <script src="<c:url value="/js1/responsiveslides.min.js" />"></script>
        <script>
            // You can also use "$(window).load(function() {"
            $(function () {
                // Slideshow 4
                $("#slider3").responsiveSlides({
                    auto: true,
                    pager: true,
                    nav: false,
                    speed: 500,
                    namespace: "callbacks",
                    before: function () {
                        $('.events').append("<li>before event fired.</li>");
                    },
                    after: function () {
                        $('.events').append("<li>after event fired.</li>");
                    }
                });

            });
        </script>
        <!--//End-slider-script -->
        <div id="top" class="callbacks_container wow fadeInUp" data-wow-delay="0.5s">
            <ul class="rslides" id="slider3">
                <li>
                    <div class="banner">
                        <div class="jumbotron banner-info">
                            <h1>Sit Voluptatem</h1>
                            <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem
                                accusantium doloremque laudantium, totam rem aperiam, eaque ipsa
                                quae ab illo inventore veritatis et quasi architecto beatae vitae dicta
                                sunt explicabo accusantium doloremque laudantium, totam rem aperiam, eaque ipsa
                                quae ab illo inventore veritatis et quasi architecto beatae.</p>
                            <p><a class="btn btn-primary btn-lg" href="single.html" role="button">READ MORE</a></p>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="banner1">
                        <div class="jumbotron banner-info">
                            <h1>Quasi Architecto Beatae</h1>
                            <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem
                                accusantium doloremque laudantium, totam rem aperiam, eaque ipsa
                                quae ab illo inventore veritatis et quasi architecto beatae vitae dicta
                                sunt explicabo accusantium doloremque laudantium, totam rem aperiam, eaque ipsa
                                quae ab illo inventore veritatis et quasi architecto beatae.</p>
                            <p><a class="btn btn-primary btn-lg" href="single.html" role="button">READ MORE</a></p>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="banner2">
                        <div class="jumbotron banner-info">
                            <h1>Beatae Vitae Dicta</h1>
                            <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem
                                accusantium doloremque laudantium, totam rem aperiam, eaque ipsa
                                quae ab illo inventore veritatis et quasi architecto beatae vitae dicta
                                sunt explicabo accusantium doloremque laudantium, totam rem aperiam, eaque ipsa
                                quae ab illo inventore veritatis et quasi architecto beatae.</p>
                            <p><a class="btn btn-primary btn-lg" href="single.html" role="button">READ MORE</a></p>
                        </div>
                    </div>
                </li>
            </ul>
        </div>
    </div>
</div>
<!-- //banner -->
<!-- banner-bottom -->
<div class="banner-bdy">
    <div class="container">
        <div class="banner-bottom" id="events">
            <div class="banner-bottom-grids">
                <div class="col-md-4 banner-bottom-grid">
                    <img src="<c:url value="/img/Information/6.jpg" />" alt=" "/>
                    <div class="more">
                        <a href="single.html">More</a>
                    </div>
                </div>
                <div class="col-md-4 banner-bottom-grid">
                    <img src="<c:url value="/img/Information/7.jpg" />" alt=" "/>
                    <div class="more">
                        <a href="single.html">More</a>
                    </div>
                </div>
                <div class="col-md-4 banner-bottom-grid">
                    <img src="<c:url value="/img/Information/5.jpg" />" alt=" "/>
                    <div class="more">
                        <a href="single.html">More</a>
                    </div>
                </div>
                <div class="clearfix"></div>
            </div>
            <div class="features">
                <div class="col-md-9 features-left">
                    <h3> Ut enim ad minima veniam, quis nostrum</h3>
                    <div class="features-left-grids">
                        <div class="col-md-4 features-left-grid">
                            <a href="single.html"><img src="<c:url value="/img/Information/1.jpg" />" alt=" "/></a>
                        </div>
                        <div class="col-md-8 jumbotron features-left-grid1">
                            <h4><a href="single.html">Quis autem vel eum minima veniam</a></h4>
                            <p>At vero eos et accusamus et iusto odio dignissimos ducimus
                                qui blanditiis praesentium voluptatum deleniti atque corrupti
                                quos dolores et quas molestias excepturi sint occaecati
                                cupiditate non provident, similique sunt in culpa qui officia
                                deserunt mollitia animi, id est laborum et dolorum fuga.</p>
                            <p><a class="btn read btn-primary btn-lg" href="single.html" role="button">Read More</a></p>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <div class="features-left-grids">
                        <div class="col-md-4 features-left-grid">
                            <a href="single.html"><img src="<c:url value="/img/Information/3.jpg" />" alt=" "/></a>
                        </div>
                        <div class="col-md-8 jumbotron features-left-grid1">
                            <h4><a href="single.html">Quis autem vel eum minima veniam</a></h4>
                            <p>At vero eos et accusamus et iusto odio dignissimos ducimus
                                qui blanditiis praesentium voluptatum deleniti atque corrupti
                                quos dolores et quas molestias excepturi sint occaecati
                                cupiditate non provident, similique sunt in culpa qui officia
                                deserunt mollitia animi, id est laborum et dolorum fuga.</p>
                            <p><a class="btn read btn-primary btn-lg" href="single.html" role="button">Read More</a></p>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>
                <div class="col-md-3 features-right">
                    <div class="features-rgt">
                        <h3>Upcoming Events</h3>
                        <div class="features-rgt-grid">
                            <div class="features-rgt-grid-left">
                                <h4><a href="single.html">Culpa Qui Officia</a></h4>
                                <p>cupiditate non provident</p>
                                <a href="single.html">More Info</a>
                            </div>
                            <div class="features-rgt-grid-right">
                                <p>15th May</p>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <div class="features-rgt-grid">
                            <div class="features-rgt-grid-left">
                                <h4><a href="single.html">Culpa Qui Officia</a></h4>
                                <p>cupiditate non provident</p>
                                <a href="single.html">More Info</a>
                            </div>
                            <div class="features-rgt-grid-right">
                                <p>15th May</p>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <div class="features-rgt-grid">
                            <div class="features-rgt-grid-left">
                                <h4><a href="single.html">Culpa Qui Officia</a></h4>
                                <p>cupiditate non provident</p>
                                <a href="single.html">More Info</a>
                            </div>
                            <div class="features-rgt-grid-right">
                                <p>15th May</p>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <div class="all-events">
                            <a href="single.html">All Events</a>
                        </div>
                    </div>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
    </div>
</div>
<!-- //banner-bottom -->
<!-- slider -->
    <div class="sliderfig">
        <ul id="flexiselDemo1">
            <li>
                <div class="sliderfig-grids">
                    <div class="sliderfig-grid">
                        <img src="<c:url value="/img/Information/4.jpg" />" alt=" "/>
                        <div class="slider-text">
                            <p>Et Quas Molestias Officia</p>
                        </div>
                    </div>
                </div>
            </li>
            <li>
                <div class="sliderfig-grids">
                    <div class="sliderfig-grid">
                        <img src="<c:url value="/img/Information/5.jpg" />" alt=" "/>
                        <div class="slider-text">
                            <p>Et Quas Molestias Officia</p>
                        </div>
                    </div>
                </div>
            </li>
            <li>
                <div class="sliderfig-grids">
                    <div class="sliderfig-grid">
                        <img src="<c:url value="/img/Information/6.jpg" />" alt=" "/>
                        <div class="slider-text">
                            <p>Et Quas Molestias Officia</p>
                        </div>
                    </div>
                </div>
            </li>
            <li>
                <div class="sliderfig-grids">
                    <div class="sliderfig-grid">
                        <img src="<c:url value="/img/Information/7.jpg" />" alt=" "/>
                        <div class="slider-text">
                            <p>Et Quas Molestias Officia</p>
                        </div>
                    </div>
                </div>
            </li>
        </ul>
        <script type="text/javascript">
            $(window).load(function () {
                $("#flexiselDemo1").flexisel({
                    visibleItems: 4,
                    animationSpeed: 1000,
                    autoPlay: true,
                    autoPlaySpeed: 3000,
                    pauseOnHover: true,
                    enableResponsiveBreakpoints: true,
                    responsiveBreakpoints: {
                        portrait: {
                            changePoint: 480,
                            visibleItems: 2
                        },
                        landscape: {
                            changePoint: 640,
                            visibleItems: 3
                        },
                        tablet: {
                            changePoint: 768,
                            visibleItems: 3
                        }
                    }
                });

            });
        </script>
        <script type="text/javascript" src="<c:url value="/js1/jquery.flexisel.js" />"></script>
    </div>
    </div>
    </div>
<!-- //slider -->
<script type="text/javascript">
    $(document).ready(function () {
        /*
            var defaults = {
            containerID: 'toTop', // fading element id
            containerHoverID: 'toTopHover', // fading element hover id
            scrollSpeed: 1200,
            easingType: 'linear'
            };
        */

        $().UItoTop({easingType: 'easeOutQuart'});

    });
</script>