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

    <title>HMC.</title>

    <!-- Bootstrap Core CSS -->
    <link rel="stylesheet" href="resources/css/bootstrap.min.css" type="text/css" media="screen"/>

    <!-- Customizable CSS -->
    <link rel="stylesheet" href="resources/css/main.css" type="text/css" media="screen"/>
    <link rel="stylesheet" href="resources/css/green.css" type="text/css" media="screen"/>
    <link rel="stylesheet" href="resources/css/owl.carousel.css" type="text/css" media="screen"/>
    <link rel="stylesheet" href="resources/css/owl.transitions.css" type="text/css" media="screen"/>
    <link rel="stylesheet" href="resources/css/animate.min.css" type="text/css" media="screen"/>

    <!-- Fonts -->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800' rel='stylesheet' type='text/css'>

    <!-- Icons/Glyphs -->
    <link rel="stylesheet" href="resources/css/font-awesome.min.css" type="text/css" media="screen"/>

    <!-- Favicon -->
    <link rel="shortcut icon" href="resources/images/favicon.ico">

</head>
<body>

<div class="wrapper">
<!-- ============================================== TOP NAVIGATION ======================================= -->
<nav class="top-bar animate-dropdown">
    <div class="container">
        <div class="col-xs-12 col-sm-6 no-margin">
            <ul>
                <li><a href="/">Home</a></li>
                <li><a href="hmc/contact">Contact</a></li>
            </ul>
        </div>

        <div class="col-xs-12 col-sm-6 no-margin">
            <ul class="right">
                <c:if test="${pageContext.request.userPrincipal.name != null}">
                    <c:url value="/hmc/j_spring_security_logout" var="logoutUrl" />
                    <form:form action="${logoutUrl}" method="post" id="logoutForm">
                        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                    </form:form>
                    <li><a>Welcome, ${pageContext.request.userPrincipal.name}</a></li>
                    <li><a href="#" onclick="$('#logoutForm').submit()">Logout</a></li>
                </c:if>
                <c:if test="${pageContext.request.userPrincipal.name == null}">
                    <li><a href="hmc/authentication">Register</a></li>
                    <li><a href="hmc/authentication">Login</a></li>
                </c:if>
            </ul>
        </div>
    </div>
</nav>
<!-- ================================================ TOP NAVIGATION : END ========================================= -->

<!-- ================================================ HEADER ======================================================= -->
<header>
    <div class="container no-padding">

        <div class="col-xs-12 col-sm-12 col-md-3 logo-holder">
            <!-- ============================================================= LOGO ============================================================= -->
            <div class="logo">
                <a href="/">
                    <img alt="hmccnc.com" src="../resources/images/vmc_and_hmc.svg" width="233" height="54"/>
                </a>
            </div>
            <!-- /.logo -->
            <!-- ============================================================= LOGO : END ============================================================= -->
        </div>
        <!-- /.logo-holder -->

        <div class="col-xs-12 col-sm-12 col-md-5 top-search-holder no-margin">
            <div class="contact-row">
                <div class="phone inline">
                    <i class="fa fa-phone"></i> USA: <span class="le-color">+1 203 556-50-69</span><br>
                </div>
                <br>
                <div class="contact inline">
                    <i class="fa fa-envelope"></i> contact@<span class="le-color">hmccnc.com</span>
                </div>
            </div>
            <!-- /.contact-row -->
        </div>
        <!-- /.top-search-holder -->

        <div class="col-xs-12 col-sm-12 col-md-4 top-cart-row no-margin">
            <div class="top-cart-row-container">
                <div class="wishlist-compare-holder">
                    <div class="wishlist">
                        <a onclick="goToHmcWishList()"><i class="fa fa-heart"></i> wish list <span
                                id="wishList-value"></span> </a>
                    </div>
                    <div class="compare">
                        <a onclick="goToHmcComparison()"><i class="fa fa-exchange"></i> comparison <span
                                id="compare-value"></span> </a>
                    </div>
                </div>

                <!-- ============================================================= SHOPPING CART DROPDOWN ============================================================= -->
                <div class="top-cart-holder dropdown animate-dropdown">

                    <div class="basket">

                        <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                            <div class="basket-item-count">
                                <span class="count" id="cart-count"></span>
                                <img src="resources/images/icon-cart.png"/>
                            </div>

                            <div class="total-price-basket">
                                <span class="lbl">your cart</span>
                                <span class="total-price" <c:if test='${pageContext.request.userPrincipal.name == null}'>style="display: none"</c:if>>
                                    <span class="sign">$</span><span class="value cart-total">0</span>.00
                                </span>
                            </div>
                        </a>

                        <ul class="dropdown-menu">
                            <li id="li1" class="hidden">
                                <div class="basket-item">
                                    <div class="row">
                                        <div class="col-xs-4 col-sm-4 no-margin text-center">
                                            <div class="thumb">
                                                <img width="75" height="75" src="resources/images/blank.gif">
                                            </div>
                                        </div>
                                        <div class="col-xs-8 col-sm-8 no-margin">
                                            <div class="title"></div>
                                            <div class="price" <c:if test="${pageContext.request.userPrincipal.name == null}">style="display: none"</c:if>></div>
                                        </div>
                                    </div>
                                    <a class="close-btn" onclick="window.location.reload(true);"></a>
                                </div>
                            </li>
                            <li id="li2" class="hidden">
                                <div class="basket-item">
                                    <div class="row">
                                        <div class="col-xs-4 col-sm-4 no-margin text-center">
                                            <div class="thumb">
                                                <img width="75" height="75" src="resources/images/blank.gif">
                                            </div>
                                        </div>
                                        <div class="col-xs-8 col-sm-8 no-margin">
                                            <div class="title"></div>
                                            <div class="price" <c:if test="${pageContext.request.userPrincipal.name == null}">style="display: none"</c:if>></div>
                                        </div>
                                    </div>
                                    <a class="close-btn" onclick="window.location.reload(true);"></a>
                                </div>
                            </li>
                            <li id="li3" class="hidden">
                                <div class="basket-item">
                                    <div class="row">
                                        <div class="col-xs-4 col-sm-4 no-margin text-center">
                                            <div class="thumb">
                                                <img width="75" height="75" src="resources/images/blank.gif">
                                            </div>
                                        </div>
                                        <div class="col-xs-8 col-sm-8 no-margin">
                                            <div class="title"></div>
                                            <div class="price" <c:if test="${pageContext.request.userPrincipal.name == null}">style="display: none"</c:if>></div>
                                        </div>
                                    </div>
                                    <a class="close-btn" onclick="window.location.reload(true);"></a>
                                </div>
                            </li>
                            <li class="checkout">
                                <div class="basket-item">
                                    <div class="row">
                                        <div class="col-xs-12 col-sm-6">
                                            <a class="le-button" onclick="goToHmcCart()">View cart</a>
                                        </div>
                                        <div class="col-xs-12 col-sm-6">
                                            <a onclick="goToHmcCheckout()" class="le-button">Checkout</a>
                                        </div>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                    <!--/.basket-->
                </div>

                <!-- /.top-cart-holder -->
            </div>
            <!-- /.top-cart-row-container -->
            <!-- ============================================================= SHOPPING CART DROPDOWN : END ============================================================= -->
        </div>
        <!-- /.top-cart-row -->

    </div>
    <!-- /.container -->
</header>
<!-- =============================================== HEADER : END ================================================ -->
<div class="container">
    <div class="col-xs-12 col-sm-12">
        <br><br><br>
    </div>
		<div class="col-xs-12 col-sm-4 col-md-3 sidemenu-holder">
			<!-- ================================== TOP NAVIGATION ================================== -->
            <div class="side-menu animate-dropdown">
                <div class="head"><i class="fa fa-list"></i>All departments</div>
                <nav class="yamm megamenu-horizontal" role="navigation">
                    <ul class="nav">
                        <li class="dropdown menu-item">
                            <a href="hmc/">Horizontal machining centres</a>
                        </li>
                    </ul><!-- /.nav -->
                </nav><!-- /.megamenu-horizontal -->
            </div><!-- /.side-menu -->
            <!-- ================================== TOP NAVIGATION : END ================================== -->
        </div><!-- /.sidemenu-holder -->

		<div class="col-xs-12 col-sm-8 col-md-9 homebanner-holder">
			<!-- ========================================== SECTION – HERO ========================================= -->
<div id="hero">
	<div id="owl-main" class="owl-carousel owl-inner-nav owl-ui-sm">
		
		<div class="item" style="background-image: url(resources/images/back1.jpg);">
			<div class="container-fluid">
				<div class="caption vertical-center text-left">
					<div class="big-text fadeInDown-1">
						Choose machines
					</div>
					<div class="excerpt fadeInDown-2">
						and be happy
					</div>
				</div><!-- /.caption -->
			</div><!-- /.container-fluid -->
		</div><!-- /.item -->

		<div class="item" style="background-image: url(resources/images/back2.jpg);">
			<div class="container-fluid">
				<div class="caption vertical-center text-left">
					<div class="big-text fadeInDown-1">
						Being happy
					</div>
					<div class="excerpt fadeInDown-2">
						while shopping
					</div>
				</div><!-- /.caption -->
			</div><!-- /.container-fluid -->
		</div><!-- /.item -->

	</div><!-- /.owl-carousel -->
</div>
			
<!-- ========================================= SECTION – HERO : END ========================================= -->			
		</div><!-- /.homebanner-holder -->

	</div><!-- /.container -->
</div><!-- /#top-banner-and-menu -->

<br><br><br><br><br><br>
<!-- ========================================= MAIN : END ========================================= -->		<!-- ============================================================= FOOTER ============================================================= -->
<%@include file="hmc/footer.jsp" %>
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
<script src="resources/js/comparison,wishlist,cart,common.jsp"></script>

</body>
</html>