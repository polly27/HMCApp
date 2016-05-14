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

    <title>HMC. Checkout</title>

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
<!-- ============================================================= TOP NAVIGATION ============================================================= -->
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
                            <li class="breadcrumb-item gray">
                                <a href="#" onclick="goToCart()">Shopping cart</a>
                            </li>
                            <li class="breadcrumb-item current">
                                <a href="../">Checkout process</a>
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
    <!-- ========================================= BREADCRUMB : END ========================================= --></div>
<!-- ========================================= CONTENT ========================================= -->

<section id="checkout-page">
    <div class="container">
        <div class="col-xs-12 no-margin">

            <c:if test="${!empty checkoutList}">
                <form:form method="post" action="checkout" id="form">
                    <div class="billing-address">
                        <h2 class="border h1">billing address</h2>

                        <div class="row field-row">
                            <div class="col-xs-12 col-sm-6">
                                <label>name*</label>
                                <input class="le-input" name="firstName" type="text"/><br>
                            </div>
                            <div class="col-xs-12 col-sm-6">
                                <label>last name*</label>
                                <input class="le-input" name="lastName" type="text"/><br>
                            </div>
                        </div>
                        <!-- /.field-row -->

                        <div class="row field-row">
                            <div class="col-xs-12">
                                <label>company name</label>
                                <input class="le-input" name="company" type="text"/><br>
                            </div>
                        </div>
                        <!-- /.field-row -->

                        <div class="row field-row">
                            <div class="col-xs-12">
                                <label>address (country, city, street, house)*</label>
                                <input class="le-input" name="address" type="text"/><br>
                            </div>
                        </div>
                        <!-- /.field-row -->

                        <div class="row field-row">
                            <div class="col-xs-12 col-sm-4">
                                <label>postcode / zip*</label>
                                <input class="le-input" name="postcode" type="number"/><br>
                            </div>
                            <div class="col-xs-12 col-sm-4">
                                <label id="label-email">email*<span style='color:crimson' class="hidden"> (invalid email)</span></label>
                                <input class="le-input" name="email" type="text"/>
                            </div>

                            <div class="col-xs-12 col-sm-4">
                                <label>phone number*</label>
                                <input class="le-input" name="phone" type="text"/>
                            </div>
                        </div>
                        <!-- /.field-row -->
                    </div>
                    <!-- /.billing-address -->

                    <section id="your-order">
                        <h2 class="border h1">your order</h2>
                        <c:forEach items="${checkoutList}" var="machine">
                            <div class="row no-margin order-item">
                                <div class="col-xs-12 col-sm-1 no-margin">
                                    <a href="#" class="qty">
                                        <span id="count${machine.productId}"></span> x
                                    </a>
                                </div>

                                <div class="col-xs-12 col-sm-9 ">
                                    <div class="title">
                                        <a href="machine?productId=${machine.productId}">
                                                ${machine.machineTypeEn} ${machine.model}
                                        </a>
                                    </div>
                                    <div class="brand">${machine.brand}</div>
                                </div>

                                <div class="col-xs-12 col-sm-2 no-margin">
                                    <div class="price">$${machine.price}.00</div>
                                </div>
                            </div>
                            <!-- /.order-item -->
                        </c:forEach>
                    </section>
                    <!-- /#your-order -->

                    <div id="total-area" class="row no-margin">
                        <div class="col-xs-12 col-lg-4 col-lg-offset-8 no-margin-right">
                            <div id="subtotal-holder">
                                <ul class="tabled-data inverse-bold no-border">
                                    <li>
                                        <label>cart subtotal</label>
                                        <div class="value ">$<span class="cart-total"></span>.00</div>
                                    </li>
                                    <li>
                                        <label>shipping</label>
                                        <div class="value">
                                            <div class="radio-group">
                                                <input class="le-radio" type="radio" name="group1" value="free" checked> <div class="radio-label bold">free shipping</div><br>
                                                <input class="le-radio" type="radio" name="group1" value="local" >  <div class="radio-label">local delivery<br><span class="bold">$15</span></div>
                                            </div>
                                        </div>
                                    </li>
                                </ul><!-- /.tabled-data -->

                                <ul id="total-field" class="tabled-data inverse-bold ">
                                    <li>
                                        <label>order total</label>
                                        <div class="value">$<span class="cart-total"></span>.00</div>
                                    </li>
                                </ul><!-- /.tabled-data -->

                            </div><!-- /#subtotal-holder -->
                        </div><!-- /.col -->
                    </div><!-- /#total-area -->

                    <div id="payment-method-options">
                        <h2 class="border h1">Payment method</h2>

                        <div class="payment-method-option">
                            <input class="le-radio" type="radio" name="payment" value="direct" checked>

                            <div class="radio-label bold ">Direct Bank Transfer<br>

                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce rutrum tempus elit,
                                    vestibulum vestibulum erat ornare id.</p>
                            </div>
                        </div>
                        <!-- /.payment-method-option -->

                        <div class="payment-method-option">
                            <input class="le-radio" type="radio" name="payment" value="cheque">

                            <div class="radio-label bold ">cheque payment</div>
                        </div>
                        <!-- /.payment-method-option -->

                        <div class="payment-method-option">
                            <input class="le-radio" type="radio" name="payment" value="paypal">

                            <div class="radio-label bold ">paypal system</div>
                        </div>
                        <!-- /.payment-method-option -->
                    </div>
                    <!-- /#payment-method-options -->

                    <input type="hidden" name="orderList">
                    <input type="hidden" name="total">

                    <div class="place-order-button">
                        <button class="le-button huge" type="submit">place order</button>
                    </div>
                    <!-- /.place-order-button -->
                </form:form>
            </c:if>

        </div>
        <!-- /.col -->
    </div>
    <!-- /.container -->
</section>
<!-- /#checkout-page -->
<!-- ========================================= CONTENT : END ========================================= -->
<!-- ============================================================= FOOTER ============================================================= -->
<!-- ================================================= FOOTER ========================================== -->
<%@include file="footer.jsp" %>
<!-- ============================================================= FOOTER : END ============================================================= -->

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
<script type="text/javascript">
    $(document).ready(function () {
        var arr = localStorage.cartItemStr.split(';');
        $.each(arr, function (index, value) {
            var item = value.split(',');
            $("#count" + item[0]).html(item[2]);
        });
        $("input[name='orderList']").val(localStorage.cartItemStr);
        $("input[name='total']").val(localStorage.cartTotal);
        $('#form').submit(function(){
            var send = true;
            var inputs = ['firstName','lastName','address','postcode','email','phone'];
            $.each(inputs, function (index, value) {
                var input = $("input[name='"+value+"']");
                if(!input.val()) {
                    input.addClass('red');
                    send = false;
                } else {
                    input.removeClass('red');
                    input.val(input.val().trim());
                    if(value=='email') {
                        var re = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
                        var span = $("#label-email span");
                        if(!re.test(input.val())){
                            input.addClass('red');
                            span.removeClass('hidden');
                            send = false;
                        } else {
                            span.addClass('hidden');
                        }
                    }
                }
            });
            $("html, body").animate({ scrollTop: 30 }, "fast");
            return send;
        });
    });

</script>

</body>
</html>