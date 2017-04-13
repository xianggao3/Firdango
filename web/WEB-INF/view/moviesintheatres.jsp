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
        <link href="./resources/css/index.css" rel="stylesheet">

        <style> 
        #overviewList li {
            display: inline;
            text-transform: uppercase;
                padding: 10px 10px 10px 0;
        }

        #overviewList {
            display:block;
            width: 100%;
            margin-top:2%;
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
            <div class="container-fluid">

                <a class="display-4 text-white">MOVIES NOW PLAYING</a>

                <ul id="overviewList">
                    <li class="active"><a href="#">now playing</a></li>
                    <li><a href="#">coming soon</a></li>
                    <li><a href="#">MOVIE GENRES</a></li>
                    <li><a href="#">TOP BOX OFFICE</a></li>
                    <li><a href="#">AT HOME</a></li>
                </ul>

            </div>
        </div>
        <div class="container">
                    <div class="container-fluid">
                <h4 style="color: white">Filter by Genre</h4>
        <div class="row">
            <ul id="overviewList">
                <li class="active"><a href="">All</a></li>
                <li><a href="#">Action</a></li>
                <li><a href="#">Comedy</a></li>
                <li><a href="#">Drama</a></li>
                <li><a href="#">Kids</a></li>
                <li><a href="#">Romance</a></li>
                <li><a href="#">Sci-Fi</a></li>

            </ul>
        </div>

        <div id="newMoviesDiv" class="container">
            <h1 class="display-5 text-white border-bottom-1">OPENING THIS WEEK</h1>
            
                

            <div class="card-deck">
                <a href="overview" class="card card-inverse text-center">
                    <img class="card-img-top" src="https://images.mymovies.net/images/film/cin/350x522/fid16883.jpg" alt="">
                    <div class="card-block">
                        <h4 class="card-title">Fifty Shades Darker</h4>
                    </div>
                </a>
                <a href="overview" class="card card-inverse text-center">
                    <img class="card-img-top" src="https://www.myvue.com/-/media/images/film%20and%20events/february%202017/legobatmanposter2.jpg" alt="">
                    <div class="card-block">
                        <h4 class="card-title">The Lego Batman Movie</h4>
                    </div>
                </a>
                <a href="overview" class="card card-inverse text-center">
                    <img class="card-img-top" src="https://images.mymovies.net/images/film/cin/350x522/fid16999.jpg" alt="">
                    <div class="card-block">
                        <h4 class="card-title">Logan (2017)</h4>
                    </div>
                </a>

                <a href="overview" class="card card-inverse text-center">
                    <img class="card-img-top" src="https://images.mymovies.net/images/film/cin/350x522/fid16631.jpg" alt="">
                    <div class="card-block">
                        <h4 class="card-title">Patriots Day</h4>
                    </div>
                </a>
            </div>
        </div>

        <div id="nowPlayingDiv" class="container">
            <h1 class="display-5 text-white border-bottom-1">NOW PLAYING</h1>
            
            <div class="card-deck">
                <a href="overview" class="card card-inverse text-center">
                    <img class="card-img-top" src="https://images.mymovies.net/images/film/cin/350x522/fid16883.jpg" alt="">
                    <div class="card-block">
                        <h4 class="card-title">Fifty Shades Darker</h4>
                    </div>
                </a>
                <a href="overview" class="card card-inverse text-center">
                    <img class="card-img-top" src="https://www.myvue.com/-/media/images/film%20and%20events/february%202017/legobatmanposter2.jpg" alt="">
                    <div class="card-block">
                        <h4 class="card-title">The Lego Batman Movie</h4>
                    </div>
                </a>
                <a href="overview" class="card card-inverse text-center">
                    <img class="card-img-top" src="https://images.mymovies.net/images/film/cin/350x522/fid16999.jpg" alt="">
                    <div class="card-block">
                        <h4 class="card-title">Logan (2017)</h4>
                    </div>
                </a>

                <a href="overview" class="card card-inverse text-center">
                    <img class="card-img-top" src="https://images.mymovies.net/images/film/cin/350x522/fid16631.jpg" alt="">
                    <div class="card-block">
                        <h4 class="card-title">Patriots Day</h4>
                    </div>
                </a>
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
