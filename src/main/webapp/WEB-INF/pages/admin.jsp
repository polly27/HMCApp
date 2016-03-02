<%@ page language="java" contentType="text/html; charset=utf8"
         pageEncoding="utf8" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"><html>
<html lang="en">
<head>
    <!-- Meta -->
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">

    <title>Admin</title>

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
    <!-- ============================================== TOP NAVIGATION ======================================= -->
    <nav class="top-bar animate-dropdown">
        <div class="container">
            <div class="col-xs-12 col-sm-6 no-margin">
                <ul>
                    <li><a href="list.jsp">Catalog</a></li>
                    <li><a href="admin.jsp">Admin page</a></li>
                </ul>
            </div>

            <div class="col-xs-12 col-sm-6 no-margin">
                <ul class="right">
                    <li><a href="authentication.html">Log out</a></li>
                </ul>
            </div>
        </div>
    </nav>
    <!-- ================================================ TOP NAVIGATION : END ========================================= -->

    <!-- ================================================ HEADER ======================================================= -->
    <header class="no-padding">
        <div class="container no-padding">

            <div class="row">

                <div class="col-xs-5 col-sm-5 col-md-5 col-lg-5 logo-holder">
                    <a href="list">
                        <img alt="logo" src="resources/images/logo.png" class="img-responsive"/>
                    </a>
                </div>

                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4 col-lg-offset-3 col-md-offset-3 col-sm-offset-3 col-xs-offset-3 top-search-holder">
                    <div class="row">
                        <div class="col-xs-12 col-md-12">

                            <div class="contact-row">
                                <div class="phone inline">
                                    <i class="fa fa-phone"></i> +375 29 255-88-88
                                </div>
                                <div class="contact inline">
                                    <i class="fa fa-envelope"></i><span class="le-color">MachineCenters@gmail.com</span>
                                </div>
                            </div>

                        </div>
                    </div>

                </div>
                <!-- /.top-cart-row -->

            </div>
        </div>
        <!-- /.container -->

    </header>
    <!-- =============================================== HEADER : END ================================================ -->
    <hr>

    <section id="admin">
        <div class="container">
            <div class="col-xs-6 col-md-6 admin-actions">
                <h1>Add / update machine</h1>
                <hr width="65%" align="center">
                <br>
                <form:form method="post" action="/admin/addCSV" enctype="multipart/form-data">
                    <div class="field-row">
                        <input type="text" id="textFileName" class="filename" style="padding-left: 20%" disabled/>
                        <div class="file-upload" style="width:60%; margin-left: 20%;">
                            <label>
                                <input type="file" name="textFile" id="textFile" required/>
                                <span>Choose the file with machines</span>
                            </label>
                        </div>
                        <button type="submit" class="le-button huge">Add / update</button>
                    </div>
                </form:form>

            </div>

            <div class="col-xs-6 col-md-6 admin-actions">
                <h1>Load photos</h1>
                <hr width="50%" align="center">

                <form:form method="post" action="/addPhotos" enctype="multipart/form-data">
                    <div class="field-row">
                        <textarea id="photosNameList" cols="25" rows="2" class="filename" disabled></textarea>
                        <div class="file-upload" style="width:40%; margin-left: 30%;">
                            <label>
                                <input type="file" name="photosCollection" id="photosFile" multiple required/>
                                <span>Choose photos</span>
                            </label>
                        </div>
                        <button type="submit" class="le-button huge">Load</button>
                    </div>
                </form:form>

            </div>

        </div>
    </section>

    <br>
    <!-- ================================================= FOOTER ========================================== -->
    <footer id="footer" class="color-bg">
        <div class="copyright-bar">
            <div class="container">
                <div class="col-xs-12 col-sm-6 no-margin">
                    <div class="copyright">
                        &copy; HMC - all rights reserved
                    </div>
                </div>
            </div>
        </div>
    </footer>
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

<script type="text/javascript">
    $(document).ready( function() {
        $("#textFile").change(function(){
            var fileName = $(this).val().replace(/.*\\/, "");
            $("#textFileName").val(fileName);
        });
        $("#photosFile").change(function(){
            var files = $(this)[0].files;
            var nameList = "";
            for (var i = 0; i < files.length; i++) {
                nameList += files[i].name.replace(/.*\\/, "") + ", ";
            }
            nameList = nameList.substr(0, nameList.length - 2);
            $("#photosNameList").val(nameList);
        });
    });
</script>


</body>
</html>