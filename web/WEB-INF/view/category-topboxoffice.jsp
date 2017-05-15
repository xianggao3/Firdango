<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
    <title>Firdango</title>
    <meta charset="utf-8">

    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">

    <!--
    Font Scheme

    Logo (Branding): Roboto
    Movie Titles: Maven Pro
    Primary Texts: Raleway
    Secondary Texts: Josefin Sans

    -->
    <link href="https://fonts.googleapis.com/css?family=Raleway:300|Roboto|Maven+Pro|Josefin+Sans:300,400" rel="stylesheet">
    <link href="../../resources/css/index.css" rel="stylesheet">
    <link href="../../resources/css/movie.css" rel="stylesheet">
    <link href="../../resources/css/movieoverview.css" rel="stylesheet">

</head>

<body>
<jsp:include page="/WEB-INF/includes/header.jsp" />
<div class="container">
    <div class="container-fluid">
        <h1>Top Box Office</h1>
        <div class="row">
            <ul id="overviewList">
                <li><a href="/category/all?page=0">Now Playing</a></li>
                <li><a href="/category/comingsoon?page=0">Coming Soon</a></li>
                <li><a href="/category/topboxoffice">Top Box Office</a></li>
            </ul>
        </div>
    </div>
</div>
<div class="container">
    <div class="container-fluid" style="color:white; text-align: center">

        <table>
            <tr>
                <th>Title</th>
                <th>Revenue</th>
                <th>Release Date</th>
            </tr>
            <c:forEach items="${movies}" var="movie">
                <tr>
                    <td>${movie.title}</td>
                    <td>${movie.revenue}</td>
                    <td>${movie.releaseDate}</td>
                </tr>
            </c:forEach>
        </table>

        </div>

    </div>
    <jsp:include page="/WEB-INF/includes/footer.jsp" />


</body>

<script src="https://code.jquery.com/jquery-3.1.1.slim.min.js" integrity="sha384-A7FZj7v+d/sdmMqp/nOQwliLvUsJfDHW+k9Omg/a/EheAdgtzNs3hpfag6Ed950n" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js" integrity="sha384-DztdAPBWPRXSA/3eYEEUWrWCy7G5KFbe8fFjk5JAIxUYHKkDx6Qin1DkWx51bBrb" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js" integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn" crossorigin="anonymous"></script>
<script src="index.js"></script>

</html>
