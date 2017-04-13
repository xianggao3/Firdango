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

    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner" role="listbox">
            <div class="carousel-item active">
                <img class="d-block img-fluid" src="https://www.myvue.com/-/media/images/film%20and%20events/february%202017/logancarouseld.jpg?sc=" alt="First slide">
                <div class="carousel-caption d-none d-md-block">
                    <h3>Logan</h3>
                    <p>In Theaters 2/28</p>
                </div>
            </div>
            <div class="carousel-item">
                <img class="d-block img-fluid" src="https://www.myvue.com/-/media/images/film%20and%20events/july%202016/legobatmanherod.jpg?sc=" alt="Second slide">
                <div class="carousel-caption d-none d-md-block">
                    <h3>The Lego Batman Movie</h3>
                    <p>Now Playing</p>
                </div>
            </div>
            <div class="carousel-item">
                <img class="d-block img-fluid" src="https://www.myvue.com/-/media/images/film%20and%20events/february%202017/greatwalld.jpg?sc=" alt="Third slide">
                <div class="carousel-caption d-none d-md-block">
                    <h3>The Great Wall</h3>
                    <p>Now Playing</p>
                </div>
            </div>
        </div>
        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>

    <div id="topMoviesDiv" class="container">
        <h1 class="display-5 text-white border-bottom-1">Top Movies</h1>

        <div class="card-deck">
            <a href="./movieoverview.html" class="card card-inverse text-center">
                <img class="card-img-top" src="https://images.mymovies.net/images/film/cin/350x522/fid16883.jpg" alt="">
                <div class="card-block">
                    <h4 class="card-title">Fifty Shades Darker</h4>
                </div>
            </a>
            <a href="./movieoverview.html" class="card card-inverse text-center">
                <img class="card-img-top" src="https://www.myvue.com/-/media/images/film%20and%20events/february%202017/legobatmanposter2.jpg" alt="">
                <div class="card-block">
                    <h4 class="card-title">The Lego Batman Movie</h4>
                </div>
            </a>
            <a href="./movieoverview.html" class="card card-inverse text-center">
                <img class="card-img-top" src="https://images.mymovies.net/images/film/cin/350x522/fid16999.jpg" alt="">
                <div class="card-block">
                    <h4 class="card-title">Logan (2017)</h4>
                </div>
            </a>

            <a href="./movieoverview.html" class="card card-inverse text-center">
                <img class="card-img-top" src="https://images.mymovies.net/images/film/cin/350x522/fid16631.jpg" alt="">
                <div class="card-block">
                    <h4 class="card-title">Patriots Day</h4>
                </div>
            </a>
        </div>

        <!-- https://images.mymovies.net/images/film/cin/350x522/fid16502.jpg-->
        <div class="card-deck">
            <a href="./movieoverview.html" class="card card-inverse text-center">
                <img class="card-img-top" src="https://images.mymovies.net/images/film/cin/350x522/fid16502.jpg" alt="">
                <div class="card-block">
                    <h4 class="card-title">Beauty and the Beast</h4>
                </div>
            </a>
            <a href="./movieoverview.html" class="card card-inverse text-center">
                <img class="card-img-top" src="https://images.mymovies.net/images/film/cin/350x522/fid16847.jpg" alt="">
                <div class="card-block">
                    <h4 class="card-title">Hidden Figures</h4>
                </div>
            </a>
            <a href="./movieoverview.html" class="card card-inverse text-center">
                <img class="card-img-top" src="https://images.mymovies.net/images/film/cin/350x522/fid16962.jpg" alt="">
                <div class="card-block">
                    <h4 class="card-title">John Wick: Chapter Two</h4>
                </div>
            </a>
            <a href="./movieoverview.html" class="card card-inverse text-center">
                <img class="card-img-top" src="https://images.mymovies.net/images/film/cin/350x522/fid16152.jpg" alt="">
                <div class="card-block">
                    <h4 class="card-title">Sing</h4>
                </div>
            </a>
        </div>
        <div class="card-deck">
            <a href="./movieoverview.html" class="card card-inverse text-center">
                <img class="card-img-top" src="https://images.mymovies.net/images/film/cin/350x522/fid17189.jpg" alt="">
                <div class="card-block">
                    <h4 class="card-title">Moonlight</h4>
                </div>
            </a>
            <a href="./movieoverview.html" class="card card-inverse text-center">
                <img class="card-img-top" src="https://images.mymovies.net/images/film/cin/350x522/fid17038.jpg" alt="">
                <div class="card-block">
                    <h4 class="card-title">A Cure For Wellness</h4>
                </div>
            </a>
            <a href="./movieoverview.html" class="card card-inverse text-center">
                <img class="card-img-top" src="https://images.mymovies.net/images/film/cin/350x522/fid16950.jpg" alt="">
                <div class="card-block">
                    <h4 class="card-title">Lion</h4>
                </div>
            </a>
            <a href="./movieoverview.html" class="card card-inverse text-center">
                <img class="card-img-top" src="https://images.mymovies.net/images/film/cin/350x522/fid16546.jpg" alt="">
                <div class="card-block">
                    <h4 class="card-title">Moana</h4>
                </div>
            </a>
        </div>
    </div>

    <jsp:include page="WEB-INF/includes/footer.jsp" />
</body>

<script src="https://code.jquery.com/jquery-3.1.1.slim.min.js" integrity="sha384-A7FZj7v+d/sdmMqp/nOQwliLvUsJfDHW+k9Omg/a/EheAdgtzNs3hpfag6Ed950n" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js" integrity="sha384-DztdAPBWPRXSA/3eYEEUWrWCy7G5KFbe8fFjk5JAIxUYHKkDx6Qin1DkWx51bBrb" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js" integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn" crossorigin="anonymous"></script>
<script src="resources/js/index.js"></script>

</html>
