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
        <h1>Coming Soon</h1>
        <jsp:include page="/WEB-INF/includes/categorynav.jsp" />
    </div>
</div>
<div class="container">
    <div class="container-fluid">
        <div id="newMoviesDiv" class="container">
            <h1 class="display-5 text-white border-bottom-1">Opening Soon</h1>
            <div class="card-deck">
                <c:forEach items="${movies}" var="amovie" >
                    <c:url var="overviewLink" value="/overview">
                        <c:param name="movieId" value="${amovie.id}" />
                    </c:url>
                    <a href="${overviewLink}" class="card card-inverse text-center">
                        <img class="card-img-top" height="360" style="min-width:243px;" src="https://image.tmdb.org/t/p/w500//${amovie.poster}" onerror="this.src='../../resources/img/placeholderposter.png'">
                        <div class="card-block">
                            <h4 class="card-title">${amovie.title}</h4>
                        </div>
                    </a>
                </c:forEach>
            </div>
        </div>
    </div>
    <jsp:include page="/WEB-INF/includes/footer.jsp" />


</body>

<script src="https://code.jquery.com/jquery-3.1.1.slim.min.js" integrity="sha384-A7FZj7v+d/sdmMqp/nOQwliLvUsJfDHW+k9Omg/a/EheAdgtzNs3hpfag6Ed950n" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js" integrity="sha384-DztdAPBWPRXSA/3eYEEUWrWCy7G5KFbe8fFjk5JAIxUYHKkDx6Qin1DkWx51bBrb" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js" integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn" crossorigin="anonymous"></script>
<script src="index.js"></script>

</html>
