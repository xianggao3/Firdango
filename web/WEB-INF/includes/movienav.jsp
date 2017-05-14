<%--
  Created by IntelliJ IDEA.
  User: nzaker
  Date: 5/14/17
  Time: 6:13 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page session="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<div class="row">
    <ul id="overviewList">
        <li><a href="overview?movieId=${movie.id}">Overview</a></li>
        <li><a href="timesandtickets?movieId=${movie.id}">Movie Times + Tickets</a></li>
        <li><a href="synopsis?movieId=${movie.id}">Synopsis</a></li>
        <li><a href="reviews?movieId=${movie.id}">Movie Reviews</a></li>
        <li><a href="trailers?movieId=${movie.id}">Trailers</a></li>
        <li><a href="photosandposters?movieId=${movie.id}">Photos + Posters</a></li>
        <li><a href="castandcrew?movieId=${movie.id}">Cast + Crew</a></li>
    </ul>
</div>
