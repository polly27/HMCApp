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

    <title>HMC. Wish list</title>

    <!-- Bootstrap Core CSS -->
    <link rel="stylesheet" href="/resources/css/bootstrap.min.css" type="text/css" media="screen"/>

    <!-- Customizable CSS -->
    <link rel="stylesheet" href="/resources/css/main.css" type="text/css" media="screen"/>
    <link rel="stylesheet" href="/resources/css/green.css" type="text/css" media="screen"/>
    <link rel="stylesheet" href="/resources/css/owl.carousel.css" type="text/css" media="screen"/>
    <link rel="stylesheet" href="/resources/css/owl.transitions.css" type="text/css" media="screen"/>
    <link rel="stylesheet" href="/resources/css/animate.min.css" type="text/css" media="screen"/>

    <!-- Fonts -->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800' rel='stylesheet' type='text/css'>

    <!-- Icons/Glyphs -->
    <link rel="stylesheet" href="/resources/css/font-awesome.min.css" type="text/css" media="screen"/>

    <!-- Favicon -->
    <link rel="shortcut icon" href="/resources/images/favicon.ico">
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
                            <li><a href="#">First department</a></li>
                            <li><a href="#">Second department</a></li>
                        </ul>
                    </li>

                    <li class="breadcrumb-nav-holder">
                        <ul>
                            <li class="breadcrumb-item gray">
                                <a href="#">Home</a>
                            </li>
                            <li class="breadcrumb-item gray">
                                <a href="list">Horizontal Machine Centers</a>
                            </li>
                            <li class="breadcrumb-item current">
                                <a href="../">Wish list</a>
                            </li>
                        </ul>
                    </li><!-- /.breadcrumb-nav-holder -->
                </ul>
            </nav>
        </div><!-- /.container -->
    </div><!-- /#top-mega-nav -->

    <div class="main-content" id="main-content">
<div class="container" id="compare-container">
    <!-- /.section-page-title -->
	<div class="row">
		<div class="col-lg-11 center-block page-wishlist style-cart-page inner-bottom-xs">

			<div class="inner-xs">
				<div class="page-header">
					<h2 class="page-title">
                        My Wish List
                        <c:if test="${empty wishList}">
                            <br><br>is empty
                        </c:if>
                    </h2>
				</div>
			</div><!-- /.section-page-title -->

            <c:if test="${!empty wishList}">
			<div class="items-holder">
				<div class="wishlist_table">
                    <c:forEach items="${wishList}" var="machine">
                    <div class="row cart-item cart_item" id="yith-wcwl-row-1">
						
						<div class="col-xs-12 col-sm-1">
							<span onclick="removeFromWishListAndReloadPage('${machine.productId}')" class="remove_from_wishlist remove-item">×</span>
						</div>

	                	<div class="col-xs-12 col-sm-2">
	                    	<a href="machine?productId=${machine.productId}">
								<img width="150" height="110" alt="${machine.model}" class="attachment-shop_thumbnail wp-post-image" src="/resources/images/blank.gif"
                                     data-echo="/resources/images/products/${machine.photo1}">
                                <span id="photo${machine.productId}" hidden="hidden">${machine.photo1}</span>
							</a>
	                    </div>
	                	<div class="col-xs-12 col-sm-4">
	                    	<div class="title">
                                <a href="machine?productId=${machine.productId}">
                                    ${machine.machineTypeEn}<br><span id="model${machine.productId}">${machine.model}</span>
                                </a>
	                    	</div><!-- /.title -->
                            <span id="brand${machine.productId}">${machine.brand}</span>
	                    </div>
						
		                <div class="col-xs-12 col-sm-2">
		                	<div class="price" <c:if test="${pageContext.request.userPrincipal.name == null}">style="display: none"</c:if>>
			                	<span class="amount">$<span id="price${machine.productId}">${machine.price}</span>.00</span>
			                </div>
		                </div>
						
						<div class="col-xs-12 col-sm-3">
							<div class="text-right">
								<div class="add-cart-button">
                                    <a class="cart${machine.productId} le-button add_to_cart_button product_type_simple"
                                       onclick="addToCart('${machine.productId}')">add to cart</a>
								</div>
							</div>
						</div>
	              	
	              	</div><!-- /.cart-item -->
                    </c:forEach>
				</div><!-- /.wishlist-table -->
			</div><!-- /.items-holder -->
            </c:if>

		</div><!-- .large-->
	</div><!-- .row-->	
</div>		<!-- ============================================================= FOOTER ============================================================= -->
    <!-- ================================================= FOOTER ========================================== -->
    <%@include file="footer.jsp" %>
    <!-- ============================================================= FOOTER : END ============================================================= -->
</div>
    <!-- /.wrapper -->

    <!-- JavaScripts placed at the end of the document so the pages load faster -->
    <script src="/resources/js/jquery-1.10.2.min.js"></script>
    <script src="/resources/js/jquery-migrate-1.2.1.js"></script>
    <script src="/resources/js/bootstrap.min.js"></script>
    <script src="http://maps.google.com/maps/api/js?sensor=false&amp;language=en"></script>
    <script src="/resources/js/gmap3.min.js"></script>
    <script src="/resources/js/bootstrap-hover-dropdown.min.js"></script>
    <script src="/resources/js/owl.carousel.min.js"></script>
    <script src="/resources/js/css_browser_selector.min.js"></script>
    <script src="/resources/js/echo.min.js"></script>
    <script src="/resources/js/jquery.easing-1.3.min.js"></script>
    <script src="/resources/js/bootstrap-slider.min.js"></script>
    <script src="/resources/js/jquery.raty.min.js"></script>
    <script src="/resources/js/jquery.prettyPhoto.min.js"></script>
    <script src="/resources/js/jquery.customSelect.min.js"></script>
    <script src="/resources/js/wow.min.js"></script>
    <script src="/resources/js/scripts.js"></script>
    <script src="http://w.sharethis.com/button/buttons.js"></script>
    <script src="/resources/js/comparison,wishlist,cart.jsp"></script>

</body>
</html>