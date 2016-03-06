<%@ page language="java" contentType="text/html; charset=utf8"
         pageEncoding="utf8" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="cs" lang="cs">
<head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <meta name='robots' content='all, follow' />
    <meta name="description" content="" />
    <meta name="keywords" content="" />
    <title>Great admin</title>
    <link href="resources/admin/css/default.css" rel="stylesheet" type="text/css" media="screen" />
    <link href="resources/admin/css/gray.css" rel="stylesheet" type="text/css" media="screen" /> <!-- color skin: blue / red / green / dark -->
    <link href="resources/admin/css/datePicker.css" rel="stylesheet" type="text/css" media="screen" />
    <link href="resources/admin/css/wysiwyg.css" rel="stylesheet" type="text/css" media="screen" />
    <link href="resources/admin/css/fancybox-1.3.1.css" rel="stylesheet" type="text/css" media="screen" />
    <link href="resources/admin/css/visualize.css" rel="stylesheet" type="text/css" media="screen" />

    <script type="text/javascript" src="resources/admin/js/jquery-1.4.2.min.js"></script>
    <script type="text/javascript" src="resources/admin/js/jquery.dimensions.min.js"></script>

    <!-- // Tabs // -->
    <script type="text/javascript" src="resources/admin/js/ui.core.js"></script>
    <script type="text/javascript" src="resources/admin/js/jquery.ui.tabs.min.js"></script>

    <!-- // Table drag and drop rows // -->
    <script type="text/javascript" src="resources/admin/js/tablednd.js"></script>

    <!-- // Date Picker // -->
    <script type="text/javascript" src="resources/admin/js/date.js"></script>
    <!--[if IE]><script type="text/javascript" src="public/js/jquery.bgiframe.js"></script><[endif]-->
    <script type="text/javascript" src="resources/admin/js/jquery.datePicker.js"></script>

    <!-- // Wysiwyg // -->
    <script type="text/javascript" src="resources/admin/js/jquery.wysiwyg.js"></script>

    <!-- // Graphs // -->
    <script type="text/javascript" src="resources/admin/js/excanvas.js"></script>
    <script type="text/javascript" src="resources/admin/js/jquery.visualize.js"></script>

    <!-- // Fancybox // -->
    <script type="text/javascript" src="resources/admin/js/jquery.fancybox-1.3.1.js"></script>

    <!-- // File upload // -->
    <script type="text/javascript" src="resources/admin/js/jquery.filestyle.js"></script>

    <script type="text/javascript" src="resources/admin/js/init.js"></script>
</head>
<body>
<div id="main">
    <!-- #header -->
    <div id="header">
        <!-- #logo -->
        <div id="logo">
            <a href="adminEntry" title="Go to Homepage"><span>Great Admin</span></a>
        </div>
        <!-- /#logo -->
        <!-- #user -->
        <div id="user">
            <h2>Forest Gump <span>(admin)</span></h2>
            <a href="#">Logout</a>
        </div>
        <!-- /#user -->
    </div>
    <!-- /header -->
    <!-- #content -->
    <div id="content">

        <!-- breadcrumbs -->
        <div class="breadcrumbs">
            <ul>
                <li class="home"><a href="">Homepage</a></li>
                <li>Uploading</li>
            </ul>
        </div>
        <!-- /breadcrumbs -->

        <!-- box -->
        <div id="tabs-statistic" class="box">
            <ul class="bookmarks">
                <li><a href="#upload-file">Upload machines</a></li>
                <li><a href="#upload-photo">Load photos</a></li>
            </ul>
            <div class="box-content">

                <div id="upload-file">
                    <form:form class="formBox" method="post" action="/admin/addCSV" enctype="multipart/form-data">

                        <fieldset>
                            <div class="clearfix file">
                                <div class="lab"><label for="textFile">Upload file with machines</label></div>
                                <div class="con">
                                    <input type="file" name="textFile" class="upload-file" id="textFile" required/>
                                </div>
                            </div>
                            <br><br><br>
                            <div class="btn-submit"><!-- Submit form -->
                                <input type="submit" value="Add / update" class="button" />
                            </div>
                        </fieldset>

                    </form:form>
                </div>


                <div id="upload-photo">
                    <form class="formBox" method="post" action="/admin/addPhotos" enctype="multipart/form-data">

                        <fieldset>
                            <div class="clearfix file">
                                <div class="lab"><label for="photosFile">Upload photos</label></div>
                                <div class="con">
                                    <input type="file" name="photosCollection" class="upload-file" id="photosFile" multiple required/>
                                </div>
                            </div>
                            <br><br><br>
                            <div class="btn-submit"><!-- Submit form -->
                                <input type="submit" value="Load" class="button" />
                            </div>
                        </fieldset>

                    </form>
                </div>

            </div><!-- box-content -->
        </div>
        <!-- /box -->

    </div>
    <!-- /#content -->
    <!-- #sidebar -->
    <div id="sidebar">

        <!-- mainmenu -->
        <ul id="floatMenu" class="mainmenu">
            <li class="first"><a href="#">Dashboard</a></li>
            <li><a href="#">Uploading</a>
                <ul class="submenu">
                    <li><a href="#upload-file">machines</a></li>
                    <li><a href="#upload-photo">photos</a></li>
                </ul>
            </li>
            <li class="last"><a href="http://themeforest.net/item/great-admin-theme/114528?ref=ClearHead" class="link">ThemeForest</a></li>
        </ul>
        <!-- /.mainmenu -->

    </div>
    <!-- /#sidebar -->
    <!-- #footer -->
    <br><br><br><br><br><br>
    <div id="footer">
        <p>© VMC & HMC | 2016 | <a href="#main">Top</a></p>
    </div>
    <!-- /#footer -->


</div>
<!-- /#main -->

<script type="text/javascript">
    $(document).ready( function() {
        $("#textFile").change(function(){
            var fileName = $(this).val().replace(/.*\\/, "");
            $(this).parent().parent().children(":first-child").val(fileName);
        });
        $("#photosFile").change(function(){
            var files = $(this)[0].files;
            var nameList = "";
            for (var i = 0; i != files.length; i++) {
                nameList += files[i].name.replace(/.*\\/, "") + ", ";
            }
            nameList = nameList.substr(0, nameList.length - 2);
            $(this).parent().parent().children(":first-child").val(nameList);
        });
    });
</script>

</body>
</html>