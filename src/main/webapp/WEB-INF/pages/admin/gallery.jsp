<%@ page language="java" contentType="text/html; charset=utf8"
         pageEncoding="utf8" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="cs" lang="cs">
<head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <meta name='robots' content='all, follow'/>
    <meta name="description" content=""/>
    <meta name="keywords" content=""/>
    <title>Admin. Gallery</title>
    <link href="../resources/admin/css/default.css" rel="stylesheet" type="text/css" media="screen"/>
    <link href="../resources/admin/css/gray.css" rel="stylesheet" type="text/css" media="screen"/>
    <!-- color skin: blue / red / green / dark -->
    <link href="../resources/admin/css/datePicker.css" rel="stylesheet" type="text/css" media="screen"/>
    <link href="../resources/admin/css/wysiwyg.css" rel="stylesheet" type="text/css" media="screen"/>
    <link href="../resources/admin/css/fancybox-1.3.1.css" rel="stylesheet" type="text/css" media="screen"/>
    <link href="../resources/admin/css/visualize.css" rel="stylesheet" type="text/css" media="screen"/>

    <!-- Bootstrap Core CSS -->
    <link rel="stylesheet" href="../resources/css/bootstrap.min.css">

    <script type="text/javascript" src="../resources/admin/js/jquery-1.4.2.min.js"></script>
    <script type="text/javascript" src="../resources/admin/js/jquery.dimensions.min.js"></script>

    <!-- // Tabs // -->
    <script type="text/javascript" src="../resources/admin/js/ui.core.js"></script>
    <script type="text/javascript" src="../resources/admin/js/jquery.ui.tabs.min.js"></script>

    <!-- // Table drag and drop rows // -->
    <script type="text/javascript" src="../resources/admin/js/tablednd.js"></script>

    <!-- // Date Picker // -->
    <script type="text/javascript" src="../resources/admin/js/date.js"></script>
    <!--[if IE]><script type="text/javascript" src="public/js/jquery.bgiframe.js"></script><[endif]-->
    <script type="text/javascript" src="../resources/admin/js/jquery.datePicker.js"></script>

    <!-- // Wysiwyg // -->
    <script type="text/javascript" src="../resources/admin/js/jquery.wysiwyg.js"></script>

    <!-- // Graphs // -->
    <script type="text/javascript" src="../resources/admin/js/excanvas.js"></script>
    <script type="text/javascript" src="../resources/admin/js/jquery.visualize.js"></script>

    <!-- // Fancybox // -->
    <script type="text/javascript" src="../resources/admin/js/jquery.fancybox-1.3.1.js"></script>

    <!-- // File upload // -->
    <script type="text/javascript" src="../resources/admin/js/jquery.filestyle.js"></script>

    <script type="text/javascript" src="../resources/admin/js/init.js"></script>
</head>
<body>
<div id="main">
    <%@include file="header.jsp" %>
    <!-- #content -->
<div id="content">

    <!-- breadcrumbs -->
    <div class="breadcrumbs">
        <ul>
            <li class="home"><a href="machines">Machines</a></li>
            <li class="home">&nbsp;|&nbsp;</li>
            <li class="home"><a href="gallery" style="font-weight: bold; color: #008B00">Gallery</a></li>
            <li class="home">&nbsp;|&nbsp;</li>
            <li class="home"><a href="orders">Orders</a></li>
            <li class="home">&nbsp;|&nbsp;</li>
            <li class="home"><a href="users">Users</a></li>
        </ul>
    </div>
    <!-- /breadcrumbs -->

    <!-- box -->
    <div class="tabs box">

        <ul class="bookmarks">
            <li><a href="#gallery">Gallery</a></li>
            <li><a href="#upload">Load images</a></li>
        </ul>

        <div class="box-content">

            <div id="gallery">
                <div class="gallery tab">
                    <c:forEach items="${imageList}" var="image">
                        <div class="item">
                            <div class="thumb">
                                <a href="../resources/images/products/${image}" class="fancy" rel="group">
                                    <img src="../resources/images/products/${image}" height="150"/>
                                </a>
                                <span>${image} <a href="gallery/remove?image=${image}" class="ico ico-delete"></a></span>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>

            <div id="upload">
                <form class="formBox" method="post" action="gallery/upload" enctype="multipart/form-data">

                    <fieldset>
                        <div class="clearfix file">
                            <div class="lab"><label for="imageFile">Upload images</label></div>
                            <div class="con">
                                <input type="file" accept="image/*" name="imageCollection" class="upload-file"
                                       id="imageFile" multiple required/>
                            </div>
                        </div>
                        - N files<br>
                        - any image format<br>
                        <br><br>

                        <div class="btn-submit"><!-- Submit form -->
                            <input type="submit" value="Load" class="button"/>
                        </div>
                    </fieldset>

                </form>
            </div>

        </div>
        <!-- box-content -->
    </div>
    <!-- /box -->

</div>
<!-- /#content -->
    <%@include file="footer.jsp" %>
</div>
<!-- /#main -->

<script type="text/javascript">
    $(document).ready(function () {
        $("#imageFile").change(function () {
            changeNames($(this));
        });
    });
</script>

</body>
</html>