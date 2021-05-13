<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 10-04-2021
  Time: 2:37 PM
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
<!-- main content start -->
<div class="main-content">

    <!-- content -->
    <div class="container-fluid content-top-gap">

        <nav aria-label="breadcrumb">
            <ol class="breadcrumb my-breadcrumb">
                <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                <li class="breadcrumb-item active" aria-current="page">Dashboard</li>
            </ol>
        </nav>
        <div class="welcome-msg pt-3 pb-4">
            <h1>Hi <span class="text-primary" style="text-transform: capitalize">${pageContext.request.userPrincipal.name}</span>, Welcome back</h1>
            <p>Very detailed & featured admin.</p>
        </div>

        <!-- statistics data -->
        <div class="statistics">
            <div class="row">
                <div class="col-xl-6 pr-xl-2">
                    <div class="row">
                        <div class="col-sm-6 pr-sm-2 statistics-grid">
                            <div class="card card_border border-primary-top p-4">
                                <i class="lnr lnr-users"> </i>
                                <h3 class="text-primary number">${sumCustomer}</h3>
                                <p class="stat-text">Total Customers</p>
                            </div>
                        </div>
                        <div class="col-sm-6 pl-sm-2 statistics-grid">
                            <div class="card card_border border-primary-top p-4">
                                <i class="lnr lnr-users"> </i>
                                <h3 class="text-danger number">${sumEmployee}</h3>
                                <p class="stat-text">Total Employee</p>
                            </div>
                        </div>

                    </div>
                </div>
                <div class="col-xl-6 pl-xl-2">
                    <div class="row">
                        <div class="col-sm-6 pr-sm-2 statistics-grid">
                            <div class="card card_border border-primary-top p-4">
<%--                                //fa fa-newspaper-o--%>
                                <i class="lnr lnr-bookmark"> </i>
                                <h3 class="text-success number">${sumNews}</h3>
                                <p class="stat-text">Total News</p>
                            </div>
                        </div>
                        <div class="col-sm-6 pl-sm-2 statistics-grid">
                            <div class="card card_border border-primary-top p-4">
                                <i class="lnr lnr-eye"> </i>
                                <h3 class="text-secondary number">${sumTour}</h3>
                                <p class="stat-text">Total Tour</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- //statistics data -->

        <!-- charts -->
        <div class="chart">
            <div class="row">
                <div class="col-lg-6 pr-lg-2 chart-grid">
                    <div class="card text-center card_border">
                        <div class="card-header chart-grid__header">
                            Bar Chart
                        </div>
                        <div class="card-body">
                            <!-- bar chart -->
                            <div id="containers">
                                <canvas id="barchart"></canvas>
                            </div>
                            <!-- //bar chart -->
                        </div>
                        <div class="card-footer text-muted chart-grid__footer">
                            Updated 2 hours ago
                        </div>
                    </div>
                </div>
              <%--  <div class="col-lg-6 pl-lg-2 chart-grid">
                    <div class="card text-center card_border">
                        <div class="card-header chart-grid__header">
                            Line Chart
                        </div>
                        <div class="card-body">
                            <!-- line chart -->
                            <div id="container">
                                <canvas id="linechart"></canvas>
                            </div>
                            <!-- //line chart -->
                        </div>
                        <div class="card-footer text-muted chart-grid__footer">
                            Updated just now
                        </div>
                    </div>
                </div>--%>
                <div class="col-lg-6 pr-lg-2 chart-grid">
                    <div class="card text-center card_border">
                        <div class="card-header chart-grid__header">
                            Events Chart
                        </div>
                        <div class="card-body">
                            <!-- bar chart -->
                            <div id="s">
                                <canvas id="eventschart"></canvas>
                            </div>
                            <!-- //bar chart -->
                        </div>
                        <div class="card-footer text-muted chart-grid__footer">
                            Updated 2 hours ago
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- //charts -->

        <!-- charts2 -->
<%--        <div class="chart">--%>
<%--            <div class="row">--%>
<%--                <div class="col-lg-6 pr-lg-2 chart-grid">--%>
<%--                    <div class="card text-center card_border">--%>
<%--                        <div class="card-header chart-grid__header">--%>
<%--                            Events Chart--%>
<%--                        </div>--%>
<%--                        <div class="card-body">--%>
<%--                            <!-- bar chart -->--%>
<%--                            <div id="containerss">--%>
<%--                                <canvas id="eventschart"></canvas>--%>
<%--                            </div>--%>
<%--                            <!-- //bar chart -->--%>
<%--                        </div>--%>
<%--                        <div class="card-footer text-muted chart-grid__footer">--%>
<%--                            Updated 2 hours ago--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            &lt;%&ndash;    <div class="col-lg-6 pl-lg-2 chart-grid">--%>
<%--                    <div class="card text-center card_border">--%>
<%--                        <div class="card-header chart-grid__header">--%>
<%--                            Line Chart--%>
<%--                        </div>--%>
<%--                        <div class="card-body">--%>
<%--                            <!-- line chart -->--%>
<%--                            <div id="container">--%>
<%--                                <canvas id="linechart"></canvas>--%>
<%--                            </div>--%>
<%--                            <!-- //line chart -->--%>
<%--                        </div>--%>
<%--                        <div class="card-footer text-muted chart-grid__footer">--%>
<%--                            Updated just now--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>&ndash;%&gt;--%>
<%--            </div>--%>
<%--        </div>--%>
        <!-- //charts2 -->





    </div>
    <!-- //content -->
</div>
<!-- main content end-->
