<%--
  Created by IntelliJ IDEA.
  User: marvinyan
  Date: 2/5/2017
  Time: 10:49 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
    <title>List Users</title>
</head>
<body>
<div id="wrapper">
    <div id="header">
        <h2>User List </h2>
    </div>
</div>
<div id="container">
    <div id="content">
        <input type="button" value="Add User" onclick="window.location.href='showAddUserForm'" class="add-button" />
        <table>
            <tr>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Email</th>
                <th>Newsletter</th>
                <th>Balance</th>
            </tr>
            <c:forEach var="tempUser" items="${users}">
                <c:url var="updateLink" value="/admin/showUpdateUserForm">
                    <c:param name="userId" value="${tempUser.id}" />
                </c:url>
                <c:url var="deleteLink" value="/admin/deleteUser">
                    <c:param name="userId" value="${tempUser.id}" />
                </c:url>
                <tr>
                    <td>${tempUser.firstName}</td>
                    <td>${tempUser.lastName}</td>
                    <td>${tempUser.email}</td>
                    <td>${tempUser.receiveNewsletter}</td>
                    <td>${tempUser.balance}</td>

                    <td>
                        <a href="${updateLink}">Update</a>
                        |
                        <a href="${deleteLink}" onclick="if (!(confirm('Are you sure you want to delete this user?'))) return false">Delete</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>
</div>
</body>
</html>
