<!DOCTYPE html>
<html>

<head>
    <title>Firdango</title>
    <meta charset="utf-8">
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">

    <!--
    Font Scheme

    Logo (Branding): Roboto
    Movie Titles:    Maven Pro
    Primary Texts (eg. article title):     Raleway
    Secondary Texts (eg. article content): Josefin Sans
    -->
    <link href="https://fonts.googleapis.com/css?family=Raleway:300|Roboto|Maven+Pro|Josefin+Sans:300,400" rel="stylesheet">
    <link href="./resources/css/index.css" rel="stylesheet">
    <link href="./resources/css/movie.css" rel="stylesheet">
    <link href="./resources/css/movieoverview.css" rel="stylesheet">

    <style>
        body{
            background-image: url("https://image.tmdb.org/t/p/original${movie.backdrop}");
            background-size: cover;
            background-attachment: fixed;
        }
    </style>
</head>

<body>
    <jsp:include page="/WEB-INF/includes/header.jsp" />
    <div class="container">
        <h1>${movie.title} Overview
            <div class="input-group" id="favoriteMovie">
                <input type="hidden" class="form-control" name="movieId" id="movieId" value="${movie.id}" />
            </div>

            <c:if test="${favoriteStatus==0}">
                <form action="" method="post"><input class = "btn btn-outline-warning my-2 my-sm-0" type="submit" value="Favorite This"></form>
            </c:if>
            <c:if test="${favoriteStatus>=1}">
                <form action="" method="post"><input class = "btn btn-outline-warning my-2 my-sm-0" type="submit" value="Favorited"></form>
            </c:if>
        </h1>

        <jsp:include page="/WEB-INF/includes/movienav.jsp" />

        <div class="row">
            <div class="col-sm-5" id="leftOverview">
                <div class="row">
                    <div class="row">
                        <div class="col-md-12" id="movieImg">
                            <img src="https://image.tmdb.org/t/p/w500//${movie.poster}">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12" id="movieDesc">
                            <div id="stats">
                                <center><img style="width: 50%; margin: 3% auto" src="http://www.homequalitymark.com/filelibrary/interactive_scorecard/4_star.png" /></center>
                                <ul>
                                    <li><span class="detail">Fan Ratings: </span>${sessionScope.avgRating/2}</li>
                                    <li><span class="detail">Rotten Tomatos: </span> 8%</li>
                                    <li><span class="detail">Released: </span>${movie.releaseDate}</li>
                                    <li><span class="detail">Rating: </span> R</li>
                                    <li><span class="detail">Genre: </span>${movie.genre}</li>
                                    <li><span class="detail">Length: </span>${movie.runtime} minutes</li>
                                </ul>
                                <input type="button" class = "btn-danger" style="width: 100%" onClick="parent.location='./movietimesandtickets.jsp'" value='Buy Tickets' ${movie.status == "Released" ? "" : "hidden='hidden'"}>

                                <div ${movie.status == "Released" ? "hidden='hidden'" : ""}>
                                    <form action="/signupFirAlert" method="post">
                                        <input type="hidden" name="movieId" value="${movie.id}">
                                        <h1 style="color:black">Firdango FirAlert</h1>
                                        <label for="alertEmail">Sign up for a FirAlert and be the first to know when tickets are available in your area.</label>
                                        <input id="alertEmail" name="alertEmail" type="text" style="width: 100%" placeholder="Enter your email">
                                        <input class="btn btn-primary" type="submit" style="width: 100%" value="Sign Up For FirAlert">
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
            <div class="col-sm-7" id="rightDesc">
                <iframe src="http://www.youtube.com/embed/${movie.trailer}"></iframe>
            </div>
        </div>
    </div>
    <jsp:include page="/WEB-INF/includes/footer.jsp" />
</body>
<script>
    function changeHeart() {
        alert("d");
        document.forms["favform"].submit();
        alert("s");
}</script>
<script src="https://code.jquery.com/jquery-3.1.1.slim.min.js" integrity="sha384-A7FZj7v+d/sdmMqp/nOQwliLvUsJfDHW+k9Omg/a/EheAdgtzNs3hpfag6Ed950n" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js" integrity="sha384-DztdAPBWPRXSA/3eYEEUWrWCy7G5KFbe8fFjk5JAIxUYHKkDx6Qin1DkWx51bBrb" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js" integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn" crossorigin="anonymous"></script>
<script type="text/javascript" src="./resources/js/index.js"></script>
<script type="text/javascript" src="./resources/js/favMovieChange.js"></script>
</html>