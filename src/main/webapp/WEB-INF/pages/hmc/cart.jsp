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

    <title>HMC. Cart</title>

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
    <link rel="shortcut icon" href="../resources/images/favicon.ico" type="text/css" media="screen"/>
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
                                <a onclick="goToList('list')">Horizontal Machining Centers</a>
                            </li>
                            <li class="breadcrumb-item current">
                                <a onclick="window.location.reload(true);">Shopping cart</a>
                            </li>
                        </ul>
                    </li><!-- /.breadcrumb-nav-holder -->
                </ul>
            </nav>
        </div><!-- /.container -->
    </div><!-- /#top-mega-nav -->

<section id="cart-page">
    <div class="container">
        <!-- ========================================= CONTENT ========================================= -->
        <div class="col-xs-12 col-md-8 items-holder no-margin">

            <c:if test="${empty cartList}">
            <div class="inner-xs">
                <div class="page-header">
                    <h2 class="page-title">
                        <br><br>Your cart is empty
                    </h2>
                </div>
            </div>
            </c:if>

            <c:if test="${!empty cartList}">
                <c:forEach items="${cartList}" var="machine">
                    <div class="row no-margin cart-item">
                        <div class="col-xs-12 col-sm-2 no-margin">
                            <a href="machine?productId=${machine.productId}" class="thumb-holder">
                                <img width="150" height="110" alt="${machine.model}" class="attachment-shop_thumbnail wp-post-image" src="../resources/images/blank.gif"
                                     data-echo="../resources/images/products/${machine.photo1}">
                            </a>
                        </div>

                        <div class="col-xs-12 col-sm-4 ">
                            <div class="title">
                                <a href="machine?productId=${machine.productId}">
                                    ${machine.machineTypeEn}<br>${machine.model}
                                </a>
                            </div>
                            <div class="brand">${machine.brand}</div>
                        </div>

                        <div class="col-xs-12 col-sm-3 no-margin">
                            <div class="quantity">
                                <div class="le-quantity">
                                    <a class="minus" href="#" onclick="minusFromCart('${machine.productId}')"></a>
                                    <input name="quantity" readonly="readonly" type="text" class="count${machine.productId}"/>
                                    <a class="plus" href="#add" onclick="plusToCart('${machine.productId}')"></a>
                                </div>
                            </div>
                        </div>

                        <div class="col-xs-12 col-sm-3 no-margin">
                            <div class="price" <c:if test="${pageContext.request.userPrincipal.name == null}">style="display: none"</c:if>>
                                $${machine.price}.00
                            </div>
                            <a class="close-btn" href="#" onclick="removeFromCart('${machine.productId}');goToCart()"></a>
                        </div>
                    </div><!-- /.cart-item -->
                </c:forEach>
                <br><br>
                <button class="le-button huge" onclick="goToProposal()">get commercial proposal (PDF)</button>
                <a class="le-button huge" onclick="goToCheckout()" >checkout</a><br><br>
                <a class="simple-link block" onclick="goToList('list')" >continue shopping</a>

            </c:if>
        </div>
        <!-- ========================================= CONTENT : END ========================================= -->

        <!-- ========================================= SIDEBAR ========================================= -->

        <div class="col-xs-12 col-md-4 no-margin sidebar" <c:if test="${pageContext.request.userPrincipal.name == null}">style="display: none"</c:if>>
            <div class="widget cart-summary">
                <h1 class="border">shopping cart</h1>
                <div class="body">
                    <ul class="tabled-data no-border inverse-bold">
                        <li>
                            <label>cart subtotal</label>
                            <div class="value pull-right">$<span class="cart-total"></span>.00</div>
                        </li>
                        <li>
                            <label>shipping</label>
                            <div class="value pull-right">free shipping</div>
                        </li>
                    </ul>
                    <ul id="total-price" class="tabled-data inverse-bold no-border">
                        <li>
                            <label>order total</label>
                            <div class="value pull-right">$<span class="cart-total"></span>.00</div>
                        </li>
                    </ul>
                </div>
            </div><!-- /.widget -->
        </div><!-- /.sidebar -->

        <!-- ========================================= SIDEBAR : END ========================================= -->
    </div>
</section>

<!-- ============================================================= FOOTER ============================================================= -->
<%@include file="footer.jsp" %>
<!-- ============================================================= FOOTER : END ============================================================= -->	</div><!-- /.wrapper -->

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