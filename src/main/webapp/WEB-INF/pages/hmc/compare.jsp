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

    <title>HMC. Comparison</title>

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
                            <li class="breadcrumb-item gray">
                                <a onclick="goToList('list')">Horizontal machining centers</a>
                            </li>
                            <li class="breadcrumb-item current">
                                <a onclick="window.location.reload(true);">Machine comparison</a>
                            </li>
                        </ul>
                    </li><!-- /.breadcrumb-nav-holder -->
                </ul>
            </nav>
        </div><!-- /.container -->
    </div><!-- /#top-mega-nav -->

    <div class="main-content" id="main-content">
        <div class="container" id="compare-container">
            <div class="inner-xs">
                <div class="page-header">
                    <h2 class="page-title">
                        Comparison
                        <c:if test="${empty comparisonList}">
                            <br><br>Choose items to compare
                        </c:if>
                    </h2>
                </div>
            </div>
            <!-- /.section-page-title -->

                <c:if test="${!empty comparisonList}">
                <div class="table-responsive">
                    <table id="compare-table" class="table compare-list">
                        <thead>
                        <tr>
                            <th>&nbsp;</th>
                            <c:forEach items="${comparisonList}" var="machine">
                            <td class="text-center">
                                <div class="image-wrap">
                                    <span onclick="removeFromComparison('${machine.productId}'); goToComparison();" class="remove-link">
                                        <i class="fa fa-times"></i>
                                    </span>
                                    <img width="220" height="154" class="attachment-yith-woocompare-image" src="../resources/images/blank.gif"
                                         data-echo="../resources/images/products/${machine.photo1}">
                                    <span id="photo${machine.productId}" hidden="hidden">${machine.photo1}</span>
                                </div>
                                <p><strong>
                                    ${machine.machineTypeEn}<br>
                                    <span id="model${machine.productId}">${machine.model}</span>
                                </strong></p>
                            </td>
                            </c:forEach>
                        </tr>
                        <tr class="tr-add-to-cart">
                            <th>&nbsp;</th>
                            <c:forEach items="${comparisonList}" var="machine">
                            <td class="text-center">
                                <div class="add-cart-button">
                                    <a class="cart${machine.productId} le-button add_to_cart_button product_type_simple"
                                       onclick="addToCart('${machine.productId}')">add to cart</a>
                                </div>
                            </td>
                            </c:forEach>
                        </tr>
                        </thead>
                        <tbody>

                        <tr class="comparison-item price" <c:if test="${pageContext.request.userPrincipal.name == null}">style="display: none"</c:if>>
                            <th>Price</th>
                            <c:forEach items="${comparisonList}" var="machine">
                            <td class="comparison-item-cell odd product_39">
                                <span class="amount">$<span id="price${machine.productId}">${machine.price}</span>.00</span>
                            </td>
                            </c:forEach>
                        </tr>

                        <tr class="comparison-item description">
                            <th>Brand, country, year</th>
                            <c:forEach items="${comparisonList}" var="machine">
                            <td class="comparison-item-cell odd product_39">
                                <p><span id="brand${machine.productId}">${machine.brand}</span>, ${machine.producingCountryEn}, ${machine.productionYear}<br><br></p>
                            </td>
                            </c:forEach>
                        </tr>

                        <tr class="comparison-item description">
                            <th>System CNC</th>
                            <c:forEach items="${comparisonList}" var="machine">
                                <td class="comparison-item-cell odd product_39">
                                    <p>${machine.fullSystemCNC}</p>
                                </td>
                            </c:forEach>
                        </tr>

                        <tr class="comparison-item description">
                            <th>Condition</th>
                            <c:forEach items="${comparisonList}" var="machine">
                                <td class="comparison-item-cell odd product_39">
                                    <p>${machine.machineConditionEn}</p>
                                </td>
                            </c:forEach>
                        </tr>

                        <tr class="comparison-item description">
                            <th>Machine location</th>
                            <c:forEach items="${comparisonList}" var="machine">
                                <td class="comparison-item-cell odd product_39">
                                    <p>${machine.machineLocationEn}</p>
                                </td>
                            </c:forEach>
                        </tr>

                        <tr class="comparison-item description">
                            <th>X&timesY&timesZ-motion, mm</th>
                            <c:forEach items="${comparisonList}" var="machine">
                                <td class="comparison-item-cell odd product_39">
                                    <p>${machine.xMotion}&times${machine.yMotion}&times${machine.zMotion}</p>
                                </td>
                            </c:forEach>
                        </tr>

                        <tr class="comparison-item description">
                            <th>X&timesY table sizes, mm</th>
                            <c:forEach items="${comparisonList}" var="machine">
                                <td class="comparison-item-cell odd product_39">
                                    <p>${machine.xTableSize}&times${machine.yTableSize}</p>
                                </td>
                            </c:forEach>
                        </tr>

                        <tr class="comparison-item description">
                            <th>Table load, kg</th>
                            <c:forEach items="${comparisonList}" var="machine">
                                <td class="comparison-item-cell odd product_39">
                                    <p>${machine.tableLoad}</p>
                                </td>
                            </c:forEach>
                        </tr>

                        <tr class="comparison-item description">
                            <th>Spindle taper</th>
                            <c:forEach items="${comparisonList}" var="machine">
                                <td class="comparison-item-cell odd product_39">
                                    <p>${machine.spindleTaper}</p>
                                </td>
                            </c:forEach>
                        </tr>

                        <tr class="comparison-item description">
                            <th>Spindle rotation frequency, rev/min</th>
                            <c:forEach items="${comparisonList}" var="machine">
                                <td class="comparison-item-cell odd product_39">
                                    <p>${machine.spindleRotationFreq}<br><br></p>
                                </td>
                            </c:forEach>
                        </tr>

                        <tr class="comparison-item description">
                            <th>Spindle power, kw</th>
                            <c:forEach items="${comparisonList}" var="machine">
                                <td class="comparison-item-cell odd product_39">
                                    <p>${machine.spindlePower}</p>
                                </td>
                            </c:forEach>
                        </tr>

                        <tr class="comparison-item description">
                            <th>Tool count, pcs.</th>
                            <c:forEach items="${comparisonList}" var="machine">
                                <td class="comparison-item-cell odd product_39">
                                    <p>${machine.toolCount}</p>
                                </td>
                            </c:forEach>
                        </tr>

                        <tr class="comparison-item description">
                            <th>Max tool diameter, mm</th>
                            <c:forEach items="${comparisonList}" var="machine">
                                <td class="comparison-item-cell odd product_39">
                                    <p>${machine.maxToolDiameter}</p>
                                </td>
                            </c:forEach>
                        </tr>

                        <tr class="comparison-item description">
                            <th>Max tool weight, kg</th>
                            <c:forEach items="${comparisonList}" var="machine">
                                <td class="comparison-item-cell odd product_39">
                                    <p>${machine.maxToolWeight}</p>
                                </td>
                            </c:forEach>
                        </tr>

                        <tr class="comparison-item description">
                            <th>Max tool length, mm</th>
                            <c:forEach items="${comparisonList}" var="machine">
                                <td class="comparison-item-cell odd product_39">
                                    <p>${machine.maxToolLength}</p>
                                </td>
                            </c:forEach>
                        </tr>

                        <tr class="comparison-item description">
                            <th>Tool replacement time, sec</th>
                            <c:forEach items="${comparisonList}" var="machine">
                                <td class="comparison-item-cell odd product_39">
                                    <p>${machine.toolReplacementTime}<br><br></p>
                                </td>
                            </c:forEach>
                        </tr>

                        <tr class="comparison-item description">
                            <th>Chip replacement time, sec</th>
                            <c:forEach items="${comparisonList}" var="machine">
                                <td class="comparison-item-cell odd product_39">
                                    <p>${machine.chipReplacementTime}<br><br></p>
                                </td>
                            </c:forEach>
                        </tr>

                        <tr class="comparison-item description">
                            <th>Position/reposition precision, mm</th>
                            <c:forEach items="${comparisonList}" var="machine">
                                <td class="comparison-item-cell odd product_39">
                                    <p>${machine.positionRepositionPrecision}</p>
                                </td>
                            </c:forEach>
                        </tr>

                        <tr class="comparison-item description">
                            <th>Spindle runtime, h</th>
                            <c:forEach items="${comparisonList}" var="machine">
                                <td class="comparison-item-cell odd product_39">
                                    <p>${machine.spindleRuntime}</p>
                                </td>
                            </c:forEach>
                        </tr>

                        <tr class="comparison-item description">
                            <th>Machine launching, h</th>
                            <c:forEach items="${comparisonList}" var="machine">
                                <td class="comparison-item-cell odd product_39">
                                    <p>${machine.machineLaunching}</p>
                                </td>
                            </c:forEach>
                        </tr>

                        <tr class="comparison-item description">
                            <th>Description</th>
                            <c:forEach items="${comparisonList}" var="machine">
                                <td class="comparison-item-cell odd product_39">
                                    <p>${machine.descriptionEn}</p>
                                </td>
                            </c:forEach>
                        </tr>

                        <tr class="price repeated" <c:if test="${pageContext.request.userPrincipal.name == null}">style="display: none"</c:if>>
                            <th>Price</th>
                            <c:forEach items="${comparisonList}" var="machine">
                                <td class="comparison-item-cell odd product_39">
                                    <span class="amount">$${machine.price}.00</span>
                                </td>
                            </c:forEach>
                        </tr>

                        </tbody>
                        <thead>
                        <tr>
                            <th>&nbsp;</th>
                            <c:forEach items="${comparisonList}" var="machine">
                                <td class="text-center">
                                    <br><br>
                                    <div class="image-wrap">
                                    <span onclick="removeFromComparison('${machine.productId}'); goToComparison();" class="remove-link">
                                        <i class="fa fa-times"></i>
                                    </span>
                                        <img width="220" height="154" class="attachment-yith-woocompare-image" src="../resources/images/blank.gif"
                                             data-echo="../resources/images/products/${machine.photo1}">
                                    </div>
                                    <p><strong>${machine.machineTypeEn}<br>${machine.model}</strong></p>
                                </td>
                            </c:forEach>
                        </tr>
                        <tr class="tr-add-to-cart">
                            <th>&nbsp;</th>
                            <c:forEach items="${comparisonList}" var="machine">
                                <td class="text-center">
                                    <div class="add-cart-button">
                                        <a class="cart${machine.productId} le-button add_to_cart_button product_type_simple"
                                           onclick="addToCart('${machine.productId}')">add to cart</a>
                                    </div>
                                </td>
                            </c:forEach>
                        </tr>
                        </thead>

                    </table>
                <!-- /.table-responsive -->
                </div>
                <br><br><br>
                </c:if>
        </div>
        <!-- /.container -->
    </div>
    <!-- ================================================= FOOTER ========================================== -->
    <%@include file="footer.jsp" %>
    <!-- ============================================================= FOOTER : END ============================================================= -->
</div>
<!-- /.wrapper -->

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
<script src="../resources/js/comparison,wishlist,cart,common.jsp"></script>

</body>
</html>