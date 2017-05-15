<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page session="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>

<head>
    <title>Movie Synopsis</title>
    <meta charset="utf-8">
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css?family=Raleway:300" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
    <link href="./resources/css/star-rating.min.css" media="all" rel="stylesheet" type="text/css"/>
    <link href="./resources/css/index.css" rel="stylesheet">
    <link href="./resources/css/movie.css" rel="stylesheet">
    <link href="./resources/css/moviereviews.css" rel="stylesheet">
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>

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
        <h1 style="color: white">${movie.title} Review</h1>
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
                                <input type= "button" class = "btn-danger" style="width: 100%" onClick="parent.location='./movietimesandtickets.jsp'" value='Buy Tickets'>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-7" id="rightDesc">
                <c:choose>
                    <c:when test="${sessionScope.loggedinuser != null}">
                        <a href="writeareview?movieId=${movie.id}">Write a Review</a>
                    </c:when>
                    <c:otherwise>
                        <a href="signin">Sign in to Leave a Review</a>
                    </c:otherwise>
                </c:choose>
                <h1>Movie Reviews</h1>
                <div class="row">
                    <div class="movieReview">
                        <c:choose>
                            <c:when test="${fn:length(reviews) > 0}">
                        <c:forEach var="revIndex" begin="0" end="${fn:length(reviews)-1}">
                            <h2 class="reviewTitle">${reviews[revIndex].title}</h2>
                            <table>
                                <tr>
                                    <td>
                                        <fieldset class="rating" disabled>
                                            <input type="radio" id="star5" name="rating${revIndex}" value="10" /><label class = "full" for="star5" title="Awesome - 5 stars"></label>
                                            <input type="radio" id="star4half" name="rating${revIndex}" value="9" /><label class="half" for="star4half" title="Pretty good - 4.5 stars"></label>
                                            <input type="radio" id="star4" name="rating${revIndex}" value="8" /><label class = "full" for="star4" title="Pretty good - 4 stars"></label>
                                            <input type="radio" id="star3half" name="rating${revIndex}" value="7" /><label class="half" for="star3half" title="Meh - 3.5 stars"></label>
                                            <input type="radio" id="star3" name="rating${revIndex}" value="6" /><label class = "full" for="star3" title="Meh - 3 stars"></label>
                                            <input type="radio" id="star2half" name="rating${revIndex}" value="5" /><label class="half" for="star2half" title="Kinda bad - 2.5 stars"></label>
                                            <input type="radio" id="star2" name="rating${revIndex}" value="4" /><label class = "full" for="star2" title="Kinda bad - 2 stars"></label>
                                            <input type="radio" id="star1half" name="rating${revIndex}" value="3" /><label class="half" for="star1half" title="Meh - 1.5 stars"></label>
                                            <input type="radio" id="star1" name="rating${revIndex}" value="2" /><label class = "full" for="star1" title="Sucks big time - 1 star"></label>
                                            <input type="radio" id="starhalf" name="rating${revIndex}" value="1" /><label class="half" for="starhalf" title="Sucks big time - 0.5 stars"></label>
                                        </fieldset>
                                    </td>
                                </tr>
                            </table>
                            <span class="reviewMeta">
                                By <span class="reviewAuthor">${reviews[revIndex].userName}</span>
                                on <span class="reviewDate">${reviews[revIndex].timeOfReview}</span>
                            </span>
                            <p class="reviewFull">
                                    ${reviews[revIndex].body}
                            </p>
                            <c:set var="isLiked" value="false" />
                            <c:forEach var="reviewIndex" begin="0" end="${fn:length(favoriteReviews)}">
                                <c:choose>
                                    <c:when test="${reviews[revIndex].reviewId==favoriteReviews[reviewIndex].reviewId}">
                                        <c:set var="isLiked" value="true" />
                                    </c:when>
                                    <c:otherwise>
                                    </c:otherwise>
                                </c:choose>
                            </c:forEach>

                            <c:choose>
                                <c:when test="${sessionScope.loggedinuser!=null}">
                                    <c:choose>
                                        <c:when test="${isLiked==true}">
                                            <input id="${reviews[revIndex].reviewId}" class="btn btn-danger like" type="button" value="Dislike">
                                        </c:when>
                                        <c:otherwise>
                                            <input id="${reviews[revIndex].reviewId}" class="btn btn-primary like" type="button" value="Like">
                                        </c:otherwise>
                                    </c:choose>
                                </c:when>
                            </c:choose>
                            <hr>
                        </c:forEach>
                            </c:when>
                        </c:choose>

                        <a href="#" style="margin-right: 60%; margin-left: 3%"><button id="prev">Previous</button></a>
                        <a href="#"><button id="next">Next</button></a>
                    </div>


                </div>
            </div>
        </div>

        <jsp:include page="/WEB-INF/includes/footer.jsp" />


</body>

<script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js" integrity="sha384-DztdAPBWPRXSA/3eYEEUWrWCy7G5KFbe8fFjk5JAIxUYHKkDx6Qin1DkWx51bBrb" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js" integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn" crossorigin="anonymous"></script>
    <script src="./resources/js/index.js"></script>

<script>
    $(document).ready(function(){
        /*
        var reviews = ${reviews};
        var $index = 0;
        console.log(reviews);
        */

        <c:forEach var="reviewIndex" begin="0" end="${fn:length(reviews)-1}">
            $('input:radio[name=' + "rating" + ${reviewIndex} + ']').filter('[value="${reviews[reviewIndex].rating}"]').attr('checked', true);
        </c:forEach>


        function doLike(reviewId, likeState){
            if (likeState==0) $(event.target).val("Dislike");
            else $(event.target).val("Like");
            $.post("/likeareview",
                {
                    reviewId: reviewId,
                    likeState: likeState
                },
                function(data, status){

                });
        }

        $(".like").click(function(event){
            $(event.target).toggleClass("btn-primary");
            $(event.target).toggleClass("btn-danger");
            var val = $(event.target).val();
            var rId = event.target.id;
            switch (val){
                case "Like":
                    doLike(rId, 0);
                    break;
                case "Dislike":
                    doLike(rId, 1);
                    break;
                default:
                    break;
            }
        });

    });
</script>

<script>
    $(document).ready(function(){
        $("#rightDesc").css({'height':($("#leftOverview").height()+'px')});
    });
</script>


</html>
