    <!DOCTYPE html>
<html>

<head>
    <title>Movie Synopsis</title>
    <meta charset="utf-8">

    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css?family=Raleway:300" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
    <link href="./resources/css/index.css" rel="stylesheet">
    <link href="./resources/css/movie.css" rel="stylesheet">
    <link href="./resources/css/moviewriteareview.css" rel="stylesheet">
    <link href="./resources/css/star-rating.min.css" media="all" rel="stylesheet" type="text/css"/>

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
        <h1 style="color: white">Fifty Shades Darker Review</h1>
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
                                    <li><span class="detail">Fan Ratings: </span>1337</li>
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
                <h1>Write a review</h1>
                <div class="row">
                    <div class="movieReview">
                        <form class="" method="post" action="">

                                <div class="input-group">
                                    <input type="hidden" class="form-control" name="movieId" id="movieId" value="${movie.id}" />
                                </div>

                            <div class="form-group">
                                <td>
                                    <fieldset class="rating">
                                        <input type="radio" id="star10" name="rating" value="10" /><label class = "full" for="star10" title="Awesome - 5 stars"></label>
                                        <input type="radio" id="star9" name="rating" value="9" /><label class="half" for="star9" title="Pretty good - 4.5 stars"></label>
                                        <input type="radio" id="star8" name="rating" value="8" /><label class = "full" for="star8" title="Pretty good - 4 stars"></label>
                                        <input type="radio" id="star7" name="rating" value="7" /><label class="half" for="star7" title="Meh - 3.5 stars"></label>
                                        <input type="radio" id="star6" name="rating" value="6" /><label class = "full" for="star6" title="Meh - 3 stars"></label>
                                        <input type="radio" id="star5" name="rating" value="5" /><label class="half" for="star5" title="Kinda bad - 2.5 stars"></label>
                                        <input type="radio" id="star4" name="rating" value="4" /><label class = "full" for="star4" title="Kinda bad - 2 stars"></label>
                                        <input type="radio" id="star3" name="rating" value="3" /><label class="half" for="star3" title="Meh - 1.5 stars"></label>
                                        <input type="radio" id="star2" name="rating" value="2" /><label class = "full" for="star2" title="Sucks big time - 1 star"></label>
                                        <input type="radio" id="star1" name="rating" value="1" /><label class="half" for="star1" title="Sucks big time - 0.5 stars"></label>
                                    </fieldset>
                            </div>

                            <div class="form-group">
                                    <div class="input-group">
                                        <input type="text" class="form-control" name="title" id="title" placeholder="Title of review." value="${review.title}"/>
                                    </div>
                            </div>
                            <div class="form-group">
                                    <div class="input-group">
                                        <textarea class="form-control" rows="8" name="reviewBody" id="reviewBody" placeholder="Write your review." value="${review.body}">${review.body}</textarea>
                                    </div>
                            </div>
                            <div class="form-group ">
                                <input type="submit" id="button" class="btn btn-primary btn-lg btn-block login-button" value="Save Review"/>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <jsp:include page="/WEB-INF/includes/footer.jsp" />
</body>
<script src="https://code.jquery.com/jquery-3.1.1.slim.min.js" integrity="sha384-A7FZj7v+d/sdmMqp/nOQwliLvUsJfDHW+k9Omg/a/EheAdgtzNs3hpfag6Ed950n" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js" integrity="sha384-DztdAPBWPRXSA/3eYEEUWrWCy7G5KFbe8fFjk5JAIxUYHKkDx6Qin1DkWx51bBrb" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js" integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn" crossorigin="anonymous"></script>
<script src="index.js"></script>

<script>
    $(document).ready(function(){
        $('input:radio[name="rating"]').filter('[value="${review.rating}"]').attr('checked', true);
    });
</script>




</html>
