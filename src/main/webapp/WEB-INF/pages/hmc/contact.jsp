<%@ page language="java" contentType="text/html; charset=utf8"
         pageEncoding="utf8" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"><html>
<html lang="en">
<head>
    <!-- Meta -->
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">

    <title>HMC. Contact</title>

    <!-- Bootstrap Core CSS -->
    <link rel="stylesheet" href="/resources/css/bootstrap.min.css" type="text/css" media="screen"/>

    <!-- Customizable CSS -->
    <link rel="stylesheet" href="/resources/css/main.css" type="text/css" media="screen"/>
    <link rel="stylesheet" href="/resources/css/green.css" type="text/css" media="screen"/>
    <link rel="stylesheet" href="/resources/css/owl.carousel.css" type="text/css" media="screen"/>
    <link rel="stylesheet" href="/resources/css/owl.transitions.css" type="text/css" media="screen"/>
    <link rel="stylesheet" href="/resources/css/animate.min.css" type="text/css" media="screen"/>

    <!-- Fonts -->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800' rel='stylesheet' type='text/css'>

    <!-- Icons/Glyphs -->
    <link rel="stylesheet" href="/resources/css/font-awesome.min.css" type="text/css" media="screen"/>

    <!-- Favicon -->
    <link rel="shortcut icon" href="/resources/images/favicon.ico">
</head>
<body>

<div class="wrapper">
<%@include file="header.jsp" %>
<main id="contact-us" class="inner-bottom-md">
    <section class="google-map map-holder">
        <div id="map" class="map center"></div>
        <form role="form" class="get-direction">
            <div class="container">
                <div class="row">
                    <div class="center-block col-lg-10">
                        <div class="input-group">
                            <input type="text" class="le-input input-lg form-control" placeholder="Enter Your Starting Point">
                            <span class="input-group-btn">
                                <button class="btn btn-lg le-button" type="button">Get Directions</button>
                            </span>
                        </div><!-- /input-group -->
                    </div><!-- /.col-lg-6 -->
                </div><!-- /.row -->
            </div>
        </form>
    </section>

    <div class="container">
        <div class="row">
            
            <div class="col-md-8">
                <section class="section leave-a-message">
                    <h2 class="bordered">Leave a Message</h2>
                    <p>Maecenas dolor elit, semper a sem sed, pulvinar molestie lacus. Aliquam dignissim, elit non mattis ultrices, neque odio ultricies tellus, eu porttitor nisl ipsum eu massa.</p>
                    <form id="contact-form" class="contact-form cf-style-1 inner-top-xs" method="post" >
                        <div class="row field-row">
                            <div class="col-xs-12 col-sm-6">
                                <label>Your Name*</label>
                                <input class="le-input" >
                            </div>
                            <div class="col-xs-12 col-sm-6">
                                <label>Your Email*</label>
                                <input class="le-input" >
                            </div>
                        </div><!-- /.field-row -->
                        
                        <div class="field-row">
                            <label>Subject</label>
                            <input type="text" class="le-input">
                        </div><!-- /.field-row -->

                        <div class="field-row">
                            <label>Your Message</label>
                            <textarea rows="8" class="le-input"></textarea>
                        </div><!-- /.field-row -->

                        <div class="buttons-holder">
                            <button type="submit" class="le-button huge">Send Message</button>
                        </div><!-- /.buttons-holder -->
                    </form><!-- /.contact-form -->
                </section><!-- /.leave-a-message -->
            </div><!-- /.col -->

            <div class="col-md-4">
                <section class="our-store section inner-left-xs">
                    <h2 class="bordered">Our Store</h2>
                    <address>
                        17 Princess Road <br/>
                        London, Greater London <br/>
                        NW1 8JR, UK
                    </address>
                    <h3>Hours of Operation</h3>
                    <ul class="list-unstyled operation-hours">
                        <li class="clearfix">
                            <span class="day">Monday:</span>
                            <span class="pull-right hours">12-6 PM</span>
                        </li>
                        <li class="clearfix">
                            <span class="day">Tuesday:</span>
                            <span class="pull-right hours">12-6 PM</span>
                        </li>
                        <li class="clearfix">
                            <span class="day">Wednesday:</span>
                            <span class="pull-right hours">12-6 PM</span>
                        </li>
                        <li class="clearfix">
                            <span class="day">Thursday:</span>
                            <span class="pull-right hours">12-6 PM</span>
                        </li>
                        <li class="clearfix">
                            <span class="day">Friday:</span>
                            <span class="pull-right hours">12-6 PM</span>
                        </li>
                        <li class="clearfix">
                            <span class="day">Saturday:</span>
                            <span class="pull-right hours">12-6 PM</span>
                        </li>
                        <li class="clearfix">
                            <span class="day">Sunday</span>
                            <span class="pull-right hours">Closed</span>
                        </li>
                    </ul>
                    <h3>Career</h3>
                    <p>If you're interested in employment opportunities at MediaCenter, please email us: <a href="mailto:contact@yourstore.com">contact@yourstore.com</a></p>
                </section><!-- /.our-store -->
            </div><!-- /.col -->

        </div><!-- /.row -->
    </div><!-- /.container -->
</main>
    <!-- ================================================= FOOTER ========================================== -->
    <%@include file="footer.jsp" %>
    <!-- ============================================================= FOOTER : END ============================================================= -->
</div>
<!-- /.wrapper -->

<!-- JavaScripts placed at the end of the document so the pages load faster -->
<script src="/resources/js/jquery-1.10.2.min.js"></script>
<script src="/resources/js/jquery-migrate-1.2.1.js"></script>
<script src="/resources/js/bootstrap.min.js"></script>
<script src="http://maps.google.com/maps/api/js?sensor=false&amp;language=en"></script>
<script src="/resources/js/gmap3.min.js"></script>
<script src="/resources/js/bootstrap-hover-dropdown.min.js"></script>
<script src="/resources/js/owl.carousel.min.js"></script>
<script src="/resources/js/css_browser_selector.min.js"></script>
<script src="/resources/js/echo.min.js"></script>
<script src="/resources/js/jquery.easing-1.3.min.js"></script>
<script src="/resources/js/bootstrap-slider.min.js"></script>
<script src="/resources/js/jquery.raty.min.js"></script>
<script src="/resources/js/jquery.prettyPhoto.min.js"></script>
<script src="/resources/js/jquery.customSelect.min.js"></script>
<script src="/resources/js/wow.min.js"></script>
<script src="/resources/js/scripts.js"></script>
<script src="http://w.sharethis.com/button/buttons.js"></script>
<script src="/resources/js/comparison,wishlist,cart.jsp"></script>

</body>
</html>