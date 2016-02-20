<%@ page language="java" contentType="text/html; charset=utf8"
         pageEncoding="utf8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"><html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>EfTech Products</title>
    <link href="/resources/css/bootstrap.css" rel="stylesheet">
    <link rel="stylesheet" href="/resources/css/style.css">
</head>
<body>
<div class="container-fluid">
    <div class="row">
        <header class="col-lg-10 col-md-10 col-sm-10 col-xs-10 col-lg-offset-1 col-md-offset-1 col-sm-offset-1 col-xs-offset-1">
            <hr>
            <p style="margin-left:12%">
                H M C<br>
                ANYTHING YOU WANT
            </p>
            <hr>
        </header>
    </div>

    <br><br>

    <div class="row">
        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3 col-lg-offset-1 col-md-offset-1 col-sm-offset-1 col-xs-offset-1">
            <div class="frame center">Filters</div>

        </div>

        <div id="products" class="col-lg-7 col-md-7 col-sm-7 col-xs-7">
            <div class="frame center">Machines</div><br>
            <c:if test="${!empty machineList}">
                <div class="row-fluid">
                    <c:forEach items="${machineList}" var="machine">
                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4" style="padding:2px;">
                            <div class="frame">
                                <img src="resources/images/example.jpg" class="img-responsive">
                                <div id=${machine.productId}>
                                    <h2 class="center">${machine.type}</h2>
                                    <h3>${machine.producer}<br>
                                    ${machine.producingCountry}<br>
                                    ${machine.cost}$</h3>
                                    <a href="machine?productId=${machine.productId}">Details</a>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </c:if>
        </div>
    </div>

    <br><hr width="85%" style="border: 1px solid #2A2E47"><br>

</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.js" type="text/javascript"></script>
<script src="/resources/js/bootstrap.js" type="text/javascript"></script>
<script src="/resources/js/actions.js" type="text/javascript"></script>

</body>
</html>