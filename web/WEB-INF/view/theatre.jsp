<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page session="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

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
    <link href="./resources/css/movietimesandtickets.css" rel="stylesheet">

    <style>
        body{
            background-image: url("https://jackbeard.files.wordpress.com/2013/04/0524.jpg");
            background-size: cover;
            background-attachment: fixed;
        }

        #theatreCard{
            background-color: #d8d8d8;
            width: 100%;
            margin: 0 auto;
            padding: 2%;
        }

        #map{
            margin: 2% auto;
            text-align: center;

        }

        #theatreInfo li{
            width: 100%;
            padding: 2%;
        }

        #theatreInfo ul{
            list-style-type: none;
        }

        #theatreTickets{
            margin-top: 2%;
            background-color: #d8d8d8;
            padding: 2%;
        }





    </style>
</head>

<body>
<jsp:include page="/WEB-INF/includes/header.jsp" />
<div class="container">
    <h1>${theatre.name}
        <div class="input-group">
            <input type="hidden" class="form-control" name="theatreId" id="theatreId" value="${theatre.id}" />
        </div>

        <c:if test="${favoriteStatus==0}">
            <form action="" method="post"><input class = "btn btn-outline-warning my-2 my-sm-0" type="submit" value="Favorite This"></form>
        </c:if>
        <c:if test="${favoriteStatus>=1}">
            <form action="" method="post"><input class = "btn btn-outline-warning my-2 my-sm-0" type="submit" value="Favorited"></form>
        </c:if>
    </h1>

    <div class="row">
        <div id="theatreCard">
        <iframe id="map"
                width="100%"
                height="300px"
                frameborder="0"
                scrolling="no"
                marginheight="0"
                marginwidth="0"
                src="https://maps.google.com/maps?q=${theatre.lat},${theatre.lon}&hl=es;z=14&amp;output=embed">
        </iframe>

            <div class="row">
                        <div id="theatreInfo">
                            <ul>
                                <li><h2 style="color: darkorange">${theatre.name} </h2></li>
                                <li><h5 style="color: darkorange">Address: </h5>${theatre.address}</li>
                                <c:if test="${dispLL==1}">
                                    <li><h5 style="color: darkorange">Coordinates: </h5>${theatre.lat}, ${theatre.lon}</li>
                                </c:if>
                                <c:if test="${dispwebsite==1}">
                                    <li><h5 style="color: darkorange">Website: </h5>${theatre.website}</li>
                                </c:if>
                                <c:if test="${disptele==1}">
                                    <li><h5 style="color: darkorange">Telephone: </h5>${theatre.telephone}</li>
                                </c:if>
                            </ul>
                        </div>
            </div>
        </div>
    </div>

    <h1>Movies and Tickets</h1>
    <div class="row" id="theatreTickets">

        <c:forEach var="theatreIndex" begin="0" end="${fn:length(movies)}">
            <div class="movieTheatre">
                <div class="theatreHeader">
                    <h2>${movies[theatreIndex].title}</h2>
                    <p>${movies[theatreIndex].overview}</p>
                </div>
                <p>
                    Select a movie time to buy tickets
                </p>
                <c:set var="showtimeEnd" value="${(fn:length(dictionary[movies[theatreIndex].id]))}"></c:set>
                <c:forEach var="showtimeIndex" begin="0" end="${showtimeEnd}">
                    <a href="/checkout?showtimeId=${((dictionary[movies[theatreIndex].id])[showtimeIndex]).id}&userId=${sessionScope.loggedinuser.id}">
                        <c:if test="${showtimeIndex < showtimeEnd}">
                            <button class="btn-warning time" onClick="parent.location='checkout'">${((dictionary[movies[theatreIndex].id])[showtimeIndex]).showtime}</button>
                        </c:if>
                    </a>
                </c:forEach>

            </div>
        </c:forEach>
    </div>

</div>
<jsp:include page="/WEB-INF/includes/footer.jsp" />
</body>
<script src="https://code.jquery.com/jquery-3.1.1.slim.min.js" integrity="sha384-A7FZj7v+d/sdmMqp/nOQwliLvUsJfDHW+k9Omg/a/EheAdgtzNs3hpfag6Ed950n" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js" integrity="sha384-DztdAPBWPRXSA/3eYEEUWrWCy7G5KFbe8fFjk5JAIxUYHKkDx6Qin1DkWx51bBrb" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js" integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn" crossorigin="anonymous"></script>
<script type="text/javascript" src="./resources/js/index.js"></script>
<script type="text/javascript" src="./resources/js/favMovieChange.js"></script>

</html>

