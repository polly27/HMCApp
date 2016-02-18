<%@ page language="java" contentType="text/html; charset=utf8"
         pageEncoding="utf8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"><html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>HMC</title>
    <style>
        table,th,td
        {
            border:1px solid black;
        }
    </style>
</head>
<body>
<h3>Machines</h3>
<c:if test="${!empty machineList}">
    <table class="data">

        <c:forEach items="${machineList}" var="machine">
            <tr>
                <td>${machine.productId}</td>
                <td>${machine.type}</td>
                <td>${machine.model}</td>
                <td>${machine.producer}</td>
                <td>${machine.producingCountry}</td>
                <td>${machine.systemCNC}</td>
                <td>${machine.fullSystemCNC}</td>
                <td>${machine.year}</td>
                <td>${machine.machineLocation}</td>
            </tr>
        </c:forEach>
    </table>
</c:if>
</body>
</html>