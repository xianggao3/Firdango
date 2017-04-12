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
    <nav class="navbar navbar-toggleable-md navbar-inverse sticky-top">
        <div class="container">
            <a class="navbar-brand" href="/index.jsp"><img src="/resources/img/firlogo.png">Firdango</a>

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

    <!-- Email Subscription Form -->
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
                <img id="footer-landmarks" src="WEB-INF/view/footer-landmarks.png">

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

            <center class="copyright">
                © 2017 Firdango. All rights reserved.
            </center>
        </div>
    </div>
    <!-- end footer -->

</body>

<script src="https://code.jquery.com/jquery-3.1.1.slim.min.js" integrity="sha384-A7FZj7v+d/sdmMqp/nOQwliLvUsJfDHW+k9Omg/a/EheAdgtzNs3hpfag6Ed950n" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js" integrity="sha384-DztdAPBWPRXSA/3eYEEUWrWCy7G5KFbe8fFjk5JAIxUYHKkDx6Qin1DkWx51bBrb" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js" integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn" crossorigin="anonymous"></script>
<script src="resources/js/index.js"></script>

</html>
