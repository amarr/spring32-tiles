<%-- 
    Document   : layout
    Created on : Feb 2, 2013, 6:24:42 PM
    Author     : amarron
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles-extras" prefix="tilesx" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <tiles:insertAttribute name="title" />
        
        <tilesx:useAttribute id="stylesheets" name="stylesheets" classname="java.util.List" />
        <c:forEach items="${stylesheets}" var="src">
            <link rel="stylesheet" type="text/css" href="${src}.css" />
        </c:forEach>
    </head>
    <body>
        <tiles:insertAttribute name="main" />
        
        
        <tilesx:useAttribute id="scripts" name="scripts" classname="java.util.List" />
        <c:forEach items="${scripts}" var="src">
            <script type="text/javascript" src="${src}.js"></script>
        </c:forEach>
    </body>
</html>