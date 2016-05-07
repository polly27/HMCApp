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
<div id="top-mega-nav">
    <div class="container">
        <nav>
            <ul class="inline">
                <li class="dropdown le-dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        <i class="fa fa-list"></i> shop by department
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="#">Computer Cases & Accessories</a></li>
                        <li><a href="#">CPUs, Processors</a></li>
                        <li><a href="#">Motherboard Components</a></li>
                    </ul>
                </li>

                <li class="breadcrumb-nav-holder"> 
                    <ul>
                        <li class="breadcrumb-item">
                            <a href="index.html">Home</a>
                        </li>
                        <li class="breadcrumb-item current gray">
                            <a href="track-your-order.jsp">Track your Order</a>
                        </li>
                    </ul>
                </li><!-- /.breadcrumb-nav-holder -->
            </ul>
        </nav>
    </div><!-- /.container -->
</div><!-- /#top-mega-nav -->
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
                
                <p>To track your order please enter your Order ID in the box below and press return. This was given to you on your receipt and in the confirmation email you should have received.</p>
                
                <form class="track_order" method="post" action="http://demo.transvelo.com/media-center-wp/woocommerce-pages/track-your-order/track-your-order.jsp">

                    <div class="field-row row form-row form-row-first">
                        <div class="col-xs-12">
                            <label for="orderid">Order ID</label> 
                            <input type="text" placeholder="Found in your order confirmation email." id="orderid" name="orderid" class="le-input input-text">
                        </div>
                    </div>

                    <div class="field-row row form-row form-row-last">
                        <div class="col-xs-12">
                            <label for="order_email">Billing Email</label> 
                            <input type="text" placeholder="Email you used during checkout." id="order_email" name="order_email" class="le-input input-text">
                        </div>
                    </div>

                    <div class="form-row buttons-holder">
                        <input type="submit" value="Track" name="track" class="le-button huge button">
                    </div>
                </form>
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