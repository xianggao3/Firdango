<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
    <title>Movie Cast and Crew</title>
    <meta charset="utf-8">

    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css?family=Raleway:300" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
    <link href="./resources/css/index.css" rel="stylesheet">
    <link href="./resources/css/movie.css" rel="stylesheet">
    <link href="./resources/css/moviecastandcrew.css" rel="stylesheet">

    <style>
        body{
            background-image: url("https://jackbeard.files.wordpress.com/2013/04/0524.jpg");
            background-size: cover;
            background-attachment: fixed;
        }
        #ccList{
            text-align: left;
            margin: 0 auto;
        }
    </style>
</head>

<body>
<jsp:include page="/WEB-INF/includes/header.jsp" />

<div class="container">

    <h1 style="color: white">${actor.name} Profile Page</h1>

    <div class="row">
        <div class="col-sm-5" id="leftOverview">
            <div class="row">
                <div class="row">
                    <div class="col-md-12" id="movieImg">
                        <img src="https://image.tmdb.org/t/p/w500//${actor.profilePath}" onerror="this.src='../../resources/img/placeholderposter.png'">
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12" id="movieDesc">
                        <div id="stats">
                            <ul>
                                <h1>${actor.name}</h1>
                                <li><span class="detail">Birthday: </span>${actor.birthday}</li>
                                    <c:if test="${actor.gender==0}">
                                    </c:if>
                                    <c:if test="${actor.gender==1}">
                                        <li><span class="detail">Gender: </span>Female</li>
                                    </c:if>
                                    <c:if test="${actor.gender==2}">
                                        <li><span class="detail">Gender: </span>Male</li>
                                    </c:if>
                                <li><span class="detail">Place of birth: </span>${actor.placeOfBirth}</li>
                                <li><span class="detail">Popularity: </span>${actor.popularity}</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>

        </div>
        <div class="col-sm-7" id="rightDesc">
            <h1>Biography</h1>
            <div class="row">
                <p>${actor.biography}</p>
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
        $("#rightDesc").css({'height':($("#leftOverview").height()+'px')});
    });
</script>

</html>

