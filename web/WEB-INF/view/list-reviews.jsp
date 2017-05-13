<%--
  Created by IntelliJ IDEA.
  User: marvinyan
  Date: 5/13/2017
  Time: 3:10 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
    <title>List Reviews</title>
</head>
<body>
<div id="wrapper">
    <div id="header">
        <h2>Review List</h2>
    </div>
</div>
<div id="container">
    <div id="content">
        <table>
            <tr>
                <th>Review ID</th>
                <th>User ID</th>
                <th>Title</th>
                <th>Body</th>
                <th>Rating</th>
                <th>Posted On</th>
            </tr>
            <c:forEach var="tempReview" items="${reviews}">
                <c:url var="deleteReview" value="/admin/deleteReview">
                    <c:param name="reviewId" value="${tempReview.reviewId}" />
                </c:url>
                <tr>
                    <td>${tempReview.reviewId}</td>
                    <td>${tempReview.userId}</td>
                    <td>${tempReview.title}</td>
                    <td>${tempReview.body}</td>
                    <td>${tempReview.rating}</td>
                    <td>${tempReview.timeOfReview}</td>
                    <td>
                        <a href="${deleteReview}" onclick="if (!(confirm('Are you sure you want to delete this review?'))) return false">Delete</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>
</div>
</body>
</html>
