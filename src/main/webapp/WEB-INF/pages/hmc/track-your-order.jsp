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

    <title>HMC. Track your order</title>

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
                            <i class="fa fa-list"></i> shop by department
                        </a>
                        <ul class="dropdown-menu">
                            <li><a onclick="goToList('list')">Horizontal machining centers</a></li>
                        </ul>
                    </li>

                    <li class="breadcrumb-nav-holder">
                        <ul>
                            <li class="breadcrumb-item">
                                <a href="/">Home</a>
                            </li>
                            <li class="breadcrumb-item current gray">
                                <a onclick="window.location.reload(true);">Track your Order</a>
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
    <!-- ========================================= BREADCRUMB : END ========================================= -->
</div>
<div class="main-content page-track-your-order" id="main-content">

    <div class="inner-xs">
        <div class="page-header">
            <h2 class="page-title">Track your Order</h2>
        </div>
    </div>

    <div class="row inner-bottom-sm">
        <div class="col-lg-8 center-block">

            <div class="section">

                <c:if test="${!empty message}">
                    <p style="color: #59b210">
                        ${message}
                    </p>
                </c:if>

                <p>To track your order please enter your order ID (can be found in letter, e.g.
                    0496baae-e083-4133-abee-864e4998b99d)<br>
                </p>

                <form:form id="form" method="post">
                    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />

                    <div class="field-row row form-row form-row-first">
                        <div class="col-xs-12">
                            <label>Order ID</label>
                            <input type="text" name="orderId" class="le-input input-text" value="${orderId}"/>
                        </div>
                    </div>

                    <div class="form-row buttons-holder">
                        <input type="submit" value="Track" class="le-button huge button">
                    </div>
                </form:form>
            </div>
        </div>
    </div>
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
        $('#form').submit(function () {
            var input = $("input[name='orderId']");
            if (!input.val()) {
                input.addClass('red');
                return false;
            }
            input.val(input.val().trim());
        });
    });

</script>

</body>
</html>