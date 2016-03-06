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
    <link rel="shortcut icon" href="resourcesd/images/favicon.ico">

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
<%@include file="header.jsp" %>
<!-- =============================================== HEADER : END ================================================ -->

<section id="category-grid">
<div class="container">

<!-- ========================================= SIDEBAR ========================================= -->
<div class="col-xs-12 col-sm-3 no-margin sidebar narrow">

    <!-- ========================================= PRODUCT FILTER ========================================= -->
    <div class="widget">
        <h1>Product Filters</h1>

        <div class="body bordered">

            <div class="category-filter">
                <h2>Brands</h2>
                <ul>
                    <li><input checked="checked" class="le-checkbox" type="checkbox"/> <label>Samsung</label></li>
                    <li><input class="le-checkbox" type="checkbox"/> <label>DECKEL-MAHO</label></li>
                </ul>
            </div>

            <div class="price-filter">
                <h2>Release year</h2>

                <div class="price-range-holder">
                    <input type="text" class="price-slider" value="">

                <span class="min-max">
                    from <span>1990</span> to <span>2016</span>
                </span>
                </div>
            </div>

            <div class="price-filter">
                <h2>Price</h2>

                <div class="price-range-holder">

                    <input type="text" class="price-slider" value="">

                <span class="min-max">
                    from $<span>89</span> to $<span>2899</span>
                </span>
                </div>
            </div>

            <hr>

            <div class="category-filter">
                <h2>Location</h2>
                <ul>
                    <li><input class="le-checkbox" type="checkbox"/> <label>Belarus</label></li>
                    <li><input class="le-checkbox" type="checkbox"/> <label>Russia</label></li>
                </ul>
            </div>

            <hr>

            <div class="category-filter">
                <h2>CNC</h2>
                <ul>
                    <li><input class="le-checkbox" type="checkbox"/> <label>Siemens</label></li>
                </ul>
            </div>

            <div class="price-filter">
                <h2>X&timesY&timesZ sizes, mm </h2>
                <div class="price-range-holder">
                    <input type="text" class="price-slider" value="">
                    <span class="min-max">
                        X: from <span>250</span>mm to <span>1500</span>mm
                    </span>
                </div>
                <div class="price-range-holder">
                    <input type="text" class="price-slider" value="">
                    <span class="min-max">
                        Y: from <span>250</span>mm to <span>1500</span>mm
                    </span>
                </div>
                <div class="price-range-holder">
                    <input type="text" class="price-slider" value="">
                    <span class="min-max">
                        Z: from <span>250</span>mm to <span>1500</span>mm
                    </span>
                </div>
            </div>

            <div class="price-filter">
                <h2>Table size, mm </h2>
                <div class="price-range-holder">
                    <input type="text" class="price-slider" value="">
                    <span class="min-max">
                        X: from <span>250</span>mm to <span>1500</span>mm
                    </span>
                </div>
                <div class="price-range-holder">
                    <input type="text" class="price-slider" value="">
                    <span class="min-max">
                        Y: from <span>250</span>mm to <span>1500</span>mm
                    </span>
                </div>
            </div>

            <hr>
            <div class="filter-button">
                <a href="#">Filter</a>
            </div>

        </div>
        <!-- /.body -->
    </div>
    <!-- /.widget -->
    <!-- ========================================= PRODUCT FILTER : END ========================================= -->
</div>
<!-- ========================================= SIDEBAR : END ========================================= -->

<!-- ========================================= CONTENT ========================================= -->

<div class="col-xs-12 col-sm-9 no-margin wide sidebar">

    <section id="gaming">
        <div class="grid-list-products">

            <div class="tab-content">
                <div id="grid-view" class="products-grid fade tab-pane in active">

                    <div class="product-grid-holder">
                        <c:if test="${!empty machineList}">
                            <div class="row no-margin">
                                <c:forEach items="${machineList}" var="machine">
                                    <div class="col-xs-12 col-sm-4 no-margin product-item-holder hover">
                                        <div class="product-item">
                                            <div class="image">
                                                <img alt="" src="resources/images/blank.gif"
                                                     data-echo="resources/images/products/${machine.photo1}" />
                                            </div>
                                            <div class="body">
                                                <div class="label-discount clear"></div>
                                                <div class="title">
                                                    <a href="machine?productId=${machine.productId}">
                                                    ${machine.type}<br>${machine.model}
                                                    </a>
                                                </div>
                                                <div class="brand">
                                                        ${machine.producer}<br>
                                                        ${machine.producingCountry}
                                                </div>
                                            </div>
                                            <div class="prices">
                                                <div class="price-current pull-right">$${machine.cost}.00</div>
                                            </div>
                                            <div class="hover-area">
                                                <div class="add-cart-button">
                                                    <a href="machine?productId=${machine.productId}" class="le-button">add
                                                        to cart</a>
                                                </div>
                                                <div class="wish-compare">
                                                    <a class="btn-add-to-wishlist" href="#">add to wishlist</a>
                                                    <a class="btn-add-to-compare" href="#">compare</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </c:forEach>
                            </div>
                            <!-- /.row -->
                        </c:if>
                    </div>
                    <!-- /.product-grid-holder -->

                    <div class="pagination-holder">
                        <div class="row">

                            <div class="col-xs-6 text-left">
                                <ul class="pagination ">
                                    <li class="current"><a href="#">1</a></li>
                                </ul>
                            </div>

                            <div class="col-xs-6">
                                <div class="result-counter">
                                    Showing <span>1-9</span> of <span>11</span> results
                                </div>
                            </div>

                        </div>
                        <!-- /.row -->
                    </div>
                    <!-- /.pagination-holder -->
                </div>
                <!-- /.products-grid #grid-view -->

            </div>
            <!-- /.tab-content -->
        </div>
        <!-- /.grid-list-products -->

    </section>
    <!-- /#gaming -->
</div>
<!-- /.col -->
<!-- ========================================= CONTENT : END ========================================= -->
</div>
<!-- /.container -->
</section>
<!-- /#category-grid -->
<!-- ================================================= FOOTER ========================================== -->
<%@include file="footer.jsp" %>
<!-- /#footer -->
<!-- ============================================================= FOOTER : END ============================================================= -->
</div>
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