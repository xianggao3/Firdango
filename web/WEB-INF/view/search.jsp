<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>

<head>
    <title>Search Results</title>
    <meta charset="utf-8">

    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css?family=Raleway:300" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
    <link href="../../resources/css/index.css" rel="stylesheet">

    <style>
        #overviewList li {
            display: inline;
        }

        #overviewList {
            width: 100%;
            margin-bottom: 2%;
        }

        #overviewList li {
            color: orange;
            background-color: rgba(100, 100, 100, 0.5);
            border-radius: 5px;
            padding: 1%;
        }

        #overviewList a {
            color: white;
        }

        #overviewList .active {
            background-color: white;
            color: black;
        }

        #overviewList .active a {
            color: black;
        }

        #leftOverview {
            text-align: left;
            background-color: rgba(240, 240, 240, 0.9);
            height: auto;
        }
    </style>
</head>
<body>
    <jsp:include page="/WEB-INF/includes/header.jsp" />
    
    <div class="container">
        <h1 style="color: white">Theatre Results for "${qs}"</h1>
    </div>
    <div id="topMoviesDiv" class="container">
        <div class="card-deck">
            <c:forEach items="${theatreRes}" var="theatre">
                    <c:url var="overviewLink" value="/theatre">
                        <c:param name="theatreId" value="${theatre.id}" />
                    </c:url>
                    <a href="${overviewLink}" class="card card-inverse text-center">
                        <div class="card-block">
                            <h4 class="card-title" style="color: orange;">${theatre.name}</h4>
                            <h6 class="card-title">${theatre.telephone}</h6>
                        </div>
                    </a>
            </c:forEach>
        </div>
    </div>


    <div class="container">
       <h1 style="color: white">Movie Results for "${qs}"</h1>
    </div>
    <div id="topMoviesDiv" class="container">
            <div class="card-deck">
                <c:forEach items="${searchRes}" var="actor" >
                    <c:url var="overviewLink" value="/overview">
                        <c:param name="movieId" value="${actor.id}" />
                    </c:url>
                    <a href="${overviewLink}" class="card card-inverse text-center">
                        <img class="card-img-top" height="360" style="min-width:243px;" src="https://image.tmdb.org/t/p/w500//${actor.poster}" onerror="this.src='../../resources/img/placeholderposter.png'">
                        <div class="card-block">
                            <h4 class="card-title">${actor.title}</h4>
                        </div>
                    </a>
                </c:forEach>
            </div>
    </div>

    <div class="container">
        <h1 style="color: white">Actor Results for "${qs}"</h1>
    </div>
    <div id="topMoviesDiv" class="container">
        <div class="card-deck">
            <c:forEach items="${actorRes}" var="actor">
                <c:url var="overviewLink" value="/actor">
                    <c:param name="actorId" value="${actor.name}" />
                </c:url>
                <a href="${overviewLink}" class="card card-inverse text-center">
                    <img class="card-img-top" height="360" style="min-width:243px;" src="https://image.tmdb.org/t/p/w500//${actor.profilePath}" onerror="this.src='../../resources/img/placeholderposter.png'">
                    <div class="card-block">
                        <h4 class="card-title">${actor.name}</h4>
                    </div>
                </a>
            </c:forEach>
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
        $("img[src$='../../resources/img/placeholderposter.png']").parent().toggle();
    })
</script>
</html>
