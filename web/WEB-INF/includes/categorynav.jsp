<%--
  Created by IntelliJ IDEA.
  User: Ethan
  Date: 5/15/2017
  Time: 12:27 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="row">
    <ul id="overviewList">
        <li><a href="/category/all?page=0">Now Playing</a></li>
        <li><a href="/category/comingsoon?page=0">Coming Soon</a></li>
        <li><a href="/category/topboxoffice">Top Box Office</a></li>
    </ul>
</div>

<div class="row">
    <ul id="overviewList">
        <h1>Sort by Genre</h1>
        <li><a href="/category/genre?genre=Action">Action</a></li>
        <li><a href="/category/genre?genre=Drama">Drama</a></li>
        <li><a href="/category/genre?genre=Comedy">Comedy</a></li>
        <li><a href="/category/genre?genre=Family">Kids</a></li>
        <li><a href="/category/genre?genre=Horror">Horror</a></li>
        <li><a href="/category/genre?genre=Romance">Romance</a></li>
        <li><a href="/category/genre?genre=Science Fiction">Sci-Fi</a></li>
        <li><a href="/category/genre?genre=Animation">Animated</a></li>

            <%--<c:param name="genre" value="Drama" />--%>
        <%--<li><a href=${genreLink}>DRAMA</a></li>--%>
            <%--<c:param name="genre" value="Comedy" />--%>
        <%--<li><a href=${genreLink}> COMEDY</a></li>--%>
            <%--<c:param name="genre" value="Kids" />--%>
        <%--<li><a href=${genreLink}>KIDS</a></li>--%>
    </ul>
</div>