<!DOCTYPE html>
<html>

<head>
    <title>Movie Synopsis</title>
    <meta charset="utf-8">

    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css?family=Raleway:300" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
    <link href="./resources/css/index.css" rel="stylesheet">



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

        #movieImg {
            margin: 0;
            padding: 0;
            text-align: center;
        }

        #movieDesc {
            padding: 4% auto;
        }

        #movieImg img {
            width: 94%;
        }

        body {
            background-image: url("http://68.media.tumblr.com/000dec43ea889876c1ee790bda6eda3c/tumblr_o1l249LzcK1teue7jo1_1280.jpg");
            background-repeat: cover;
            background-size: 100%;
            overflow: auto;
            padding-bottom: 3%;
        }

        #stats {
            padding: 3%;
        }

        #stats ul {
            list-style: none
        }

        #stats .detail {
            color: teal;
        }

        #rightDesc {
            height: auto;
            background-color: rgba(0, 0, 0, 0.7);
            padding: 2%;
            text-align: center;
            color: white;
        }

        #rightDesc iframe {
            width: 100%;
            height: 80%;
        }

        hr {
            display: block;
            height: 1px;
            border: 0;
            border-top: 1px solid #ccc;
            margin: 1em 0;
            padding: 0;
        }


    </style>

</head>

<body>
<jsp:include page="/WEB-INF/includes/header.jsp" />
    
    <div class="container">

        <h1 style="color: white">Fifty Shades Darker Synopsis</h1>
        <div class="row">
            <ul id="overviewList">
                <li><a href="overview">Overview</a></li>
                <li><a href="timesandtickets">Movie Times + Tickets</a></li>
                <li class="active"><a href="synopsis">Synopsis</a></li>
                <li><a href="reviews">Movie Reviews</a></li>
                <li><a href="trailers">Trailers</a></li>
                <li><a href="photosandposters">Photos + Posters</a></li>
                <li><a href="castandcrew">Cast + Crew</a></li>

            </ul>
        </div>

        <div class="row">
            <div class="col-sm-5" id="leftOverview">
                <div class="row">
                    <div class="row">
                        <div class="col-md-12" id="movieImg">
                            <img src="https://i.ytimg.com/vi/vnLqJLeTMVU/maxresdefault.jpg">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12" id="movieDesc">
                            <div id="stats">
                                <center><img style="width: 50%; margin: 3% auto" src="http://www.homequalitymark.com/filelibrary/interactive_scorecard/4_star.png" /></center>
                                <ul>
                                    <li><span class="detail">Fan Ratings: </span>1337</li>
                                    <li><span class="detail">Rotten Tomatos: </span> 8%</li>
                                    <li><span class="detail">Released: </span>FEBRUARY 10, 2017</li>
                                    <li><span class="detail">Rating: </span> R</li>
                                    <li><span class="detail">Genre: </span> Drama, Romance</li>
                                    <li><span class="detail">Length: </span> 13:37</li>

                                </ul>
                                <input type= "button" class = "btn-danger" style="width: 100%" onClick="parent.location='./movietimesandtickets.html'" value='Buy Tickets'>
                            </div>


                        </div>
                    </div>
                </div>

            </div>
            <div class="col-sm-7" id="rightDesc">
                <h1>Synopsis</h1>
                <p>This sequel to Fifty Shades of Grey adapts the second installment in E.L. James' best-selling trilogy of novels, which chronicle the torrid love affair between the demure Anatasia Steele (Dakota Johnson) and possessive businessman Christian Grey (Jamie Dornan). This time around, Steele and Grey's attempts to build a more trusting relationship are threatened by several of his past lovers.James Foley directed this erotic drama, which co-stars Kim Basinger, Rita Ora, Eric Johnson, Bella Heathcote, and Luke Grimes. ~ Jack Rodgers, Rovi

</p><br>Provided by Rovi
            </div>
        </div>
    </div>

    <jsp:include page="WEB-INF/includes/footer.jsp" />


</body>

<script src="https://code.jquery.com/jquery-3.1.1.slim.min.js" integrity="sha384-A7FZj7v+d/sdmMqp/nOQwliLvUsJfDHW+k9Omg/a/EheAdgtzNs3hpfag6Ed950n" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js" integrity="sha384-DztdAPBWPRXSA/3eYEEUWrWCy7G5KFbe8fFjk5JAIxUYHKkDx6Qin1DkWx51bBrb" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js" integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn" crossorigin="anonymous"></script>
<script src="index.js"></script>

</html>

