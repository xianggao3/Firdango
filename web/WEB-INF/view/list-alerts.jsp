<%--
  Created by IntelliJ IDEA.
  User: marvinyan
  Date: 5/14/2017
  Time: 12:47 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>My Movie Alerts</title>
</head>
<body>
<h1>My Movie Alerts</h1>
<h5>You are currently subscribed to notifications for the following movies:</h5>
<ol>
    <c:forEach var="movie" items="${movies}">
        <li>${movie.title} - ${movie.status}</li>
    </c:forEach>
</ol>
</body>
</html>
