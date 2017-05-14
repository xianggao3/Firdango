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
    <title>Your Gift Cards</title>
</head>
<body>
<h1>Thank You For Your Purchase!</h1>
<h5>Your Gift Card Codes:</h5>
<ol>
    <c:forEach var="card" items="${cards}">
        <li>${card.gcCode}</li>
    </c:forEach>
</ol>
</body>
</html>
