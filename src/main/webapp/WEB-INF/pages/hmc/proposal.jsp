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

    <title>HMC. Commersial proposal</title>

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
                            <li class="breadcrumb-item gray">
                                <a onclick="goToCart()">Shopping cart</a>
                            </li>
                            <li class="breadcrumb-item current">
                                <a onclick="window.location.reload(true);">Commercial proposal</a>
                            </li>
                        </ul>
                    </li><!-- /.breadcrumb-nav-holder -->
                </ul>
            </nav>
        </div><!-- /.container -->
    </div><!-- /#top-mega-nav -->

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

            <h3>Commercial proposal for:</h3><br>
            <form:form class="formBox" method="post" id="proposalForm">
                <div class="row">
                    <div class="col-xs-6 col-md-4">
                        <label for="company">Company</label>
                        <input type="text" id="company" name="company" class="form-control" placeholder="Enter company">
                    </div>
                    <div class="col-xs-6 col-md-4">
                        <label for="director">Director</label>
                        <input type="text" id="director" name="director" class="form-control" placeholder="Enter director">
                    </div>
                </div>
                <br>
                <input type="hidden" name="showPrice" value="<c:if test='${pageContext.request.userPrincipal.name == null}'>false</c:if><c:if test='${pageContext.request.userPrincipal.name != null}'>true</c:if>"/>
                <button class="le-button" type="submit">Get the proposal</button>
            </form:form>

            <br><br>

            <div class="table-responsive">
                <table class="table table-bordered table-condensed" id="order-table">
                    <tr>
                        <td>№</td>
                        <td>Machine</td>
                        <td>Model</td>
                        <td <c:if test="${pageContext.request.userPrincipal.name == null}">style="display: none"</c:if>>Price</td>
                        <td>Quantity</td>
                        <td <c:if test="${pageContext.request.userPrincipal.name == null}">style="display: none"</c:if>>Total</td>
                    </tr>
                    <c:set var="total" value="0"/>
                    <c:forEach items="${proposalList}" var="machine" varStatus="loop">
                        <tr>
                            <td>${loop.index + 1}</td>
                            <td>${machine.machineTypeEn}</td>
                            <td>${machine.model}</td>
                            <td <c:if test="${pageContext.request.userPrincipal.name == null}">style="display: none"</c:if>>$${machine.price}.00</td>
                            <td id="count${machine.productId}"></td>
                            <td <c:if test="${pageContext.request.userPrincipal.name == null}">style="display: none"</c:if> id="total${machine.productId}"></td>
                        </tr>
                    </c:forEach>
                    <tr <c:if test="${pageContext.request.userPrincipal.name == null}">style="display: none"</c:if>>
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
                            <img class="img-responsive" src="../resources/images/blank.gif" data-echo="../resources/images/products/${machine.photo1}">
                        </td>
                        <td colspan="8" rowspan="2" width="66.6665%">
                            <br>
                            <h3>${machine.model}</h3><br>
                            <h4>
                                    ${machine.machineTypeEn}<br><br>
                                    ${machine.brand}, ${machine.producingCountryEn}, ${machine.productionYear}<br><br>
                                Current location: ${machine.machineLocationEn}<br><br>
                                Condition: ${machine.machineConditionEn}<br><br>
                                Description: ${machine.descriptionEn}
                            </h4>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" width="16.6665%">
                            <img class="img-responsive" src="../resources/images/blank.gif" data-echo="../resources/images/products/${machine.photo2}">
                        </td>
                        <td colspan="2" width="16.6665%">
                            <img class="img-responsive" src="../resources/images/blank.gif" data-echo="../resources/images/products/${machine.photo3}">
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
                        <td colspan="3" width="25%">Tool count, pcs.</td>
                        <td colspan="3" width="25%">${machine.toolCount}</td>
                    </tr>
                    <tr>
                        <td colspan="3" width="25%">Tool replacement time, sec</td>
                        <td colspan="3" width="25%">${machine.toolReplacementTime}</td>
                        <td colspan="3" width="25%">Max tool diameter, mm</td>
                        <td colspan="3" width="25%">${machine.maxToolDiameter}</td>
                    </tr>
                    <tr>
                        <td colspan="3" width="25%">Chip replacement time, sec</td>
                        <td colspan="3" width="25%">${machine.chipReplacementTime}</td>
                        <td colspan="3" width="25%">Max tool weight, kg</td>
                        <td colspan="3" width="25%">${machine.maxToolWeight}</td>
                    </tr>
                    <tr>
                        <td colspan="3" width="25%">Spindle runtime, h</td>
                        <td colspan="3" width="25%">${machine.spindleRuntime}</td>
                        <td colspan="3" width="25%">Max tool length, mm</td>
                        <td colspan="3" width="25%">${machine.maxToolLength}</td>
                    </tr>
                    <tr>
                        <td colspan="3" width="25%">Position/reposition precision, mm</td>
                        <td colspan="3" width="25%">${machine.positionRepositionPrecision}</td>
                        <td colspan="3" width="25%">Machine launching, h</td>
                        <td colspan="3" width="25%">${machine.machineLaunching}</td>
                    </tr>
                    <tr <c:if test="${pageContext.request.userPrincipal.name == null}">style="display: none"</c:if>>
                        <td colspan="6" width="50%"></td>
                        <td colspan="3" width="25%">Price</td>
                        <td colspan="3" width="25%">$${machine.price}.00</td>
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
<script type="text/javascript">

    $(document).ready(function () {
        loadQuantities();
        setProposalFormData();
    });

    function loadQuantities() {
        var fullArr = localStorage.cartItemStr.split(';');
        if (fullArr != null && fullArr != "") {
            var orderTotal = 0;
            $(fullArr).each(function (index, value) {
                var machine = value.split(',');
                var productId = machine[0];
                var price = machine[1];
                var count = machine[2];
                $('#count' + productId).text(count);
                $('#total' + productId).text("$"+parseInt(count) * parseInt(price)+".00");
                orderTotal += parseInt(price) * parseInt(count);
            });
            $("#order-total").text("$"+orderTotal+".00");
        }
    }

    function setProposalFormData() {
        var form = $("#proposalForm");
        var products = [];
        var arr = localStorage.cartItemStr.split(';');
        for(var i=0; i<arr.length; i++){
            var arrItem = arr[i].split(',');
            products[i] = arrItem[0] + ',' + arrItem[2];
        }
        form.attr("action","proposal?products=" + products.join(';'));
    }

</script>

</body>
</html>