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
    Movie Titles:    Maven Pro
    Primary Texts (eg. article title):     Raleway
    Secondary Texts (eg. article content): Josefin Sans
    -->
    <link href="https://fonts.googleapis.com/css?family=Raleway:300|Roboto|Maven+Pro|Josefin+Sans:300,400" rel="stylesheet">
    <link href="resources/css/index.css" rel="stylesheet">

</head>

<body>
<jsp:include page="WEB-INF/includes/header.jsp" />


<div id="topMoviesDiv" class="container">
    <h1 class="display-5 text-white border-bottom-1">Top Movies</h1>
    <c:forEach var="row" begin="0" end="2">
        <div class="card-deck">
            <c:forEach var="col" begin="0" end="3" >
                <c:url var="overviewLink" value="/overview">
                    <c:param name="movieId" value="${movies[row*4+col].id}" />
                </c:url>
                <a href="${overviewLink}" class="card card-inverse text-center">
                    <img class="card-img-top" src="https://image.tmdb.org/t/p/w500//${movies[row*4+col].poster}" alt="">
                    <div class="card-block">
                        <h4 class="card-title">${movies[row*4+col].title}</h4>
                    </div>
                </a>
            </c:forEach>
        </div>
    </c:forEach>
</div>

<jsp:include page="WEB-INF/includes/footer.jsp" />
</body>

<script src="https://code.jquery.com/jquery-3.1.1.slim.min.js" integrity="sha384-A7FZj7v+d/sdmMqp/nOQwliLvUsJfDHW+k9Omg/a/EheAdgtzNs3hpfag6Ed950n" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js" integrity="sha384-DztdAPBWPRXSA/3eYEEUWrWCy7G5KFbe8fFjk5JAIxUYHKkDx6Qin1DkWx51bBrb" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js" integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn" crossorigin="anonymous"></script>
<script src="resources/js/index.js"></script>

</html>
