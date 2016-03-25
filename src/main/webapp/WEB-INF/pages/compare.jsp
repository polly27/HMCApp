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
    <!-- ============================================================= TOP NAVIGATION ============================================================= -->
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
    <!-- ============================================================= TOP NAVIGATION : END ============================================================= -->
    <!-- ================================================ HEADER ======================================================= -->
    <%@include file="header.jsp" %>
    <!-- =============================================== HEADER : END ================================================ -->
    <div class="main-content" id="main-content">
        <div class="container">
            <div class="inner-xs">
                <div class="page-header">
                    <h2 class="page-title">
                        Product Comparison
                        <c:if test="${empty comparisonList}">
                            <br><br>Choose items to compare
                        </c:if>
                    </h2>
                    <h3>You can compare up to 5 items at once</h3>
                </div>
            </div>
            <!-- /.section-page-title -->

                <c:if test="${!empty comparisonList}">
                <div class="table-responsive inner-bottom-xs inner-top-xs">
                    <table class="table table-bordered table-striped compare-list">
                        <thead>
                        <tr>
                            <td>&nbsp;</td>
                            <c:forEach items="${comparisonList}" var="machine">
                            <td class="text-center">
                                <div class="image-wrap">
                                    <span onclick="removeFromComparison('${machine.productId}'); goToComparison();" class="remove-link">
                                        <i class="fa fa-times-circle"></i>
                                    </span>
                                    <img width="220" height="154" class="attachment-yith-woocompare-image" src="resources/images/blank.gif"
                                         data-echo="resources/images/products/${machine.photo1}">
                                </div>
                                <p><strong>${machine.type}<br>${machine.model}</strong></p>
                            </td>
                            </c:forEach>
                        </tr>
                        <tr class="tr-add-to-cart">
                            <td>&nbsp;</td>
                            <c:forEach items="${comparisonList}" var="machine">
                            <td class="text-center">
                                <div class="add-cart-button">
                                    <a class="le-button add_to_cart_button product_type_simple" href="#">Add to cart</a>
                                </div>
                            </td>
                            </c:forEach>
                        </tr>
                        </thead>
                        <tbody>

                        <tr class="comparison-item price">
                            <th>Price</th>
                            <c:forEach items="${comparisonList}" var="machine">
                            <td class="comparison-item-cell odd product_39">
                                <span class="amount">$${machine.cost}.00</span>
                            </td>
                            </c:forEach>
                        </tr>

                        <tr class="comparison-item description">
                            <th>Brand, country, year</th>
                            <c:forEach items="${comparisonList}" var="machine">
                            <td class="comparison-item-cell odd product_39">
                                <p>${machine.producer}, ${machine.producingCountry}, ${machine.year}</p>
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
                            <th>Machine location</th>
                            <c:forEach items="${comparisonList}" var="machine">
                                <td class="comparison-item-cell odd product_39">
                                    <p>${machine.machineLocation}</p>
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
                                    <p>${machine.spindleRotationFreq}</p>
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
                            <th>Spindle max torque</th>
                            <c:forEach items="${comparisonList}" var="machine">
                                <td class="comparison-item-cell odd product_39">
                                    <p>${machine.spindleMaxTorque}</p>
                                </td>
                            </c:forEach>
                        </tr>

                        <tr class="comparison-item description">
                            <th>Spindle type</th>
                            <c:forEach items="${comparisonList}" var="machine">
                                <td class="comparison-item-cell odd product_39">
                                    <p>${machine.spindleType}</p>
                                </td>
                            </c:forEach>
                        </tr>

                        <tr class="comparison-item description">
                            <th>Spindle cooling method</th>
                            <c:forEach items="${comparisonList}" var="machine">
                                <td class="comparison-item-cell odd product_39">
                                    <p>${machine.spindleCoolingMethod}</p>
                                </td>
                            </c:forEach>
                        </tr>

                        <tr class="comparison-item description">
                            <th>Store type</th>
                            <c:forEach items="${comparisonList}" var="machine">
                                <td class="comparison-item-cell odd product_39">
                                    <p>${machine.storeType}</p>
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
                            <th>Tool replacement time, sec</th>
                            <c:forEach items="${comparisonList}" var="machine">
                                <td class="comparison-item-cell odd product_39">
                                    <p>${machine.toolReplacementTime}</p>
                                </td>
                            </c:forEach>
                        </tr>

                        <tr class="comparison-item description">
                            <th>Position precision, mm</th>
                            <c:forEach items="${comparisonList}" var="machine">
                                <td class="comparison-item-cell odd product_39">
                                    <p>${machine.positionPrecision}</p>
                                </td>
                            </c:forEach>
                        </tr>

                        <tr class="comparison-item description">
                            <th>Reposition precision, mm</th>
                            <c:forEach items="${comparisonList}" var="machine">
                                <td class="comparison-item-cell odd product_39">
                                    <p>${machine.repositionPrecision}</p>
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
                            <th>Equipment</th>
                            <c:forEach items="${comparisonList}" var="machine">
                                <td class="comparison-item-cell odd product_39">
                                    <p>${machine.equipment}</p>
                                </td>
                            </c:forEach>
                        </tr>

                        <tr class="comparison-item description">
                            <th>Condition</th>
                            <c:forEach items="${comparisonList}" var="machine">
                                <td class="comparison-item-cell odd product_39">
                                    <p>${machine.condition}</p>
                                </td>
                            </c:forEach>
                        </tr>

                        <tr class="comparison-item description">
                            <th>Description</th>
                            <c:forEach items="${comparisonList}" var="machine">
                                <td class="comparison-item-cell odd product_39">
                                    <p>${machine.fullDescription}</p>
                                </td>
                            </c:forEach>
                        </tr>

                        <tr class="price repeated">
                            <th>Price</th>
                            <c:forEach items="${comparisonList}" var="machine">
                                <td class="comparison-item-cell odd product_39">
                                    <span class="amount">$${machine.cost}.00</span>
                                </td>
                            </c:forEach>
                        </tr>

                        </tbody>
                    </table>
                </div>
                <!-- /.table-responsive -->
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
<script src="resources/js/comparison.jsp"></script>

</body>
</html>