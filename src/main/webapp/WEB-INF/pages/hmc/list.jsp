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

    <title>HMC</title>

    <!-- Bootstrap Core CSS -->
    <link rel="stylesheet" href="../resources/css/bootstrap.min.css" type="text/css" media="screen"/>

    <!-- Customizable CSS -->
    <link rel="stylesheet" href="../resources/css/main.css" type="text/css" media="screen"/>
    <link rel="stylesheet" href="../resources/css/green.css" type="text/css" media="screen"/>
    <link rel="stylesheet" href="../resources/css/owl.carousel.css" type="text/css" media="screen"/>
    <link rel="stylesheet" href="../resources/css/owl.transitions.css" type="text/css" media="screen"/>
    <link rel="stylesheet" href="../resources/css/animate.min.css" type="text/css" media="screen"/>

    <!-- Fonts -->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800' rel='stylesheet' type='text/css'>

    <!-- Icons/Glyphs -->
    <link rel="stylesheet" href="../resources/css/font-awesome.min.css" type="text/css" media="screen"/>

    <!-- Favicon -->
    <link rel="shortcut icon" href="../resources/images/favicon.ico">

</head>
<body>

<div class="wrapper">
<%@include file="header.jsp" %>

<div id="top-mega-nav">
    <div class="container">
        <nav>
            <ul class="inline">
                <li class="dropdown le-dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        <i class="fa fa-list"></i> Shop by Department
                    </a>
                    <ul class="dropdown-menu">
                        <li><a onclick="goToList('list')">Horizontal machining centers</a></li>
                    </ul>
                </li>

                <li class="breadcrumb-nav-holder">
                    <ul>
                        <li class="breadcrumb-item gray">
                            <a href="/">Home</a>
                        </li>
                        <li class="breadcrumb-item current">
                            <a onclick="window.location.reload(true);">Horizontal Machining Centers</a>
                        </li>
                    </ul>
                </li>
                <!-- /.breadcrumb-nav-holder -->
            </ul>
        </nav>
    </div>
    <!-- /.container -->
</div>
<!-- /#top-mega-nav -->

<section id="category-grid">
<div class="container">

<div id="top"></div>

<!-- ========================================= SIDEBAR ========================================= -->
<div class="col-xs-12 col-sm-3 no-margin sidebar narrow">
    <!-- ========================================= PRODUCT FILTER ========================================= -->
    <div class="widget">
        <h1>Product Filters</h1>
        <form:form id="filterForm" method="post" action="goToList('list')">
            <div class="body bordered">

                <c:if test="${!empty brandList}">
                    <div class="category-filter">
                        <h2>Brands</h2>
                        <ul>
                            <c:forEach items="${brandList}" var="brand">
                                <li><input class="le-checkbox" name="brand" type="checkbox" value="${brand.brand}"/>
                                    <label>${brand.brand} (${brand.num})</label></li>
                            </c:forEach>
                        </ul>
                    </div>
                </c:if>

                <c:if test="${!empty slidersList}">
                    <div class="price-filter">
                        <h2>Production year</h2>
                        <c:set var="years" value="${slidersList.iterator().next().productionYear}"/>
                        <c:set var="yearMinMax" value="${fn:split(years, ',')}"/>
                        <div class="price-range-holder">
                            <input type="text" class="price-slider" id="productionYear-slider" name="yearRange">
                            <span class="min-max">from ${yearMinMax[0]} to ${yearMinMax[1]}</span>
                        </div>
                    </div>
                </c:if>

                <c:if test="${!empty slidersList}">
                    <div class="price-filter"
                         <c:if test='${pageContext.request.userPrincipal.name == null}'>style="display: none"</c:if>>
                        <h2>Price</h2>
                        <c:set var="prices" value="${slidersList.iterator().next().price}"/>
                        <c:set var="priceMinMax" value="${fn:split(prices, ',')}"/>
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
                                <li><input class="le-checkbox" name="location" type="checkbox"
                                           value="${location.machineLocation}"/>
                                    <label>${location.machineLocation} (${location.num})</label></li>
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
                                <li><input class="le-checkbox" name="cnc" type="checkbox" value="${cnc.systemCNC}"/>
                                    <label>${cnc.systemCNC} (${cnc.num})</label></li>
                            </c:forEach>
                        </ul>
                    </div>
                </c:if>

                <c:if test="${!empty slidersList}">
                    <div class="price-filter">
                        <h2>X&timesY&timesZ motion, mm </h2>

                        <c:set var="xMotions" value="${slidersList.iterator().next().xMotion}"/>
                        <c:set var="xMotionMinMax" value="${fn:split(xMotions, ',')}"/>
                        <div class="price-range-holder">
                            <input type="text" class="price-slider" id="x-motion-slider" name="xMotionRange">
                            <span class="min-max">X: from ${xMotionMinMax[0]}mm to ${xMotionMinMax[1]}mm</span>
                        </div>
                        <c:set var="yMotions" value="${slidersList.iterator().next().yMotion}"/>
                        <c:set var="yMotionMinMax" value="${fn:split(yMotions, ',')}"/>
                        <div class="price-range-holder">
                            <input type="text" class="price-slider" id="y-motion-slider" name="yMotionRange">
                            <span class="min-max">Y: from ${yMotionMinMax[0]}mm to ${yMotionMinMax[1]}mm</span>
                        </div>
                        <c:set var="zMotions" value="${slidersList.iterator().next().zMotion}"/>
                        <c:set var="zMotionMinMax" value="${fn:split(zMotions, ',')}"/>
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
                        <c:set var="xTableSizeMinMax" value="${fn:split(xTableSizes, ',')}"/>
                        <div class="price-range-holder">
                            <input type="text" class="price-slider" id="x-table-slider" name="xTableRange">
                            <span class="min-max">X: from ${xTableSizeMinMax[0]}mm to ${xTableSizeMinMax[1]}mm</span>
                        </div>
                        <c:set var="yTableSizes" value="${slidersList.iterator().next().yTableSize}"/>
                        <c:set var="yTableSizeMinMax" value="${fn:split(yTableSizes, ',')}"/>
                        <div class="price-range-holder">
                            <input type="text" class="price-slider" id="y-table-slider" name="yTableRange">
                            <span class="min-max">Y: from ${yTableSizeMinMax[0]}mm to ${yTableSizeMinMax[1]}mm</span>
                        </div>
                    </div>
                </c:if>

                <hr>

                <div class="filter-button">
                    <a id="filterSubmit" onclick="submitFilter()">Filter</a>
                </div>
            </div>
        </form:form>
    </div>
    <!-- ========================================= PRODUCT FILTER : END ========================================= -->
</div>
<!-- ========================================= SIDEBAR : END ========================================= -->

<!-- ========================================= CONTENT ========================================= -->

<div class="col-xs-12 col-sm-9 no-margin wide sidebar">
<section class="carousel-holder">

    <div class="title-nav">
        <h2>Horizontal machining centers</h2>
        <div class="nav-holder"></div>
    </div>

    <div class="grid-list-products">

<div class="control-bar">
    <div id="popularity-sort" class="le-select" >
        <select data-placeholder="sort by popularity">
            <option value="1">Without sorting</option>
            <option value="2">Price high to low</option>
            <option value="3">Price low to high</option>
        </select>
    </div>

    <div id="item-count" class="le-select">
        <select id="selectPerPage">
            <c:set var="perPageNums">3;9;18;36;72</c:set>
            <c:forTokens items="${perPageNums}" delims=";" var="perPage">
                <option value="${perPage}" <c:if test="${perPage == itemsPerPage}">selected</c:if>>${perPage} per page</option>
            </c:forTokens>
        </select>
    </div>

    <div class="grid-list-buttons">
        <ul>
            <li class="grid-list-button-item active">
                <a data-toggle="tab" href="#grid-view" onclick="sessionStorage.view = 'grid'">
                    <i class="fa fa-th-large"></i> Grid
                </a>
            </li>
            <li class="grid-list-button-item">
                <a data-toggle="tab" href="#list-view" onclick="sessionStorage.view = 'list'">
                    <i class="fa fa-th-list"></i> List
                </a>
            </li>
        </ul>
    </div>
</div>
<!-- /.control-bar -->

<div class="tab-content">
<div id="grid-view" class="products-grid fade tab-pane in active">
    <div class="product-grid-holder">
        <c:if test="${!empty machineList}">
            <div class="row no-margin">
                <c:forEach items="${machineList}" var="machine" varStatus="loop">
                    <div class="item${loop.index + 1} col-xs-12 col-sm-4 no-margin product-item-holder hover hidden">
                        <div class="product-item">
                            <div class="image">
                                <img alt="" src="../resources/images/blank.gif"
                                     data-echo="../resources/images/products/${machine.photo1}"/>
                                                <span class="photo${machine.productId} hidden">${machine.photo1}</span>
                            </div>
                            <div class="body">
                                <div class="label-discount clear"></div>
                                <div class="title">
                                    <a href="machine?productId=${machine.productId}">
                                        ${machine.machineTypeEn}<br><span class="model${machine.productId}">${machine.model}</span>
                                    </a>
                                </div>
                                <div class="brand">
                                    <span class="brand${machine.productId}">${machine.brand}</span>, ${machine.productionYear}, ${machine.producingCountryEn}<br>
                                    Current location: ${machine.machineLocationEn}<br>
                                    X&timesY&timesZ-motion: ${machine.xMotion}&times${machine.yMotion}&times${machine.zMotion}<br>
                                    X&timesY table
                                    sizes: ${machine.xTableSize}&times${machine.yTableSize}
                                </div>
                            </div>
                            <div class="prices"
                                 <c:if test="${pageContext.request.userPrincipal.name == null}">style="display: none"</c:if>>
                                <div class="price-current pull-right">$<span class="price${machine.productId}">${machine.price}</span>.00
                                </div>
                                <br>
                            </div>
                            <div class="hover-area">
                                <div class="add-cart-button">
                                    <a class="cart${machine.productId} le-button"
                                       onclick="addToCart('${machine.productId}')">add to cart</a>
                                </div>
                                <div class="wish-compare">
                                    <span class="wishList${machine.productId} btn-add-to-wishlist"
                                          onclick="addToWishList('${machine.productId}')">add to wish list</span>
                                    <br>
                                    <span class="compare${machine.productId} btn-add-to-compare" data-toggle="popover"
                                          onclick="addToComparison('${machine.productId}')">add to comparison</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </c:if>
    </div>
</div>

<div id="list-view" class="products-grid fade tab-pane">
    <div class="products-list">
        <c:if test="${!empty machineList}">
            <c:forEach items="${machineList}" var="machine" varStatus="loop">
                <div class="item${loop.index + 1} product-item product-item-holder hidden">
                    <div class="row">
                        <div class="no-margin col-xs-12 col-sm-4 image-holder">
                            <div class="image">
                                <img alt="${machine.model}" src="../resources/images/blank.gif"
                                     data-echo="../resources/images/products/${machine.photo1}"/>
                                <span class="photo${machine.productId} hidden">${machine.photo1}</span>
                            </div>
                        </div>
                        <!-- /.image-holder -->
                        <div class="no-margin col-xs-12 col-sm-5 body-holder">
                            <div class="body">
                                <div class="title">
                                    <a href="machine?productId=${machine.productId}">
                                            ${machine.machineTypeEn}<br><span class="model${machine.productId}">${machine.model}</span>
                                    </a>
                                </div>
                                <div class="brand">
                                    <span class="brand${machine.productId}">${machine.brand}</span>, ${machine.productionYear}, ${machine.producingCountryEn}<br>
                                </div>
                                <div class="excerpt">
                                    <p>
                                        Condition: ${machine.machineConditionEn}<br>
                                        Current location: ${machine.machineLocationEn}<br>
                                        X&timesY&timesZ-motion: ${machine.xMotion}&times${machine.yMotion}&times${machine.zMotion}<br>
                                        X&timesY table sizes: ${machine.xTableSize}&times${machine.yTableSize}
                                    </p>
                                </div>
                            </div>
                        </div>
                        <!-- /.body-holder -->
                        <div class="no-margin col-xs-12 col-sm-3 price-area">
                            <div class="right-clmn">
                                <div class="price-current"
                                     <c:if test="${pageContext.request.userPrincipal.name == null}">style="display: none"</c:if>>
                                    $<span class="price${machine.productId}">${machine.price}</span>.00
                                </div>
                                <div class="add-cart-button">
                                    <a class="cart${machine.productId} le-button"
                                       onclick="addToCart('${machine.productId}')">add to cart</a>
                                </div>
                                <div class="wish-compare">
                                    <span class="wishList${machine.productId} btn-add-to-wishlist"
                                          onclick="addToWishList('${machine.productId}')">add to wish list</span>
                                    <br>
                                    <span class="compare${machine.productId} btn-add-to-compare" data-toggle="popover"
                                          onclick="addToComparison('${machine.productId}')">add to comparison</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </c:if>
    </div>
</div>

<c:if test="${empty machineList}">
    <h2>
    There are no machines with such parameters<br>
    Please, change the filter parameters.
    </h2>
</c:if>

<c:set var="itemsPerPage" value="${itemsPerPage}"/>
<c:set var="itemsNum" value="${itemsNum}"/>
<div class="pagination-holder">
    <div class="row">

        <div class="col-xs-6 text-left">
            <ul class="pagination">
                <c:forEach begin="1" end="${pagesNum}" var="i">
                    <li id="page${i}" onclick="showPageAndGoUp(${i});">${i}</li>
                </c:forEach>
            </ul>
        </div>

        <div class="col-xs-6">
            <div class="result-counter">
                Showing <span id="showFromTo"></span>
            </div>
        </div>

    </div>
    <!-- /.row -->
</div>
<!-- /.pagination-holder -->

</div>
<!-- /.tab-content -->
</div>
<!-- /.grid-list-products -->
</section>
<!-- /#hmc -->
</div>
<!-- /.col -->
<!-- ========================================= CONTENT : END ========================================= -->
</div>
<!-- /.container -->
</section>
<!-- /#category-grid -->
<!-- ================================================= FOOTER ========================================== -->
<%@include file="footer.jsp" %>
<!-- ============================================================= FOOTER : END ============================================================= -->
</div>
<!-- JavaScripts placed at the end of the document so the pages load faster -->
<script src="../resources/js/jquery-1.10.2.min.js"></script>
<script src="../resources/js/jquery-migrate-1.2.1.js"></script>
<script src="../resources/js/bootstrap.min.js"></script>
<script src="http://maps.google.com/maps/api/js?sensor=false&amp;language=en"></script>
<script src="../resources/js/gmap3.min.js"></script>
<script src="../resources/js/bootstrap-hover-dropdown.min.js"></script>
<script src="../resources/js/owl.carousel.min.js"></script>
<script src="../resources/js/css_browser_selector.min.js"></script>
<script src="../resources/js/echo.min.js"></script>
<script src="../resources/js/jquery.easing-1.3.min.js"></script>
<script src="../resources/js/bootstrap-slider.min.js"></script>
<script src="../resources/js/jquery.raty.min.js"></script>
<script src="../resources/js/jquery.prettyPhoto.min.js"></script>
<script src="../resources/js/jquery.customSelect.min.js"></script>
<script src="../resources/js/wow.min.js"></script>
<script src="../resources/js/scripts.js"></script>
<script src="http://w.sharethis.com/button/buttons.js"></script>
<script src="../resources/js/filters.jsp"></script>
<script src="../resources/js/comparison,wishlist,cart,common.jsp"></script>
<script type="text/javascript">
    // filter global variables
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

    // pagination global variables
    var itemsNum = '${itemsNum}';

    $(document).ready(function () {
        if(sessionStorage.view == null || sessionStorage.view == "") {
            sessionStorage.view = 'grid';
        } else if (sessionStorage.view == 'list') {
            $('.grid-list-button-item:nth-child(2) a').tab('show')
        }

        if(sessionStorage.page == null || sessionStorage.page == "") {
            sessionStorage.page = '1';
        } else if (sessionStorage.page != '1') {
            showPage(parseInt(sessionStorage.page));
        }

        if(sessionStorage.itemsPerPage == null || sessionStorage.itemsPerPage == "") {
            sessionStorage.itemsPerPage = '${itemsPerPage}';
        }

        $('#selectPerPage').change(function(){
            sessionStorage.itemsPerPage = $(this).val().toString();
            goToList("list");
        });
    });
</script>
<script src="../resources/js/pagination.jsp"></script>
</body>
</html>