<%@ page language="java" contentType="text/html; charset=utf8"
         pageEncoding="utf8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"><html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>EfTech</title>
    <link href="/resources/css/bootstrap.css" rel="stylesheet">
    <link rel="stylesheet" href="/resources/css/style.css">
</head>
<body>
<div class="container-fluid">
    <div class="row">
        <header class="col-lg-10 col-md-10 col-sm-10 col-xs-10 col-lg-offset-1 col-md-offset-1 col-sm-offset-1 col-xs-offset-1">
            <hr>
            <p style="margin-left:12%">H M C</p>
            <hr>
        </header>
    </div>

    <br>

    <h1 class="center">${machine.type} (${machine.model})</h1>

    <br>

    <div class="row">
        <div class="col-lg-5 col-md-5 col-sm-5 col-xs-5 col-lg-offset-1 col-md-offset-1 col-sm-offset-1 col-xs-offset-1">
            <img src="resources/images/example.jpg" class="frame img-responsive">
        </div>
        <div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
            <img src="resources/images/example.jpg" class="frame img-responsive">
        </div>
        <div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
            <img src="resources/images/example.jpg" class="frame img-responsive">
        </div>
        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
            <h2>${machine.description}</h2>
        </div>

    </div>

    <br><hr width="85%" style="border: 1px solid #2A2E47"><br>

    <div class="row">
        <h4>
        <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10 col-lg-offset-1 col-md-offset-1 col-sm-offset-1 col-xs-offset-1">
        <table class="table table-striped">
            <tr><td>Product id</td><td>${machine.productId}</td></tr>
            <tr><td>Type</td><td>${machine.type}</td></tr>
            <tr><td>Model</td><td>${machine.model}</td></tr>
            <tr><td>Producer</td><td>${machine.producer}</td></tr>
            <tr><td>Producing country</td><td>${machine.producingCountry}</td></tr>
            <tr><td>System CNC</td><td>${machine.systemCNC}</td></tr>
            <tr><td>Full system CNC</td><td>${machine.fullSystemCNC}</td></tr>
            <tr><td>Year</td><td>${machine.year}</td></tr>
            <tr><td>Machine location</td><td>${machine.machineLocation}</td></tr>
            <tr><td>Axis count</td><td>${machine.axisCount}</td></tr>
            <tr><td>X-motion</td><td>${machine.xMotion}</td></tr>
            <tr><td>Y-motion</td><td>${machine.yMotion}</td></tr>
            <tr><td>Z-motion</td><td>${machine.zMotion}</td></tr>
            <tr><td>X table size</td><td>${machine.xTableSize}</td></tr>
            <tr><td>Y table size</td><td>${machine.yTableSize}</td></tr>
            <tr><td>Table load</td><td>${machine.tableLoad}</td></tr>
            <tr><td>Spindle taper</td><td>${machine.spindleTaper}</td></tr>
            <tr><td>Spindle rotation frequency</td><td>${machine.spindleRotationFreq}</td></tr>
            <tr><td>Spindle power</td><td>${machine.spindlePower}</td></tr>
            <tr><td>Spindle max torque</td><td>${machine.spindleMaxTorque}</td></tr>
            <tr><td>Spindle type</td><td>${machine.spindleType}</td></tr>
            <tr><td>Spindle cooling method</td><td>${machine.spindleCoolingMethod}</td></tr>
            <tr><td>Store type</td><td>${machine.storeType}</td></tr>
            <tr><td>Tool count</td><td>${machine.toolCount}</td></tr>
            <tr><td>Max tool diameter</td><td>${machine.maxToolDiameter}</td></tr>
            <tr><td>Max tool weight</td><td>${machine.maxToolWeight}</td></tr>
            <tr><td>Tool replacement time</td><td>${machine.toolReplacementTime}</td></tr>
            <tr><td>Position precision</td><td>${machine.positionPrecision}</td></tr>
            <tr><td>Reposition precision</td><td>${machine.repositionPrecision}</td></tr>
            <tr><td>Spindle runtime</td><td>${machine.spindleRuntime}</td></tr>
            <tr><td>Machine launching</td><td>${machine.machineLaunching}</td></tr>
            <tr><td>Equipment</td><td>${machine.equipment}</td></tr>
            <tr><td>Condition</td><td>${machine.condition}</td></tr>
            <tr><td>Cost</td><td>${machine.cost}</td></tr>
            <tr><td>Description</td><td>${machine.fullDescription}</td></tr>
        </table>
        </div>
        </h4>
    </div>

</div>

</body>
</html>
