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
    <title>Admin. Information</title>
    <link href="resources/admin/css/default.css" rel="stylesheet" type="text/css" media="screen"/>
    <link href="resources/admin/css/gray.css" rel="stylesheet" type="text/css" media="screen"/>
    <link href="resources/admin/css/datePicker.css" rel="stylesheet" type="text/css" media="screen"/>
    <link href="resources/admin/css/wysiwyg.css" rel="stylesheet" type="text/css" media="screen"/>
    <link href="resources/admin/css/fancybox-1.3.1.css" rel="stylesheet" type="text/css" media="screen"/>
    <link href="resources/admin/css/visualize.css" rel="stylesheet" type="text/css" media="screen"/>

    <!-- Bootstrap Core CSS -->
    <link rel="stylesheet" href="resources/css/bootstrap.min.css">

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
            <a href="#" title="Go to Homepage"><span>Great Admin</span></a>
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
                <li class="home"><a href="adminMachines" style="font-weight: bold; color: #008B00">Machines</a></li>
                <li class="home">&nbsp;|&nbsp;</li>
                <li class="home"><a href="adminGallery">Gallery</a></li>
                <li class="home">&nbsp;|&nbsp;</li>
                <li class="home"><a href="adminOrders">Orders</a></li>
                <li class="home">&nbsp;|&nbsp;</li>
                <li class="home"><a href="adminData">Admin information</a></li>
            </ul>
        </div>
        <!-- /breadcrumbs -->

        <div class="tabs box">
            <ul class="bookmarks"></ul>

            <div class="box-content">
                <div id="adminData">
                    <h4>
                        <form:form class="formBox" method="post" action="adminData">
                            <label id="label-email">Email<span style='color:crimson' class="hidden"> (invalid email)</span></label>
                            <c:if test="${!empty adminData}">
                                <input class="le-input form-control" name="email" value="${adminData.email}"/>
                            </c:if>
                            <c:if test="${empty adminData}">
                                <input class="le-input form-control" name="email"/>
                            </c:if>

                            <br><br>

                            <div class="btn-submit">
                                <input type="submit" value="Save" class="button" style="font-weight: normal"/>
                            </div>
                        </form:form>
                    </h4>
                </div>
            </div>
        </div>

    </div>
    <!-- /#content -->
    <!-- #sidebar -->
    <div id="sidebar">
        <ul id="floatMenu" class="mainmenu">
            <li class="first"><a href="adminMachines">Machines</a></li>
            <li><a href="adminGallery">Gallery</a></li>
            <li><a href="adminOrders">Orders</a></li>
            <li class="last"><a href="adminData">Admin information</a></li>
        </ul>
    </div>
    <!-- /#sidebar -->

    <!-- #footer -->
    <br><br><br><br><br><br>

    <div id="footer">
        <p>
            <a href="adminMachines">Machines</a>&nbsp;|&nbsp;
            <a href="adminGallery">Gallery</a>&nbsp;|&nbsp;
            <a href="adminOrders">Orders</a>&nbsp;|&nbsp;
            <a href="adminData">Admin information</a>
        </p>

        <p>© HMC & CNC | 2016 | <a href="#main">Top</a></p>
    </div>

</div>
<script type="text/javascript">
    $(document).ready(function () {
        $('#form').submit(function(){
            var send = true;
            var inputs = ['email'];
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
                        var label = $("#label-email span");
                        if(!re.test(input.val())){
                            input.addClass('red');
                            label.addClass('hidden');
                            send = false;
                        } else {
                            label.removeClass('hidden');
                        }
                    }
                }
            });
            return send;
        });
    });
</script>

</body>
</html>