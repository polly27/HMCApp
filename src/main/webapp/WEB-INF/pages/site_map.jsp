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

    <title>HMC. Site map</title>

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
    <%@include file="hmc/header.jsp" %>

    <div class="main-content" id="main-content">
        <div class="container" id="compare-container">
            <h1>Site Map</h1>
            <hr>
            <a href="hmc/contact">Contact</a><br><br>

            <h2><a href="hmc/list">Catalog HMC</a></h2>
            <c:forEach items="${shortMachineList}" var="machine">
                <a href="hmc/machine?productId=${machine[0]}">${machine[1]} - ${machine[2]}</a><br>
            </c:forEach>

            <br><br><br>
        </div>
        <%@include file="hmc/footer.jsp" %>
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