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
        <li><a href="/category/all">now playing</a></li>
        <li><a href="/category/comingsoon">comingsoon</a></li>
        <li><a href="/category/topboxoffice">top box office</a></li>
    </ul>
</div>

<div class="row">
    <ul id="overviewList">
        <h1>Sort by Genre</h1>
        <li><a href="/category/genre?genre=Action">ACTION</a></li>
        <li><a href="/category/genre?genre=Drama">DRAMA</a></li>
        <li><a href="/category/genre?genre=Comedy">COMEDY</a></li>
        <li><a href="/category/genre?genre=Family">KIDS</a></li>
        <li><a href="/category/genre?genre=Horror">HORROR</a></li>
        <li><a href="/category/genre?genre=Romance">ROMANCE</a></li>
        <li><a href="/category/genre?genre=Science Fiction">SCI-FI</a></li>
        <li><a href="/category/genre?genre=Animation">ANIMATED</a></li>

            <%--<c:param name="genre" value="Drama" />--%>
        <%--<li><a href=${genreLink}>DRAMA</a></li>--%>
            <%--<c:param name="genre" value="Comedy" />--%>
        <%--<li><a href=${genreLink}> COMEDY</a></li>--%>
            <%--<c:param name="genre" value="Kids" />--%>
        <%--<li><a href=${genreLink}>KIDS</a></li>--%>
    </ul>
</div>