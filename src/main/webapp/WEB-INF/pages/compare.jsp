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
    <link rel="shortcut icon" href="resourcesd/images/favicon.ico">
</head>
<body>

<div class="wrapper">
    <!-- ============================================================= TOP NAVIGATION ============================================================= -->
    <nav class="top-bar animate-dropdown">
        <div class="container">
            <div class="col-xs-12 col-sm-6 no-margin">
                <ul>
                    <li><a href="list">Home</a></li>
                    <li><a href="#contacts">Contact</a></li>
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
                    </h2>
                </div>
            </div>
            <!-- /.section-page-title -->

            <div class="table-responsive inner-bottom-xs inner-top-xs">

                <table class="table table-bordered table-striped compare-list">
                    <thead>
                    <tr>
                        <td>&nbsp;</td>
                        <td class="text-center">
                            <div class="image-wrap">
                                <a data-product_id="39" href="#" class="remove-link"><i class="fa fa-times-circle"></i></a>
                                <img width="220" height="154" alt="Iconia W700" class="attachment-yith-woocompare-image"
                                     src="assets/images/products/product-01.jpg">
                            </div>
                            <p><strong>Iconia W700</strong></p>
                        </td>
                        <td class="text-center">
                            <div class="image-wrap">
                                <a data-product_id="34" href="#" class="remove-link"><i class="fa fa-times-circle"></i></a>
                                <img width="220" height="154" alt="POV Action Cam"
                                     class="attachment-yith-woocompare-image"
                                     src="assets/images/products/product-02.jpg">
                            </div>
                            <p><strong>AS100V Action Cam</strong></p>
                        </td>
                        <td class="text-center">
                            <div class="image-wrap">
                                <a data-product_id="30" href="#" class="remove-link"><i class="fa fa-times-circle"></i></a>
                                <img width="220" height="154" alt="PlayStation 4"
                                     class="attachment-yith-woocompare-image"
                                     src="assets/images/products/product-03.jpg">
                            </div>
                            <p><strong>PlayStation 4</strong></p>
                        </td>
                        <td class="text-center">
                            <div class="image-wrap">
                                <a data-product_id="20" href="#" class="remove-link"><i class="fa fa-times-circle"></i></a>
                                <img width="220" height="154" alt="Cyber-shot Digital Camera WX300"
                                     class="attachment-yith-woocompare-image"
                                     src="assets/images/products/product-04.jpg">
                            </div>
                            <p><strong>Cyber-shot Digital Camera WX300</strong></p>
                        </td>
                    </tr>
                    <tr class="tr-add-to-cart">
                        <td>&nbsp;</td>
                        <td class="text-center">
                            <div class="add-cart-button">
                                <a class="le-button add_to_cart_button  product_type_simple" href="index.php?page=cart">Add
                                    to cart</a>
                            </div>
                        </td>
                        <td class="text-center">
                            <div class="add-cart-button">
                                <a class="le-button add_to_cart_button  product_type_simple" href="index.php?page=cart">Add
                                    to cart</a>
                            </div>
                        </td>
                        <td class="text-center">
                            <div class="add-cart-button">
                                <a class="le-button add_to_cart_button  product_type_simple" href="index.php?page=cart">Add
                                    to cart</a>
                            </div>
                        </td>
                        <td class="text-center">
                            <div class="add-cart-button">
                                <a class="le-button add_to_cart_button  product_type_variable"
                                   href="index.php?page=cart">Add
                                    to cart</a>
                            </div>
                        </td>
                    </tr>
                    </thead>
                    <tbody>

                    <tr class="comparison-item price">
                        <th>Price</th>
                        <td class="comparison-item-cell odd product_39">
                            <span class="amount">$629.99</span>
                        </td>
                        <td class="comparison-item-cell even product_34">
                            <del><span class="amount">$299.99</span></del>
                            <ins><span class="amount">$269.99</span></ins>
                        </td>
                        <td class="comparison-item-cell odd product_30">
                            <span class="amount">$399.99</span>
                        </td>
                        <td class="comparison-item-cell even product_20">
                            <del><span class="amount">$329.99</span></del>
                            <ins><span class="amount">$249.99</span>&ndash;<span class="amount">$329.99</span></ins>
                        </td>
                    </tr>

                    <tr class="comparison-item description">
                        <th>Description</th>
                        <td class="comparison-item-cell odd product_39">
                            <p>Nulla sed sapien a ligula auctor maximus. Aliquam eget condimentum nunc. Maecenas
                                efficitur
                                pretium nunc in semper. Nullam ac luctus nisl. </p>
                        </td>
                        <td class="comparison-item-cell even product_34">
                            <p>Nulla sed sapien a ligula auctor maximus. Aliquam eget condimentum nunc. Maecenas
                                efficitur
                                pretium nunc in semper. Nullam ac luctus nisl. </p>
                        </td>
                        <td class="comparison-item-cell odd product_30">
                            <p>Nulla sed sapien a ligula auctor maximus. Aliquam eget condimentum nunc. Maecenas
                                efficitur
                                pretium nunc in semper. Nullam ac luctus nisl. </p>
                        </td>
                        <td class="comparison-item-cell even product_20">
                            <p>Nulla sed sapien a ligula auctor maximus. Aliquam eget condimentum nunc. Maecenas
                                efficitur
                                pretium nunc in semper. Nullam ac luctus nisl. </p>
                        </td>
                    </tr>

                    <tr class="comparison-item stock">
                        <th>Availability</th>

                        <td class="comparison-item-cell odd product_39">
                            <span class="label label-success"><span class="">In stock</span></span>
                        </td>
                        <td class="comparison-item-cell even product_34">
                            <span class="label label-success"><span class="">In stock</span></span>
                        </td>
                        <td class="comparison-item-cell odd product_30">
                            <span class="label label-success"><span class="">In stock</span></span>
                        </td>
                        <td class="comparison-item-cell even product_20">
                            <span class="label label-success"><span class="">In stock</span></span>
                        </td>
                    </tr>

                    <tr class="price repeated">
                        <th>Price</th>
                        <td class="odd product_39"><span class="amount">$629.99</span></td>
                        <td class="even product_34">
                            <del><span class="amount">$299.99</span></del>
                            <ins><span class="amount">$269.99</span></ins>
                        </td>
                        <td class="odd product_30"><span class="amount">$399.99</span></td>
                        <td class="even product_20">
                            <del><span class="amount">$329.99</span></del>
                            <ins><span class="amount">$249.99</span>&ndash;<span class="amount">$329.99</span></ins>
                        </td>
                    </tr>

                    </tbody>
                </table>
            </div>
            <!-- /.table-responsive -->
        </div>
        <!-- /.container -->
    </div>
    <!-- ================================================= FOOTER ========================================== -->
    <%@include file="footer.jsp" %>
    <!-- ============================================================= FOOTER : END ============================================================= -->
</div>
<!-- /.wrapper -->

<!-- JavaScripts placed at the end of the document so the pages load faster -->
<script src="assets/js/jquery-1.10.2.min.js"></script>
<script src="assets/js/jquery-migrate-1.2.1.js"></script>
<script src="assets/js/bootstrap.min.js"></script>
<script src="http://maps.google.com/maps/api/js?sensor=false&amp;language=en"></script>
<script src="assets/js/gmap3.min.js"></script>
<script src="assets/js/bootstrap-hover-dropdown.min.js"></script>
<script src="assets/js/owl.carousel.min.js"></script>
<script src="assets/js/css_browser_selector.min.js"></script>
<script src="assets/js/echo.min.js"></script>
<script src="assets/js/jquery.easing-1.3.min.js"></script>
<script src="assets/js/bootstrap-slider.min.js"></script>
<script src="assets/js/jquery.raty.min.js"></script>
<script src="assets/js/jquery.prettyPhoto.min.js"></script>
<script src="assets/js/jquery.customSelect.min.js"></script>
<script src="assets/js/wow.min.js"></script>
<script src="assets/js/scripts.js"></script>
<script src="http://w.sharethis.com/button/buttons.js"></script>

</body>
</html>