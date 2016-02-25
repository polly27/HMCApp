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
                <li><a href="#contacts">Contact</a></li>
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
<header class="no-padding-bottom header-alt">
    <div class="container no-padding">

        <div class="row">

            <div class="col-xs-5 col-sm-5 col-md-5 col-lg-5 logo-holder">
                <div class="logo">
                    <a href="list">
                        <img alt="logo" src="resources/images/logo.png" class="img-responsive"/>
                    </a>
                </div>
            </div>

            <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4 col-lg-offset-3 col-md-offset-3 col-sm-offset-3 col-xs-offset-3 top-search-holder">
                <div class="row">
                    <div class="col-xs-12 col-md-12">

                        <div class="contact-row">
                            <div class="phone inline">
                                <i class="fa fa-phone"></i> +375 29 255-88-88
                            </div>
                            <div class="contact inline">
                                <i class="fa fa-envelope"></i><span class="le-color">MachineCenters@gmail.com</span>
                            </div>
                        </div>

                    </div>

                    <div class="col-xs-12 col-md-12  top-cart-row">

                        <div class="top-cart-row-container">
                            <div class="wishlist-compare-holder">
                                <div class="wishlist ">
                                    <a href="#"><i class="fa fa-heart"></i> wishlist <span class="value">(21)</span>
                                    </a>
                                </div>
                                <div class="compare">
                                    <a href="#"><i class="fa fa-exchange"></i> compare <span class="value">(2)</span>
                                    </a>
                                </div>
                            </div>

                            <!-- ============================================== SHOPPING CART DROPDOWN =========================================== -->
                            <div class="top-cart-holder dropdown animate-dropdown">

                                <div class="basket">

                                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                                        <div class="basket-item-count">
                                            <span class="count">3</span>
                                            <img src="resources/images/icon-cart.png" alt=""/>
                                        </div>

                                        <div class="total-price-basket">
                                            <span class="lbl">your cart:</span>
                    <span class="total-price">
                        <span class="sign">$</span><span class="value">3219,00</span>
                    </span>
                                        </div>
                                    </a>

                                    <ul class="dropdown-menu">
                                        <li>
                                            <div class="basket-item">
                                                <div class="row">
                                                    <div class="col-xs-4 col-sm-4 no-margin text-center">
                                                        <div class="thumb">
                                                            <img alt=""
                                                                 src="resources/images/products/product-small-01.jpg"/>
                                                        </div>
                                                    </div>
                                                    <div class="col-xs-8 col-sm-8 no-margin">
                                                        <div class="title">Blueberry</div>
                                                        <div class="price">$270.00</div>
                                                    </div>
                                                </div>
                                                <a class="close-btn" href="#"></a>
                                            </div>
                                        </li>

                                        <li class="checkout">
                                            <div class="basket-item">
                                                <div class="row">
                                                    <div class="col-xs-12 col-sm-6">
                                                        <a href="cart.html" class="le-button inverse">View cart</a>
                                                    </div>
                                                    <div class="col-xs-12 col-sm-6">
                                                        <a href="checkout.html" class="le-button">Checkout</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>

                                    </ul>

                                </div>
                                <!-- /.basket -->
                            </div>
                            <!-- /.top-cart-holder -->
                        </div>
                        <!-- /.top-cart-row-container -->
                        <!-- ========================================== SHOPPING CART DROPDOWN : END ============================================ -->


                    </div>


                </div>
                <!-- /.top-cart-row -->
            </div>
        </div>
        <!-- /.container -->
    </div>


</header>
<!-- =============================================== HEADER : END ================================================ -->
<br>
<hr>
<hr>
<br>

<div id="single-product">
    <div class="container">

        <div class="no-margin col-xs-12 col-sm-6 col-md-5 gallery-holder">
            <div class="product-item-holder size-big single-product-gallery small-gallery">

                <div id="owl-single-product">
                    <div class="single-product-gallery-item" id="slide1">
                        <a data-rel="prettyphoto" href="resources/images/products/example.jpg">
                            <img class="img-responsive" src="resources/images/blank.gif"
                                 data-echo="resources/images/products/example.jpg"/>
                        </a>
                    </div>
                </div>

                <div class="single-product-gallery-thumbs gallery-thumbs">

                    <div id="owl-single-product-thumbnails">
                        <a class="horizontal-thumb active" data-target="#owl-single-product" data-slide="0"
                           href="#slide1">
                            <img width="67" alt="" src="resources/images/blank.gif"
                                 data-echo="resources/images/products/example.jpg"/>
                        </a>

                        <a class="horizontal-thumb" data-target="#owl-single-product" data-slide="1" href="#slide2">
                            <img width="67" alt="" src="resources/images/blank.gif"
                                 data-echo="resources/images/products/example.jpg"/>
                        </a>

                        <a class="horizontal-thumb" data-target="#owl-single-product" data-slide="2" href="#slide3">
                            <img width="67" alt="" src="resources/images/blank.gif"
                                 data-echo="resources/images/products/example.jpg"/>
                        </a>
                    </div>
                </div>

            </div>
        </div>

        <div class="no-margin col-xs-12 col-sm-7 body-holder">
            <div class="body">
                <div class="title"><a href="#">${machine.type} - ${machine.model}</a></div>
                <div class="brand">${machine.producer}</div>

                <div class="buttons-holder">
                    <a class="btn-add-to-wishlist" href="#">add to wishlist</a>
                    <a class="btn-add-to-compare" href="#">add to compare list</a>
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
                            <label>System CNC</label>

                            <div class="value">${machine.systemCNC}</div>
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
                            <label>X-motion</label>

                            <div class="value">${machine.xMotion}</div>
                        </li>
                        <li>
                            <label>Y-motion</label>

                            <div class="value">${machine.yMotion}</div>
                        </li>
                        <li>
                            <label>Z-motion</label>

                            <div class="value">${machine.zMotion}</div>
                        </li>
                        <li>
                            <label>X table size</label>

                            <div class="value">${machine.xTableSize}</div>
                        </li>
                        <li>
                            <label>Y table size</label>

                            <div class="value">${machine.yTableSize}</div>
                        </li>
                        <li>
                            <label>Table load</label>

                            <div class="value">${machine.tableLoad}</div>
                        </li>
                        <li>
                            <label>Spindle taper</label>

                            <div class="value">${machine.spindleTaper}</div>
                        </li>
                        <li>
                            <label>Spindle rotation frequency</label>

                            <div class="value">${machine.spindleRotationFreq}</div>
                        </li>
                        <li>
                            <label>Spindle power</label>

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
                            <label>Tool count</label>

                            <div class="value">${machine.toolCount}</div>
                        </li>
                        <li>
                            <label>Max tool diameter</label>

                            <div class="value">${machine.maxToolDiameter}</div>
                        </li>
                        <li>
                            <label>Max tool weight</label>

                            <div class="value">${machine.maxToolWeight}</div>
                        </li>
                        <li>
                            <label>Tool replacement time</label>

                            <div class="value">${machine.toolReplacementTime}</div>
                        </li>
                        <li>
                            <label>Position precision</label>

                            <div class="value">${machine.positionPrecision}</div>
                        </li>
                        <li>
                            <label>Reposition precision</label>

                            <div class="value">${machine.repositionPrecision}</div>
                        </li>
                        <li>
                            <label>Spindle runtime</label>

                            <div class="value">${machine.spindleRuntime}</div>
                        </li>
                        <li>
                            <label>Machine launching</label>

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
<footer id="footer" class="color-bg">

    <div class="link-list-row">
        <div class="container no-padding">
            <div class="col-xs-12 col-md-4 ">
                <!-- ========================================= CONTACT INFO =============================================== -->
                <a name="contacts"></a>

                <div class="contact-info">
                    <div class="footer-logo">
                        <a href="list">
                            <img alt="logo" src="resources/images/logo.png"/>
                        </a>
                    </div>

                    <p class="regular-bold"> Feel free to contact us via phone,email or just send us mail.</p>

                    <div class="phone inline">
                        <i class="fa fa-phone"></i> +375 29 255-88-88
                    </div>
                    <br>

                    <div class="contact inline">
                        <i class="fa fa-envelope"></i> MachineCenters@gmail.com
                    </div>

                </div>
                <!-- ================================= CONTACT INFO : END ================================================= -->
            </div>

        </div>
        <!-- /.container -->
    </div>
    <!-- /.link-list-row -->

    <div class="copyright-bar">
        <div class="container">
            <div class="col-xs-12 col-sm-6 no-margin">
                <div class="copyright">
                    &copy;HMC - all rights reserved
                </div>
                <!-- /.copyright -->
            </div>
        </div>
        <!-- /.container -->
    </div>
    <!-- /.copyright-bar -->

</footer>
<!-- /#footer -->
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

</body>
</html>