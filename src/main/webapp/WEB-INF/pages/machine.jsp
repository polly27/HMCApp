<%@ page language="java" contentType="text/html; charset=utf8"
         pageEncoding="utf8" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"><html>
<html lang="en">
<head>
    <!-- Meta -->
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">

    <title>HMC</title>

    <!-- Bootstrap Core CSS -->
    <link rel="stylesheet" href="resources/css/bootstrap.min.css">

    <!-- Customizable CSS -->
    <link rel="stylesheet" href="resources/css/main.css">
    <link rel="stylesheet" href="resources/css/green.css">
    <link rel="stylesheet" href="resources/css/owl.carousel.css">
    <link rel="stylesheet" href="resources/css/owl.transitions.css">
    <link rel="stylesheet" href="resources/css/animate.min.css">

    <!-- Fonts -->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800' rel='stylesheet' type='text/css'>

    <!-- Icons/Glyphs -->
    <link rel="stylesheet" href="resources/css/font-awesome.min.css">

    <!-- Favicon -->
    <link rel="shortcut icon" href="resources/images/favicon.ico">

</head>
<body>

<div class="wrapper">
<!-- ============================================== TOP NAVIGATION ======================================= -->
<nav class="top-bar animate-dropdown">
    <div class="container">
        <div class="col-xs-12 col-sm-6 no-margin">
            <ul>
                <li><a href="list">Home</a></li>
                <li><a href="#">Contact</a></li>
            </ul>
        </div>

        <div class="col-xs-12 col-sm-6 no-margin">
            <ul class="right">
                <li><a href="authentication.html">Register</a></li>
                <li><a href="authentication.html">Login</a></li>
            </ul>
        </div>
    </div>
</nav>
<!-- ================================================ TOP NAVIGATION : END ========================================= -->

<!-- ================================================ HEADER ======================================================= -->
<%@include file="header.jsp" %>
<!-- =============================================== HEADER : END ================================================ -->
<br>
<div id="single-product">
    <div class="container">

        <div class="no-margin col-xs-12 col-sm-6 col-md-5 gallery-holder">
            <div class="product-item-holder size-big single-product-gallery small-gallery">

                <div id="owl-single-product">
                    <div class="single-product-gallery-item" id="slide1">
                        <a data-rel="prettyphoto" href="resources/images/products/${machine.photo1}">
                            <img class="img-responsive" alt="" src="resources/images/blank.gif"
                                 data-echo="resources/images/products/${machine.photo1}" />
                        </a>
                    </div><!-- /.single-product-gallery-item -->

                    <div class="single-product-gallery-item" id="slide2">
                        <a data-rel="prettyphoto" href="resources/images/products/${machine.photo2}">
                            <img class="img-responsive" alt="" src="resources/images/blank.gif"
                                 data-echo="resources/images/products/${machine.photo2}" />
                        </a>
                    </div><!-- /.single-product-gallery-item -->

                    <div class="single-product-gallery-item" id="slide3">
                        <a data-rel="prettyphoto" href="resources/images/products/${machine.photo3}">
                            <img class="img-responsive" alt="" src="resources/images/blank.gif"
                                 data-echo="resources/images/products/${machine.photo3}" />
                        </a>
                    </div><!-- /.single-product-gallery-item -->
                </div><!-- /.single-product-slider -->

                <div class="single-product-gallery-thumbs gallery-thumbs">

                    <div id="owl-single-product-thumbnails">
                        <a class="horizontal-thumb active" data-target="#owl-single-product" data-slide="0" href="#slide1">
                            <img width="67" alt="" src="resources/images/blank.gif" data-echo="resources/images/products/${machine.photo1}" />
                        </a>

                        <a class="horizontal-thumb" data-target="#owl-single-product" data-slide="1" href="#slide2">
                            <img width="67" alt="" src="resources/images/blank.gif" data-echo="resources/images/products/${machine.photo2}" />
                        </a>

                        <a class="horizontal-thumb" data-target="#owl-single-product" data-slide="2" href="#slide3">
                            <img width="67" alt="" src="resources/images/blank.gif" data-echo="resources/images/products/${machine.photo3}" />
                        </a>
                    </div><!-- /#owl-single-product-thumbnails -->

                </div><!-- /.gallery-thumbs -->

            </div><!-- /.single-product-gallery -->
        </div><!-- /.gallery-holder -->

        <div class="no-margin col-xs-12 col-sm-7 body-holder">
            <div class="body">
                <div class="title"><a href="#">${machine.type} - ${machine.model}</a></div>
                <div class="brand">${machine.producer}</div>

                <div class="buttons-holder">
                    <a class="btn-add-to-wishlist" href="#">add to wishlist</a>
                    <span class="btn-add-to-compare" onclick="addToComparison('${machine.productId}')">add to comparison</span>
                </div>

                <div class="excerpt">
                    <p>${machine.description}</p>
                </div>

                <div class="prices">
                    <div class="price-current">$${machine.cost}.00</div>
                </div>

                <div class="qnt-holder">
                    <a id="addto-cart" href="cart.html" class="le-button huge">add to cart</a>
                </div>
            </div>

        </div>
    </div>
</div>

<!-- ========================================= SINGLE PRODUCT TAB ========================================= -->
<section id="single-product-tab">
    <div class="container">
        <div class="tab-holder">

            <ul class="nav nav-tabs simple">
                <li class="active"><a href="#description" data-toggle="tab">Description</a></li>
                <li><a href="#additional-info" data-toggle="tab">Additional Information</a></li>
            </ul>

            <div class="tab-content">
                <div class="tab-pane active" id="description">
                    <p>${machine.fullDescription}</p>

                    <div class="meta-row">
                        <div class="inline">
                            <label>Product id:</label>
                            <span>${machine.productId}</span>
                        </div>
                    </div>
                </div>

                <div class="tab-pane" id="additional-info">
                    <ul class="tabled-data">
                        <li>
                            <label>Type</label>

                            <div class="value">${machine.type}</div>
                        </li>
                        <li>
                            <label>Model</label>

                            <div class="value">${machine.model}</div>
                        </li>
                        <li>
                            <label>Brand</label>

                            <div class="value">${machine.producer}</div>
                        </li>
                        <li>
                            <label>Producing country</label>

                            <div class="value">${machine.producingCountry}</div>
                        </li>
                        <li>
                            <label>Full system CNC</label>

                            <div class="value">${machine.fullSystemCNC}</div>
                        </li>
                        <li>
                            <label>Year</label>

                            <div class="value">${machine.year}</div>
                        </li>
                        <li>
                            <label>Machine location</label>

                            <div class="value">${machine.machineLocation}</div>
                        </li>
                        <li>
                            <label>Axis count</label>

                            <div class="value">${machine.axisCount}</div>
                        </li>
                        <li>
                            <label>X&timesY&timesZ-motion, mm</label>

                            <div class="value">${machine.xMotion}&times${machine.yMotion}&times${machine.zMotion}</div>
                        </li>
                        <li>
                            <label>X&timesY table sizes, mm</label>

                            <div class="value">${machine.xTableSize}&times${machine.yTableSize}</div>
                        </li>
                        <li>
                            <label>Table load, kg</label>

                            <div class="value">${machine.tableLoad}</div>
                        </li>
                        <li>
                            <label>Spindle taper</label>

                            <div class="value">${machine.spindleTaper}</div>
                        </li>
                        <li>
                            <label>Spindle rotation frequency, rev/min</label>

                            <div class="value">${machine.spindleRotationFreq}</div>
                        </li>
                        <li>
                            <label>Spindle power, kw</label>

                            <div class="value">${machine.spindlePower}</div>
                        </li>
                        <li>
                            <label>Spindle max torque</label>

                            <div class="value">${machine.spindleMaxTorque}</div>
                        </li>
                        <li>
                            <label>Spindle type</label>

                            <div class="value">${machine.spindleType}</div>
                        </li>
                        <li>
                            <label>Spindle cooling method</label>

                            <div class="value">${machine.spindleCoolingMethod}</div>
                        </li>
                        <li>
                            <label>Store type</label>

                            <div class="value">${machine.storeType}</div>
                        </li>
                        <li>
                            <label>Tool count, pcs.</label>

                            <div class="value">${machine.toolCount}</div>
                        </li>
                        <li>
                            <label>Max tool diameter, mm</label>

                            <div class="value">${machine.maxToolDiameter}</div>
                        </li>
                        <li>
                            <label>Max tool weight, kg</label>

                            <div class="value">${machine.maxToolWeight}</div>
                        </li>
                        <li>
                            <label>Tool replacement time, sec</label>

                            <div class="value">${machine.toolReplacementTime}</div>
                        </li>
                        <li>
                            <label>Position precision, mm</label>

                            <div class="value">${machine.positionPrecision}</div>
                        </li>
                        <li>
                            <label>Reposition precision, mm</label>

                            <div class="value">${machine.repositionPrecision}</div>
                        </li>
                        <li>
                            <label>Spindle runtime, h</label>

                            <div class="value">${machine.spindleRuntime}</div>
                        </li>
                        <li>
                            <label>Machine launching, h</label>

                            <div class="value">${machine.machineLaunching}</div>
                        </li>
                        <li>
                            <label>Equipment</label>

                            <div class="value">${machine.equipment}</div>
                        </li>

                        <li>
                            <label>Condition</label>

                            <div class="value">${machine.condition}</div>
                        </li>
                    </ul>

                    <div class="meta-row">
                        <div class="inline">
                            <label>Product id:</label>
                            <span>${machine.productId}</span>
                        </div>
                    </div>
                </div>

            </div>
            <!-- /.tab-content -->

        </div>
        <!-- /.tab-holder -->
    </div>
    <!-- /.container -->
</section>
<!-- /#single-product-tab -->
<!-- ================================ SINGLE PRODUCT TAB : END ========================================= -->
<!-- ================================================= FOOTER ========================================== -->
<%@include file="footer.jsp" %>
<!-- ============================================================= FOOTER : END ============================================================= -->
</div>
<!-- /.wrapper -->

<!-- JavaScripts placed at the end of the document so the pages load faster -->
<script src="resources/js/jquery-1.10.2.min.js"></script>
<script src="resources/js/jquery-migrate-1.2.1.js"></script>
<script src="resources/js/bootstrap.min.js"></script>
<script src="http://maps.google.com/maps/api/js?sensor=false&amp;language=en"></script>
<script src="resources/js/gmap3.min.js"></script>
<script src="resources/js/bootstrap-hover-dropdown.min.js"></script>
<script src="resources/js/owl.carousel.min.js"></script>
<script src="resources/js/css_browser_selector.min.js"></script>
<script src="resources/js/echo.min.js"></script>
<script src="resources/js/jquery.easing-1.3.min.js"></script>
<script src="resources/js/bootstrap-slider.min.js"></script>
<script src="resources/js/jquery.raty.min.js"></script>
<script src="resources/js/jquery.prettyPhoto.min.js"></script>
<script src="resources/js/jquery.customSelect.min.js"></script>
<script src="resources/js/wow.min.js"></script>
<script src="resources/js/scripts.js"></script>
<script src="http://w.sharethis.com/button/buttons.js"></script>
<script src="resources/js/actions-list.jsp"></script>

</body>
</html>