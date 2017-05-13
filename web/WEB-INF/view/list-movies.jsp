<%--
  Created by IntelliJ IDEA.
  User: marvinyan
  Date: 5/13/2017
  Time: 3:25 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
    <title>List Movies</title>
</head>
<body>
<div id="wrapper">
    <div id="header">
        <h2>Movie List </h2>
    </div>
</div>
<div id="container">
    <div id="content">
        <input type="button" value="Add Movie" onclick="window.location.href='showAddMovieForm'" class="add-button" />
        <table>
            <tr>
                <th>Movie ID</th>
                <th>Title</th>
                <th>Release Date</th>
                <th>Genre</th>
                <th>Runtime</th>
                <th>Poster</th>
                <th>Backdrop</th>
                <th>Trailer</th>
                <th>IMDB ID</th>
                <th>Revenue</th>
                <th>Budget</th>
                <th>Overview</th>
                <th>Status</th>
            </tr>
            <c:forEach var="tempMovie" items="${movies}">
                <c:url var="updateLink" value="/admin/showUpdateMovieForm">
                    <c:param name="movieId" value="${tempMovie.id}" />
                </c:url>
                <c:url var="deleteLink" value="/admin/deleteMovie">
                    <c:param name="movieId" value="${tempMovie.id}" />
                </c:url>
                <tr>
                    <td>${tempMovie.id}</td>
                    <td>${tempMovie.title}</td>
                    <td>${tempMovie.releaseDate}</td>
                    <td>${tempMovie.genre}</td>
                    <td>${tempMovie.runtime}</td>
                    <td>${tempMovie.poster}</td>
                    <td>${tempMovie.backdrop}</td>
                    <td>${tempMovie.trailer}</td>
                    <td>${tempMovie.imdbId}</td>
                    <td>${tempMovie.revenue}</td>
                    <td>${tempMovie.budget}</td>
                    <td>${tempMovie.overview}</td>
                    <td>${tempMovie.status}</td>
                    <td>
                        <a href="${updateLink}">Update</a>
                        |
                        <a href="${deleteLink}" onclick="if (!(confirm('Are you sure you want to delete this movie?'))) return false">Delete</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>
</div>
</body>
</html>
