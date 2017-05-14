<%--
  Created by IntelliJ IDEA.
  User: marvinyan
  Date: 5/13/2017
  Time: 3:42 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html>
<head>
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/add-user-style.css">
    <title>Movie Manager</title>
</head>
<body>
<div id="wrapper">
    <div id="header">
        <h2>Movie Manager</h2>
    </div>
</div>

<div id="container">
    <h3>Manage Movie</h3>
    <!-- modelAttribute pre-populates fields -->
    <form:form action="saveMovie" modelAttribute="movie" method="post">
        <!-- need this to keep track of id for get/set ops-->
        <form:hidden path="id" />
        <table>
            <tbody>
            <tr>
                <td><label>Title:</label></td>
                <td><form:input path="title" /></td>
            </tr>
            <tr>
                <td><label>Release Date:</label></td>
                <td><form:input path="releaseDate" /></td>
            </tr>
            <tr>
                <td><label>Genre:</label></td>
                <td><form:input path="genre" /></td>
            </tr>
            <tr>
                <td><label>Runtime:</label></td>
                <td><form:input path="runtime" /></td>
            </tr>
            <tr>
                <td><label>Poster:</label></td>
                <td><form:input path="poster" /></td>
            </tr>
            <tr>
                <td><label>Backdrop:</label></td>
                <td><form:input path="backdrop" /></td>
            </tr>
            <tr>
                <td><label>Trailer:</label></td>
                <td><form:input path="trailer" /></td>
            </tr>
            <tr>
                <td><label>IDMB ID:</label></td>
                <td><form:input path="imdbId" /></td>
            </tr>
            <tr>
                <td><label>Revenue:</label></td>
                <td><form:input path="revenue" /></td>
            </tr>
            <tr>
                <td><label>Budget:</label></td>
                <td><form:input path="budget" /></td>
            </tr>
            <tr>
                <td><label>Overview:</label></td>
                <td><form:input path="overview" /></td>
            </tr>
            <tr>
                <td><label>Status:</label></td>
                <td><form:input path="status" /></td>
            </tr>
            <tr>
                <td><label></label></td>
                <td><input type="submit" value="Save" /></td>
            </tr>
            </tbody>
        </table>
    </form:form>
    <div style="clear:both;"></div>
    <p>
        <a href="${pageContext.request.contextPath}/admin/listMovies">Back to List</a>
    </p>
</div>
</body>
</html>
