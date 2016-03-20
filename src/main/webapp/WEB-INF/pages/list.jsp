<%@ page language="java" contentType="text/html; charset=utf8"
         pageEncoding="utf8" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
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

                <form:form id="filterForm" method="post" action="/list">
                    <div class="body bordered">

                        <c:if test="${!empty producerList}">
                        <div class="category-filter">
                            <h2>Brands</h2>
                            <ul>
                                <c:forEach items="${producerList}" var="brand">
                                <li><input class="le-checkbox" name="brand" type="checkbox" value="${brand.producer}" checked="true"/>
                                    <label>${brand.producer}  (${brand.num})</label></li>
                                </c:forEach>
                            </ul>
                        </div>
                        </c:if>

                        <c:if test="${!empty slidersList}">
                        <div class="price-filter">
                            <h2>Release year</h2>
                            <c:set var="years" value="${slidersList.iterator().next().year}"/>
                            <c:set var="yearMinMax" value="${fn:split(years, ',')}" />
                            <div class="price-range-holder">
                                <input type="text" class="price-slider" id="year-slider" name="yearRange">
                                <span class="min-max">from ${yearMinMax[0]} to ${yearMinMax[1]}</span>
                            </div>
                        </div>
                        </c:if>

                        <c:if test="${!empty slidersList}">
                        <div class="price-filter">
                            <h2>Price</h2>
                            <c:set var="prices" value="${slidersList.iterator().next().cost}"/>
                            <c:set var="priceMinMax" value="${fn:split(prices, ',')}" />
                            <div class="price-range-holder">
                                <input type="text" class="price-slider" id="price-slider" name="priceRange">
                                <span class="min-max">from ${priceMinMax[0]}$ to ${priceMinMax[1]}$</span>
                            </div>
                        </div>
                        </c:if>

                        <hr>

                        <c:if test="${!empty machineLocationList}">
                        <div class="category-filter">
                            <h2>Location</h2>
                            <ul>
                                <c:forEach items="${machineLocationList}" var="location">
                                    <li><input class="le-checkbox" name="location" type="checkbox" value="${location.machineLocation}" checked="true"/>
                                        <label>${location.machineLocation}  (${location.num})</label></li>
                                </c:forEach>
                            </ul>
                        </div>
                        </c:if>

                        <hr>

                        <c:if test="${!empty cncList}">
                        <div class="category-filter">
                            <h2>CNC</h2>
                            <ul>
                                <c:forEach items="${cncList}" var="cnc">
                                <li><input class="le-checkbox" name="cnc" type="checkbox" value="${cnc.systemCNC}" checked="true"/>
                                    <label>${cnc.systemCNC}  (${cnc.num})</label></li>
                                </c:forEach>
                            </ul>
                        </div>
                        </c:if>

                        <c:if test="${!empty slidersList}">
                        <div class="price-filter">
                            <h2>X&timesY&timesZ motion, mm </h2>

                            <c:set var="xMotions" value="${slidersList.iterator().next().xMotion}"/>
                            <c:set var="xMotionMinMax" value="${fn:split(xMotions, ',')}" />
                            <div class="price-range-holder">
                                <input type="text" class="price-slider" id="x-motion-slider" name="xMotionRange">
                                <span class="min-max">X: from ${xMotionMinMax[0]}mm to ${xMotionMinMax[1]}mm</span>
                            </div>
                            <c:set var="yMotions" value="${slidersList.iterator().next().yMotion}"/>
                            <c:set var="yMotionMinMax" value="${fn:split(yMotions, ',')}" />
                            <div class="price-range-holder">
                                <input type="text" class="price-slider" id="y-motion-slider" name="yMotionRange">
                                <span class="min-max">Y: from ${yMotionMinMax[0]}mm to ${yMotionMinMax[1]}mm</span>
                            </div>
                            <c:set var="zMotions" value="${slidersList.iterator().next().zMotion}"/>
                            <c:set var="zMotionMinMax" value="${fn:split(zMotions, ',')}" />
                            <div class="price-range-holder">
                                <input type="text" class="price-slider" id="z-motion-slider" name="zMotionRange">
                                <span class="min-max">Z: from ${zMotionMinMax[0]}mm to ${zMotionMinMax[1]}mm</span>
                            </div>
                        </div>
                        </c:if>

                        <c:if test="${!empty slidersList}">
                        <div class="price-filter">
                            <h2>Table size, mm </h2>
                            <c:set var="xTableSizes" value="${slidersList.iterator().next().xTableSize}"/>
                            <c:set var="xTableSizeMinMax" value="${fn:split(xTableSizes, ',')}" />
                            <div class="price-range-holder">
                                <input type="text" class="price-slider" id="x-table-slider" name="xTableRange">
                                <span class="min-max">X: from ${xTableSizeMinMax[0]}mm to ${xTableSizeMinMax[1]}mm</span>
                            </div>
                            <c:set var="yTableSizes" value="${slidersList.iterator().next().yTableSize}"/>
                            <c:set var="yTableSizeMinMax" value="${fn:split(yTableSizes, ',')}" />
                            <div class="price-range-holder">
                                <input type="text" class="price-slider" id="y-table-slider" name="yTableRange">
                                <span class="min-max">Y: from ${yTableSizeMinMax[0]}mm to ${yTableSizeMinMax[1]}mm</span>
                            </div>
                        </div>
                        </c:if>

                        <hr>

                        <div class="filter-button">
                            <a href="#" id="filterSubmit" onclick="submitFilter()">Filter</a>
                        </div>
                    </div>
                </form:form>

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

                            <div id="prtCnt"></div>

                            <div class="product-grid-holder" id="list">
                                <c:if test="${!empty machineList}">
                                    <div class="row no-margin">
                                        <c:forEach items="${machineList}" var="machine">
                                            <div class="col-xs-12 col-sm-4 no-margin product-item-holder hover">
                                                <div class="product-item">
                                                    <div class="image">
                                                        <img alt="" src="resources/images/blank.gif"
                                                             data-echo="resources/images/products/${machine.photo1}"/>
                                                    </div>
                                                    <div class="body">
                                                        <div class="label-discount clear"></div>
                                                        <div class="title">
                                                            <a href="machine?productId=${machine.productId}">
                                                                    ${machine.type}<br>${machine.model}
                                                            </a>
                                                        </div>
                                                        <div class="brand">
                                                                ${machine.producer}, ${machine.year}, ${machine.producingCountry}<br>
                                                                Current location: ${machine.machineLocation}<br>
                                                                X&timesY&timesZ-motion: ${machine.xMotion}&times${machine.yMotion}&times${machine.zMotion}<br>
                                                                X&timesY table sizes: ${machine.xTableSize}&times${machine.yTableSize}
                                                        </div>
                                                    </div>
                                                    <div class="prices">
                                                        <div class="price-current pull-right">$${machine.cost}.00</div>
                                                        <br>
                                                    </div>
                                                    <div class="hover-area">
                                                        <div class="add-cart-button">
                                                            <a href="machine?productId=${machine.productId}"
                                                               class="le-button">add to cart</a>
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
                                <c:if test="${empty machineList}">
                                    Please, change the filter parameters.
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
<script src="resources/js/filters-list.jsp"></script>
<script type="text/javascript">
    var yearMin = '${yearMinMax[0]}';
    var yearMax = '${yearMinMax[1]}';
    var priceMin = '${priceMinMax[0]}';
    var priceMax = '${priceMinMax[1]}';
    var xMotionMin = '${xMotionMinMax[0]}';
    var xMotionMax = '${xMotionMinMax[1]}';
    var yMotionMin = '${yMotionMinMax[0]}';
    var yMotionMax = '${yMotionMinMax[1]}';
    var zMotionMin = '${zMotionMinMax[0]}';
    var zMotionMax = '${zMotionMinMax[1]}';
    var xTableSizeMin = '${xTableSizeMinMax[0]}';
    var xTableSizeMax = '${xTableSizeMinMax[1]}';
    var yTableSizeMin = '${yTableSizeMinMax[0]}';
    var yTableSizeMax = '${yTableSizeMinMax[1]}';
</script>

</body>
</html>