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
        <div class="container" id="compare-container">
            <a id="getProposal"></a>
            <div class="inner-xs">
                <div class="page-header">
                    <h2 class="page-title">
                        Commercial proposal
                    </h2>
                </div>
            </div>
            <!-- /.section-page-title -->

            <c:if test="${!empty proposalList}">

            <form>
                <h3>Commercial proposal for:</h3><br>
                <div class="row">
                    <div class="col-xs-6 col-md-4">
                        <label for="company">Company</label>
                        <input type="company" id="company" class="form-control" placeholder="Enter company">
                    </div>
                    <div class="col-xs-6 col-md-4">
                        <label for="director">Director</label>
                        <input type="director" id="director" class="form-control" placeholder="Enter director">
                    </div>
                </div>
                <br>
                <a class="le-button" href="#" type="submit">Get the proposal</a>
            </form>

            <br><br>

            <div class="table-responsive">
                <table class="table table-bordered table-condensed" id="order-table">
                    <tr>
                        <td>№</td>
                        <td>Machine</td>
                        <td>Model</td>
                        <td>Price</td>
                        <td>Quantity</td>
                        <td>Total</td>
                    </tr>
                    <c:set var="total" value="0"/>
                    <c:forEach items="${proposalList}" var="machine" varStatus="loop">
                        <tr>
                            <td>${loop.index + 1}</td>
                            <td>${machine.machineType}</td>
                            <td>${machine.model}</td>
                            <td>${machine.cost}</td>
                            <td id="count${machine.productId}"></td>
                            <td id="total${machine.productId}"></td>
                        </tr>
                    </c:forEach>
                    <tr>
                        <td align="right" colspan="5">Order total</td>
                        <td id="order-total"></td>
                    </tr>
                </table>
            </div>

            <br><br>

            <c:forEach items="${proposalList}" var="machine" varStatus="loop">
            <table class="table table-bordered table-condensed machine-table">
                <tr>
                    <td colspan="4" width="33.3335%">
                        <img class="img-responsive" src="resources/images/blank.gif" data-echo="resources/images/products/${machine.photo1}">
                    </td>
                    <td colspan="8" rowspan="2" width="66.6665%">
                        <br>
                        <h3>${machine.model}</h3><br>
                        <h4>
                        ${machine.machineType}<br><br>
                        ${machine.producer}, ${machine.producingCountry}, ${machine.productionYear}<br><br>
                        Current location: ${machine.machineLocation}<br><br>
                        Description: ${machine.fullDescription}
                        </h4>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" width="16.6665%">
                        <img class="img-responsive" src="resources/images/blank.gif" data-echo="resources/images/products/${machine.photo2}">
                    </td>
                    <td colspan="2" width="16.6665%">
                        <img class="img-responsive" src="resources/images/blank.gif" data-echo="resources/images/products/${machine.photo3}">
                    </td>
                </tr>
                <tr>
                    <td colspan="3" width="25%">System CNC</td>
                    <td colspan="3" width="25%">${machine.fullSystemCNC}</td>
                    <td colspan="3" width="25%">X&timesY&timesZ-motion, mm</td>
                    <td colspan="3" width="25%">${machine.xMotion}&times${machine.yMotion}&times${machine.zMotion}</td>
                </tr>
                <tr>
                    <td colspan="3" width="25%">Spindle taper</td>
                    <td colspan="3" width="25%">${machine.spindleTaper}</td>
                    <td colspan="3" width="25%">X&timesY table sizes, mm</td>
                    <td colspan="3" width="25%">${machine.xTableSize}&times${machine.yTableSize}</td>
                </tr>
                <tr>
                    <td colspan="3" width="25%">Spindle rotation frequency, rev/min</td>
                    <td colspan="3" width="25%">${machine.spindleRotationFreq}</td>
                    <td colspan="3" width="25%">Table load, kg</td>
                    <td colspan="3" width="25%">${machine.tableLoad}</td>
                </tr>
                <tr>
                    <td colspan="3" width="25%">Spindle power, kw</td>
                    <td colspan="3" width="25%">${machine.spindlePower}</td>
                    <td colspan="3" width="25%">Store type</td>
                    <td colspan="3" width="25%">${machine.storeType}</td>
                </tr>
                <tr>
                    <td colspan="3" width="25%">Spindle max torque</td>
                    <td colspan="3" width="25%">${machine.spindleMaxTorque}</td>
                    <td colspan="3" width="25%">Tool count, pcs.</td>
                    <td colspan="3" width="25%">${machine.toolCount}</td>
                </tr>
                <tr>
                    <td colspan="3" width="25%">Spindle type</td>
                    <td colspan="3" width="25%">${machine.spindleType}</td>
                    <td colspan="3" width="25%">Max tool diameter, mm</td>
                    <td colspan="3" width="25%">${machine.maxToolDiameter}</td>
                </tr>
                <tr>
                    <td colspan="3" width="25%">Spindle cooling method</td>
                    <td colspan="3" width="25%">${machine.spindleCoolingMethod}</td>
                    <td colspan="3" width="25%">Max tool weight, kg</td>
                    <td colspan="3" width="25%">${machine.maxToolWeight}</td>
                </tr>
                <tr>
                    <td colspan="3" width="25%">Spindle runtime, h</td>
                    <td colspan="3" width="25%">${machine.spindleRuntime}</td>
                    <td colspan="3" width="25%">Machine launching, h</td>
                    <td colspan="3" width="25%">${machine.machineLaunching}</td>
                </tr>
                <tr>
                    <td colspan="3" width="25%">Position precision, mm</td>
                    <td colspan="3" width="25%">${machine.positionPrecision}</td>
                    <td colspan="3" width="25%">Tool replacement time, sec</td>
                    <td colspan="3" width="25%">${machine.toolReplacementTime}</td>
                </tr>
                <tr>
                    <td colspan="3" width="25%">Reposition precision, mm</td>
                    <td colspan="3" width="25%">${machine.repositionPrecision}</td>
                    <td colspan="3" width="25%">Equipment</td>
                    <td colspan="3" width="25%">${machine.equipment}</td>
                </tr>
                <tr>
                    <td colspan="3" width="25%">Condition</td>
                    <td colspan="3" width="25%">${machine.machineCondition}</td>
                    <td colspan="3" width="25%">Price</td>
                    <td colspan="3" width="25%">$${machine.cost}.00</td>
                </tr>
            </table>
            <br><br>
            </c:forEach>

                <a href="#getProposal"><h3>Up to getting the proposal</h3></a><br><br><br>

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
<script src="resources/js/comparison,wishlist,cart.jsp"></script>
<script type="text/javascript">

    $(document).ready(function () {
        loadQuantities();
    });

    function loadQuantities() {
        var fullArr = localStorage.cartItemStr.split(';');
        if (fullArr != null && fullArr != "") {
            var orderTotal = 0;
            $(fullArr).each(function (index, value) {
                var machine = value.split(',');
                var productId = machine[0];
                var cost = machine[1];
                var count = machine[2];
                $('#count' + productId).text(count);
                $('#total' + productId).text("$"+parseInt(count) * parseInt(cost)+".00");
                orderTotal += parseInt(cost) * parseInt(count);
            });
            $("#order-total").text("$"+orderTotal+".00");
        }
    }

</script>

</body>
</html>