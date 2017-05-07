<!DOCTYPE html>
<html>

<head>
    <title>Movie Overview</title>
    <meta charset="utf-8">

    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css?family=Raleway:300" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
    <link href="../../resources/css/index.css" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.1.1.slim.min.js" integrity="sha384-A7FZj7v+d/sdmMqp/nOQwliLvUsJfDHW+k9Omg/a/EheAdgtzNs3hpfag6Ed950n" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
    <link href="../../resources/css/movietimesandtickets.css" rel="stylesheet">

</head>

<body>
<jsp:include page="/WEB-INF/includes/header.jsp" />

    <div class="container">

        <h1 style="color: white">Fifty Shades Darker Times & Tickets</h1>
        <div class="row">
            <ul id="overviewList">
                <li><a href="overview?movieId=${movie.id}">Overview</a></li>
                <li class="active"><a href="timesandtickets?movieId=${movie.id}">Movie Times + Tickets</a></li>
                <li><a href="synopsis?movieId=${movie.id}">Synopsis</a></li>
                <li><a href="reviews?movieId=${movie.id}">Movie Reviews</a></li>
                <li><a href="trailers?movieId=${movie.id}">Trailers</a></li>
                <li><a href="photosandposters?movieId=${movie.id}">Photos + Posters</a></li>
                <li><a href="castandcrew?movieId=${movie.id}">Cast + Crew</a></li>

            </ul>
        </div>

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
                                    <li><span class="detail">Fan Ratings: </span>1337</li>
                                    <li><span class="detail">Rotten Tomatos: </span> 8%</li>
                                    <li><span class="detail">Released: </span>${movie.releaseDate}</li>
                                    <li><span class="detail">Rating: </span> R</li>
                                    <li><span class="detail">Genre: </span>${movie.genre}</li>
                                    <li><span class="detail">Length: </span>${movie.runtime} minutes</li>
                                </ul>
                                <input type= "button" class = "btn-danger" style="width: 100%" onClick="parent.location='./movietimesandtickets.jsp'" value='Buy Tickets'>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
            <div class="col-sm-7" id="rightDesc">
                <div class="movieTheatre">
                    <div class="theatreHeader">
                        <h2>AMC LOEWS STONY BROOK 17 </h2>
                        <p>2196 Nesconset Highway, Stony Brook, NY 11790</p>
                    </div>

                    <p>
                        Select a movie time to buy tickets
                    </p>

                    <button class="btn-warning time" onClick="parent.location='checkout'">1:35 PM</button>
                    <button class="btn-warning time" onClick="parent.location='checkout'" >4:35 PM</button>
                    <button class="btn-warning time" onClick="parent.location='checkout'">8:35 PM</button>
                    <button class="btn-warning time" onClick="parent.location='checkout'">10:35 PM</button>
                </div>

                <div class="movieTheatre">
                    <div class="theatreHeader">
                        <h2>AMC LOEWS INGLEWOOD 17 </h2>
                        <p>2196 Nesconset Highway, Stony Brook, NY 11790</p>
                    </div>

                    <p>
                        Select a movie time to buy tickets
                    </p>

                    <button class="btn-warning time" onClick="parent.location='checkout'">1:35 PM</button>
                    <button class="btn-warning time"onClick="parent.location='checkout'">4:35 PM</button>
                    <button class="btn-warning time"onClick="parent.location='checkout'">8:35 PM</button>
                    <button class="btn-warning time"onClick="parent.location='checkout'">10:35 PM</button>
                </div>


                <div class="movieTheatre">
                    <div class="theatreHeader">
                        <h2>AMC LOEWS COMPTON 17 </h2>
                        <p>2196 Nesconset Highway, Stony Brook, NY 11790</p>
                    </div>

                    <p>
                        Select a movie time to buy tickets
                    </p>

                    <button class="btn-warning time"onClick="parent.location='checkout'">1:35 PM</button>
                    <button class="btn-warning time"onClick="parent.location='checkout'">4:35 PM</button>
                    <button class="btn-warning time"onClick="parent.location='checkout'">8:35 PM</button>
                    <button class="btn-warning time"onClick="parent.location='checkout'">10:35 PM</button>
                </div>

                <div class="movieTheatre">
                    <div class="theatreHeader">
                        <h2>AMC LOEWS NEW COMP SCI 17 </h2>
                        <p>2196 Nesconset Highway, Stony Brook, NY 11790</p>
                    </div>

                    <p>
                        Select a movie time to buy tickets
                    </p>

                    <button class="btn-warning time"onClick="parent.location='checkout'">1:35 PM</button>
                    <button class="btn-warning time"onClick="parent.location='checkout'">4:35 PM</button>
                    <button class="btn-warning time"onClick="parent.location='checkout'">8:35 PM</button>
                    <button class="btn-warning time"onClick="parent.location='checkout'">10:35 PM</button>
                </div>

                <div class="movieTheatre">
                    <div class="theatreHeader">
                        <h2>AMC LOEWS DETROIT 17 </h2>
                        <p>2196 Nesconset Highway, Stony Brook, NY 11790</p>
                    </div>

                    <p>
                        Select a movie time to buy tickets
                    </p>

                    <button class="btn-warning time"onClick="parent.location='checkout'">1:35 PM</button>
                    <button class="btn-warning time"onClick="parent.location='checkout'">4:35 PM</button>
                    <button class="btn-warning time"onClick="parent.location='checkout'">8:35 PM</button>
                    <button class="btn-warning time"onClick="parent.location='checkout'">10:35 PM</button>
                </div>



            </div>
        </div>
    </div>


<jsp:include page="/WEB-INF/includes/footer.jsp" />

</body>

<script src="https://code.jquery.com/jquery-3.1.1.slim.min.js" integrity="sha384-A7FZj7v+d/sdmMqp/nOQwliLvUsJfDHW+k9Omg/a/EheAdgtzNs3hpfag6Ed950n" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js" integrity="sha384-DztdAPBWPRXSA/3eYEEUWrWCy7G5KFbe8fFjk5JAIxUYHKkDx6Qin1DkWx51bBrb" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js" integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn" crossorigin="anonymous"></script>
<script src="../../resources/js/index.js"></script>
<script src="../../resources/js/movietimesandtickets.js"></script>
</html>
