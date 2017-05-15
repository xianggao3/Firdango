<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>User Activities</title>
    <link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
</head>
<body>
<h1>View Activity for User ${userId}</h1>
<div id="container">
    <hr>
    <h2>Tickets Purchased</h2>
    <div id="content">
        <table>
            <tr>
                <th>Seat</th>
                <th>Showtime ID</th>
            </tr>
            <c:forEach var="ticket" items="${tickets}">
                <tr>
                    <td>${ticket.seat}</td>
                    <td>${ticket.showtimeId}</td>
                </tr>
            </c:forEach>
        </table>
    </div>
    <hr>
    <h2>Reviews Posted</h2>
    <div id="content">
        <table>
            <tr>
                <th>Title</th>
                <th>Body</th>
                <th>Rating</th>
                <th>Posted On</th>
                <th>Movie ID</th>
            </tr>
            <c:forEach var="review" items="${reviews}">
                <tr>
                    <td>${review.title}</td>
                    <td>${review.body}</td>
                    <td>${review.rating}</td>
                    <td>${review.timeOfReview}</td>
                    <td>${review.movieId}</td>
                </tr>
            </c:forEach>
        </table>
    </div>
    <hr>
    <h2>Alerts Requested</h2>
    <div id="content">
        <table>
            <tr>
                <th>Movie</th>
                <th>Status</th>
            </tr>
            <c:forEach var="alert" items="${alerts}">
                <tr>
                    <td>${alert.title}</td>
                    <td>${alert.status}</td>
                </tr>
            </c:forEach>
        </table>
    </div>
    <hr>
    <h2>Movies Favorited</h2>
    <div id="content">
        <table>
            <tr>
                <th>Movie</th>
            </tr>
            <c:forEach var="favMovie" items="${favMovies}">
                <tr>
                    <td>${favMovie.title}</td>
                </tr>
            </c:forEach>
        </table>
    </div>
</div>
</body>
</html>
