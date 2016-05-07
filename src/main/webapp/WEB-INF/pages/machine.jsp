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
<div id="top-mega-nav">
    <div class="container">
        <nav>
            <ul class="inline">
                <li class="dropdown le-dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        <i class="fa fa-list"></i> Shop by Department
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="#">First department</a></li>
                        <li><a href="#">Second department</a></li>
                    </ul>
                </li>

                <li class="breadcrumb-nav-holder">
                    <ul>
                        <li class="breadcrumb-item gray">
                            <a href="#">Home</a>
                        </li>
                        <li class="breadcrumb-item gray">
                            <a href="list">Horizontal Machine Centers</a>
                        </li>
                        <li class="breadcrumb-item current">
                            <a href=".">${machine.machineTypeEn} - ${machine.productId}</a>
                        </li>
                    </ul>
                </li><!-- /.breadcrumb-nav-holder -->
            </ul>
        </nav>
    </div><!-- /.container -->
</div><!-- /#top-mega-nav -->

<br>

<div id="single-product">
    <div class="container">

        <div class="no-margin col-xs-12 col-sm-6 col-md-5 gallery-holder">
            <div class="product-item-holder size-big single-product-gallery small-gallery">

                <div id="owl-single-product">
                    <div class="single-product-gallery-item" id="slide1">
                        <a data-rel="prettyphoto" href="resources/images/products/${machine.photo1}">
                            <img class="img-responsive" alt="" src="resources/images/blank.gif"
                                 data-echo="resources/images/products/${machine.photo1}"/>
                            <span id="photo${machine.productId}" hidden="hidden">${machine.photo1}</span>
                        </a>
                    </div>

                    <c:if test="${machine.photo2!=''}">
                    <div class="single-product-gallery-item" id="slide2">
                        <a data-rel="prettyphoto" href="resources/images/products/${machine.photo2}">
                            <img class="img-responsive" alt="" src="resources/images/blank.gif"
                                 data-echo="resources/images/products/${machine.photo2}"/>
                        </a>
                    </div>
                    </c:if>

                    <c:if test="${machine.photo3!=''}">
                    <div class="single-product-gallery-item" id="slide3">
                        <a data-rel="prettyphoto" href="resources/images/products/${machine.photo3}">
                            <img class="img-responsive" alt="" src="resources/images/blank.gif"
                                 data-echo="resources/images/products/${machine.photo3}"/>
                        </a>
                    </div>
                    </c:if>

                    <c:if test="${machine.photo4!=''}">
                    <div class="single-product-gallery-item" id="slide4">
                        <a data-rel="prettyphoto" href="resources/images/products/${machine.photo4}">
                            <img class="img-responsive" alt="" src="resources/images/blank.gif"
                                 data-echo="resources/images/products/${machine.photo4}"/>
                        </a>
                    </div>
                    </c:if>

                    <c:if test="${machine.photo5!=''}">
                    <div class="single-product-gallery-item" id="slide5">
                        <a data-rel="prettyphoto" href="resources/images/products/${machine.photo5}">
                            <img class="img-responsive" alt="" src="resources/images/blank.gif"
                                 data-echo="resources/images/products/${machine.photo5}"/>
                        </a>
                    </div>
                    </c:if>

                </div>
                <!-- /.single-product-slider -->

                <div class="single-product-gallery-thumbs gallery-thumbs">

                    <div id="owl-single-product-thumbnails">
                        <a class="horizontal-thumb active" data-target="#owl-single-product" data-slide="0"
                           href="#slide1">
                            <img width="67" alt="" src="resources/images/blank.gif"
                                 data-echo="resources/images/products/${machine.photo1}"/>
                        </a>

                        <c:if test="${machine.photo2!=''}">
                        <a class="horizontal-thumb" data-target="#owl-single-product" data-slide="1" href="#slide2">
                            <img width="67" alt="" src="resources/images/blank.gif"
                                 data-echo="resources/images/products/${machine.photo2}"/>
                        </a>
                        </c:if>

                        <c:if test="${machine.photo3!=''}">
                        <a class="horizontal-thumb" data-target="#owl-single-product" data-slide="2" href="#slide3">
                            <img width="67" alt="" src="resources/images/blank.gif"
                                 data-echo="resources/images/products/${machine.photo3}"/>
                        </a>
                        </c:if>

                        <c:if test="${machine.photo4!=''}">
                        <a class="horizontal-thumb" data-target="#owl-single-product" data-slide="3" href="#slide4">
                            <img width="67" alt="" src="resources/images/blank.gif"
                                 data-echo="resources/images/products/${machine.photo4}"/>
                        </a>
                        </c:if>

                        <c:if test="${machine.photo5!=''}">
                        <a class="horizontal-thumb" data-target="#owl-single-product" data-slide="4" href="#slide5">
                            <img width="67" alt="" src="resources/images/blank.gif"
                                 data-echo="resources/images/products/${machine.photo5}"/>
                        </a>
                        </c:if>
                    </div>
                    <!-- /#owl-single-product-thumbnails -->

                </div>
                <!-- /.gallery-thumbs -->

            </div>
            <!-- /.single-product-gallery -->
        </div>
        <!-- /.gallery-holder -->

        <div class="no-margin col-xs-12 col-sm-7 body-holder">
            <div class="body">
                <div class="title"><a href="#">${machine.machineTypeEn} - <span
                        id="model${machine.productId}">${machine.model}</span></a></div>
                <div class="brand">
                    <big>
                        <span id="brand${machine.productId}">${machine.brand}</span><br>
                        Product id: ${machine.productId}
                    </big>
                </div>

                <div class="buttons-holder">
                    <span id="wishList${machine.productId}" class="btn-add-to-wishlist"
                          onclick="addToWishList('${machine.productId}')">
                        add to wish list
                    </span>
                    <span id="compare${machine.productId}" class="btn-add-to-compare"
                          onclick="addToComparison('${machine.productId}')">
                        add to comparison
                    </span>
                </div>

                <div class="excerpt">
                    <p>${machine.descriptionEn}</p>
                </div>

                <div class="prices">
                    <div class="price-current">$<span id="price${machine.productId}">${machine.price}</span>.00</div>
                </div>

                <div class="qnt-holder">
                    <button class="cart${machine.productId} le-button huge" onclick="addToCart('${machine.productId}')">add
                        to cart</button>
                    <a class="le-button huge" href="proposal-single?productId=${machine.productId}">get commercial proposal (PDF)</a>
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

                    <c:if test="${machine.video1!=''}">
                        <iframe width="560" height="315" src="${machine.video1}" frameborder="0" allowfullscreen></iframe>
                        <br><br>
                    </c:if>
                    <c:if test="${machine.video2!=''}">
                        <iframe width="560" height="315" src="${machine.video2}" frameborder="0" allowfullscreen></iframe>
                        <br><br>
                    </c:if>
                    <c:if test="${machine.video3!=''}">
                        <iframe width="560" height="315" src="${machine.video3}" frameborder="0" allowfullscreen></iframe>
                    </c:if>
                    <c:if test="${machine.video1=='' && machine.video2=='' && machine.video3==''}">
                        <iframe width="560" height="315" src="https://www.youtube.com/embed/0YSScR4PbLw" frameborder="0" allowfullscreen></iframe>
                    </c:if>
                </div>

                <div class="tab-pane" id="additional-info">
                    <ul class="tabled-data">
                        <li>
                            <label>Type</label>

                            <div class="value">${machine.machineTypeEn}</div>
                        </li>
                        <li>
                            <label>Model</label>

                            <div class="value">${machine.model}</div>
                        </li>
                        <li>
                            <label>Brand</label>

                            <div class="value">${machine.brand}</div>
                        </li>
                        <li>
                            <label>Producing country</label>

                            <div class="value">${machine.producingCountryEn}</div>
                        </li>
                        <li>
                            <label>System CNC</label>

                            <div class="value">${machine.fullSystemCNC}</div>
                        </li>
                        <li>
                            <label>Year of producing</label>

                            <div class="value">${machine.productionYear}</div>
                        </li>
                        <li>
                            <label>Condition</label>

                            <div class="value">${machine.machineConditionEn}</div>
                        </li>
                        <li>
                            <label>Machine location</label>

                            <div class="value">${machine.machineLocationEn}</div>
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
                            <label>Max tool length, mm</label>

                            <div class="value">${machine.maxToolLength}</div>
                        </li>
                        <li>
                            <label>Tool replacement time, sec</label>

                            <div class="value">${machine.toolReplacementTime}</div>
                        </li>
                        <li>
                            <label>Chip replacement time, sec</label>

                            <div class="value">${machine.chipReplacementTime}</div>
                        </li>
                        <li>
                            <label>Position/reposition precision, mm</label>

                            <div class="value">${machine.positionRepositionPrecision}</div>
                        </li>
                        <li>
                            <label>Spindle runtime, h</label>

                            <div class="value">${machine.spindleRuntime}</div>
                        </li>
                        <li>
                            <label>Machine launching, h</label>

                            <div class="value">${machine.machineLaunching}</div>
                        </li>
                    </ul>

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
<script src="resources/js/comparison,wishlist,cart.jsp"></script>

</body>
</html>