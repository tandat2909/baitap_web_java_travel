<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 11-04-2021
  Time: 12:24 PM
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
<section class="banner_inner" id="home">
    <div class="banner_inner_overlay">
    </div>
</section>
<!-- //banner -->


<!-- Contact -->
<section class="contact py-5">
    <div class="container py-lg-5 py-sm-3">
        <h2 class="heading text-capitalize text-center mb-sm-5 mb-4"> Get In Touch with us</h2>
        <ul class="list-unstyled row text-center mt-lg-5 mt-4 px-lg-5">
            <li class="col-md-4 col-sm-6 adress-w3pvt-info">
                <div class=" adress-icon">
                    <span class="fa fa-map-marker"></span>
                </div>

                <h6>Location</h6>
                <p>The company name
                    <br>Addison Township, IL, USA. </p>
            </li>

            <li class="col-md-4 col-sm-6 adress-w3pvt-info mt-sm-0 mt-4">
                <div class="adress-icon">
                    <span class="fa fa-envelope-open-o"></span>
                </div>
                <h6>Phone & Email</h6>
                <p>+(122) 123 456 7890</p>
                <a href="mailto:info@example.com" class="mail">info@examplemail.com</a>
            </li>
            <li class="col-md-4 col-sm-6 adress-w3pvt-info mt-md-0 mt-4">

                <div class="adress-icon">
                    <span class="fa fa-comments-o"></span>
                </div>

                <h6>Stay In Touch</h6>
                <ul class="social_section_1info mt-2">
                    <li class="mb-2 facebook"><a href="#"><span class="fa fa-facebook"></span></a></li>
                    <li class="mb-2 twitter"><a href="#"><span class="fa fa-twitter"></span></a></li>
                    <li class="google"><a href="#"><span class="fa fa-google-plus"></span></a></li>
                    <li class="linkedin"><a href="#"><span class="fa fa-linkedin"></span></a></li>
                </ul>
            </li>
        </ul>

        <div class="contact-grids mt-5">
            <div class="row">
                <div class="col-lg-6 col-md-6 contact-left-form">
                    <form action="#" method="post">
                        <div class=" form-group contact-forms">
                            <input type="text" class="form-control" placeholder="Name" required="">
                        </div>
                        <div class="form-group contact-forms">
                            <input type="email" class="form-control" placeholder="Email" required="">
                        </div>
                        <div class="form-group contact-forms">
                            <input type="text" class="form-control" placeholder="Phone" required="">
                        </div>
                        <div class="form-group contact-forms">
                            <textarea class="form-control" placeholder="Message" rows="3" required=""></textarea>
                        </div>
                        <button class="btn btn-block sent-butnn">Send</button>
                    </form>
                </div>
                <div class="col-lg-6 col-md-6 contact-right pl-lg-5">
                    <h4>Do you have any questions about us? write to us.</h4>
                    <p class="mt-md-4 mt-2">Duis nisi sapien, elementum finibus fermentum eget, aliquet et leo. Mauris hendrerit vel ex.
                        Quisque vitae luctus massa. Phas ellus sed aliquam leo. Vestibulum ullamcorper massa eut sed fringilla. Integer ultrices finibus sed nisi.
                        in convallis felis da bus sit amet  aliquet et leo dolor sit amet aliquet.</p>
                    <h5 class="mt-lg-5 mt-3">Office Hours</h5>
                    <p class="mt-3">Monday to Friday : 09 am to 06 pm</p>
                    <p>Saturday and Sunay : 10 am to 04 pm</p>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- //Contact -->

<!-- map -->
<div class="map p-2">
    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d158857.728106568!2d-0.24168153701090248!3d51.52877184090542!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47d8a00baf21de75%3A0x52963a5addd52a99!2sLondon%2C+UK!5e0!3m2!1sen!2sin!4v1544074523717"></iframe>
</div>
<!-- //map -->
