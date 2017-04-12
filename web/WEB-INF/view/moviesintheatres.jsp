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
        <link href="index.css" rel="stylesheet">

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
        <nav class="navbar navbar-toggleable-md navbar-inverse sticky-top">
            <div class="container">
                <a class="navbar-brand" href="./index.html"><img src="./firlogo.png">Firdango</a>
    
                <div class="collapse navbar-collapse" id="navbarColor01">
                    <ul class="navbar-nav mr-auto">
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="moviesDropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Movies
                            </a>
                            <div class="dropdown-menu" aria-labelledby="moviesDropdown">
                                <a class="dropdown-item" href="./moviesintheatres.html">Now Playing</a>
                                <a class="dropdown-item" href="./moviesintheatres.html">Opening This Week</a>
                                <a class="dropdown-item" href="./moviesintheatres.html">Pre Sales Tickets</a>
                                <a class="dropdown-item" href="./moviesintheatres.html">Coming Soon</a>
                                <a class="dropdown-item" href="./moviesintheatres.html">More Movies</a>
                            </div>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="timesAndTicketsDropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Times & Tickets
                            </a>
                            <div class="dropdown-menu" aria-labelledby="timesAndTicketsDropdown">
                                <a class="dropdown-item" href="./movietimesandtickets.html">Tickets for 'Fifty Shades Darker'</a>
                            </div>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="newsDropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                News
                            </a>
                            <div class="dropdown-menu" aria-labelledby="newsDropdown">
                                <a class="dropdown-item" href="./movienews.html">Featured News</a>
                                <a class="dropdown-item" href="./movienews.html">Explore Content</a>
                            </div>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="vipDropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Sign In
                            </a>
                            <div class="dropdown-menu" aria-labelledby="vipDropdown">
                                <a class="dropdown-item" href="./signup.html">Register</a>
                                <a class="dropdown-item" href="./signin.html">Sign In</a>
                            </div>
                        </li>
                    </ul>
                    <form class="form-inline">
                        <input class="form-control mr-sm-2" type="text" placeholder="Enter a movie or location...">
                        <input type= "button" class = "btn btn-outline-warning my-2 my-sm-0" onClick="parent.location='./movietimesandtickets.html'" value='Search'>
                    </form>
                </div>
            </div>
        </nav>

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
        </div>

        <div id="nowPlayingDiv" class="container">
            <h1 class="display-5 text-white border-bottom-1">NOW PLAYING</h1>
            
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

    </div>
    </div>

    <div id="offersDiv" class="container">
        <h1 class="display-5 text-white">Special Offers</h1>

        <div class="card-group">
            <div class="card card-inverse">
                <img class="card-img-top" src="https://images.fandango.com/r103.4//images/spotlight/fd_ShackSong_300x150_offerstrip_v1.png" alt="Card image cap">
                <div class="card-block">
                    <h4 class="card-title">'The Shack' Gift With Purchase</h4>
                    <p class="card-text">Buy tickets and get a free song download.</p>
                </div>
                <div class="card-footer">
                    <a href="#" class="card-text"><small class="text-primary">Buy Tickets</small></a>
                </div>
            </div>
            <div class="card card-inverse">
                <img class="card-img-top" src="https://images.fandango.com/r103.4//images/spotlight/fd_VIP_300x150_offerstrip_v11.png" alt="Card image cap">
                <div class="card-block">
                    <h4 class="card-title">Firdango VIP</h4>
                    <p class="card-text">Change of plans? No sweat. Refund or exchange your tickets as a Firdango VIP.</p>
                </div>
                <div class="card-footer">
                    <a href="#" class="card-text"><small class="text-primary">Join Now For Free</small></a>
                </div>
            </div>
            <div class="card card-inverse">
                <img class="card-img-top" src="https://images.fandango.com/r103.4//images/spotlight/fd_LEGOBAT_300x150_offerstrip_v1.png" alt="Card image cap">
                <div class="card-block">
                    <h4 class="card-title">'The LEGO Batman Movie' Gift With Purchase</h4>
                    <p class="card-text">Buy tickets to ‘The LEGO Batman Movie’ and get 50% off a digital copy of ‘The LEGO Movie’ on FirdangoNOW.</p>
                </div>
                <div class="card-footer">
                    <a href="#" class="card-text"><small class="text-primary">Buy Tickets</small></a>
                </div>
            </div>
            <div class="card card-inverse">
                <img class="card-img-top" src="https://images.fandango.com/r103.4//images/spotlight/PromoUnit_300x15012.png" alt="Card image cap">
                <div class="card-block">
                    <h4 class="card-title">Firdango Movie Gift Cards</h4>
                    <p class="card-text">Give the gift of movies. Get your Firdango Movie Gift Card now.</p>
                </div>
                <div class="card-footer">
                    <a href="#" class="card-text"><small class="text-primary">Buy Gift Cards</small></a>
                </div>
            </div>
        </div>
    </div>
    <!-- end offersDiv -->

    <!-- Email Subscription -->
    <div class="container">
        <section class="home-newsletter">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="single">
                            <h2>Subscribe to our Newsletter</h2>
                            <div class="input-group">
                                <input type="email" class="form-control" placeholder="Enter your email">
                                <span class="input-group-btn">
                                    <button class="btn btn-theme" type="submit">Subscribe</button>
                                </span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>

    <!-- Google Ads-->
    <div id="adsenseDiv" class="container">
        <center class="adsense-margin">
            <script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
            <ins class="adsbygoogle" style="display:inline-block;width:728px;height:90px" data-ad-client="ca-pub-4834950964481595" data-ad-slot="6101749327"></ins>
            <script>
                (adsbygoogle = window.adsbygoogle || []).push({});
            </script>
        </center>
    </div>
    <!-- end Google Ads -->

    <!-- Footer -->
    <div id="footer">
        <div class="container">
            <!-- Primary footer -->
            <div class="row">
                <div class="col-sm-3">
                    <div class="foot-header">
                        EXPERIENCE + EXPLORE
                    </div>
                    <div class="foot-links">
                        <a href="#">Movies in Theaters</a>
                        <a href="#">Movie Actors and Actresses</a>
                        <a href="#">Mobile</a>
                        <a href="#">New DVD Releases</a>
                        <a href="#">Special Offers</a>
                        <a href="#">Gift Cards</a>
                    </div>
                </div>
                <div class="col-sm-3">
                    <div class="foot-header">EDITORIAL FEATURES</div>
                    <div class="foot-links">
                        <a href="#">Family</a>
                        <a href="#">Indie Movie Guide</a>
                        <a href="#">Movie News</a>
                        <a href="#">Awards Watch</a>
                    </div>
                </div>
                <div class="col-sm-3">
                    <div class="foot-header">
                        VIDEOS
                    </div>
                    <div class="foot-links">
                        <a href="#">Movie Trailers</a>
                        <a href="#">Frontrunners</a>
                        <a href="#">Weekend Ticket</a>
                        <a href="#">Mom's Movie Minute</a>
                        <a href="#">Reel Kids</a>
                    </div>
                </div>
                <div class="col-sm-3">
                    <div class="foot-header">
                        SOCIAL MEDIA
                    </div>
                    <div class="foot-links">
                        <a href="#"><i class="fa fa-facebook-official fa-lg" aria-hidden="true"></i> Facebook</a>
                        <a href="#"><i class="fa fa-twitter-square fa-lg" aria-hidden="true"></i> Twitter</a>
                        <a href="#"><i class="fa fa-instagram fa-lg" aria-hidden="true"></i> Instagram</a>
                        <a href="#"><i class="fa fa-youtube fa-lg" aria-hidden="true"></i> YouTube</a>
                        <a href="#"><i class="fa fa-google-plus-official fa-lg" aria-hidden="true"></i> Google Plus</a>
                    </div>
                </div>
            </div>
            <!-- Alt footer -->
            <div class="row">
                <center><img src="http://200.27.156.170/ean_default/img/cocha/footer-bg.png"></center>
                <div id="bottom-footer">
                    <div class="row">
                        <div class="col-md-8">
                            <a href="#">About Us</a>
                            <a href="#">Careers</a>
                            <a href="#">Advertising</a>
                            <a href="#">Affiliate Program</a>
                            <a href="#">Loyalty Program</a>
                            <a href="#">Privacy Policy</a>
                            <a href="#">Terms and Policies</a>
                        </div>
                        <div class="col-md-4 phone">
                            <div class="pull-left">
                                <i class="fa fa-phone" aria-hidden="true"></i>
                                <span class="red">(800) 555-1111<small>24/7 Customer Support</small></span>
                            </div>
                            <div class="pull-right">
                                <i class="fa fa-envelope" aria-hidden="true"></i>
                                <span class="red">support@firdango.com<small>Send Us An Email!</small></span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <!-- end footer -->

</body>

<script src="https://code.jquery.com/jquery-3.1.1.slim.min.js" integrity="sha384-A7FZj7v+d/sdmMqp/nOQwliLvUsJfDHW+k9Omg/a/EheAdgtzNs3hpfag6Ed950n" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js" integrity="sha384-DztdAPBWPRXSA/3eYEEUWrWCy7G5KFbe8fFjk5JAIxUYHKkDx6Qin1DkWx51bBrb" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js" integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn" crossorigin="anonymous"></script>
<script src="index.js"></script>

</html>
