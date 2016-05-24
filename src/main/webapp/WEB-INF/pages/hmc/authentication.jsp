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

    <title>HMC. Authentication</title>

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
                        <li class="breadcrumb-item current">
                            <a onclick="window.location.reload(true);">Authentication</a>
                        </li>
                    </ul>
                </li><!-- /.breadcrumb-nav-holder -->
            </ul>
        </nav>
    </div><!-- /.container -->
</div><!-- /#top-mega-nav -->
<!-- ============================================================= HEADER : END ============================================================= -->
    <!-- ========================================= MAIN ========================================= -->
<main id="authentication" class="inner-bottom-md">
	<div class="container">
		<div class="row">

            <c:if test="${not empty error}">
                <h2>${error}</h2>
            </c:if>
            <c:if test="${not empty msg}">
                <h2>${msg}</h2>
            </c:if>

            <div class="col-md-6">
				<section class="section sign-in inner-right-xs">
					<h2 class="bordered">Sign In</h2>

                    <c:url value="/hmc/j_spring_security_check" var="loginUrl" />
                    <form:form class="login-form cf-style-1" action="${loginUrl}" method="post">
						<div class="field-row">
                            <label>Username or email</label>
                            <input type="text" class="le-input" name="username">
                        </div><!-- /.field-row -->

                        <div class="field-row">
                            <label>Password</label>
                            <input type="password" class="le-input" name="password">
                        </div><!-- /.field-row -->

                        <div class="field-row clearfix">
                        	<span class="pull-left">
                        		<label class="content-color">
                                    <input type="checkbox" class="le-checbox auto-width inline" name="_spring_security_remember_me" />
                                    <span class="bold">Remember me</span>
                                </label>
                        	</span>
                        	<span class="pull-right">
                        		<a href="#" class="content-color bold">Forgotten Password ?</a>
                        	</span>
                        </div>

                        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />

                        <div class="buttons-holder">
                            <button type="submit" class="le-button huge">Sign In</button>
                        </div><!-- /.buttons-holder -->
					</form:form><!-- /.cf-style-1 -->

				</section><!-- /.sign-in -->
			</div><!-- /.col -->

			<div class="col-md-6">
				<section class="section register inner-left-xs">
					<h2 class="bordered">Register</h2>

					<form:form class="login-form cf-style-1" method="post">
                        <div class="field-row">
                            <label>Username</label>
                            <input type="text" class="le-input" name="username" required>
                        </div><!-- /.field-row -->

                        <div class="field-row">
                            <label>Password</label>
                            <input type="text" class="le-input" name="password" required>
                        </div><!-- /.field-row -->

                        <div class="field-row">
                            <label>Email</label>
                            <input type="text" class="le-input" name="email" required>
                        </div><!-- /.field-row -->

                        <div class="buttons-holder">
                            <button type="submit" class="le-button huge">Create account</button>
                        </div><!-- /.buttons-holder -->
					</form:form>

                    <br><br>
					<h2 class="semi-bold">Sign up today and you'll be able to :</h2>

					<ul class="list-unstyled list-benefits">
						<li><i class="fa fa-check primary-color"></i> See the cost of the machines</li>
						<li><i class="fa fa-check primary-color"></i> Make the checkout a bit easier</li>
					</ul>

				</section><!-- /.register -->

			</div><!-- /.col -->

		</div><!-- /.row -->
	</div><!-- /.container -->
</main><!-- /.authentication -->
<!-- ========================================= MAIN : END ========================================= -->		<!-- ============================================================= FOOTER ============================================================= -->
    <%@include file="footer.jsp" %>
    <!-- ============================================================= FOOTER : END ============================================================= -->
</div>
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