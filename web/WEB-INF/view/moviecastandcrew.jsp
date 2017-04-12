<!DOCTYPE html>
<html>

<head>
    <title>Movie Synopsis</title>
    <meta charset="utf-8">

    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css?family=Raleway:300" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
    <link href="index.css" rel="stylesheet">



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
            height: 100%;
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



        .movieReview{
            text-align: left;
            padding: 2%;
        }

        .reviewDate{
            color: gray;
            margin-left: 1%;
        }

        .reviewAuthor{
            color: teal;
        }

        .reviewFull{

        }
    </style>

</head>

<body>
        <nav class="navbar navbar-toggleable-md navbar-inverse sticky-top">
        <div class="container">
            <a class="navbar-brand" href="./index.html"><img src="../../resources/img/firlogo.png">Firdango</a>

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

        <h1 style="color: white">Fifty Shades Darker Cast & Crew</h1>
        <div class="row">
            <ul id="overviewList">
                <li><a href="./movieoverview.html">Overview</a></li>
                <li><a href="./movietimesandtickets.html">Movie Times + Tickets</a></li>
                <li><a href="./moviesynopsis.html">Synopsis</a></li>
                <li><a href="./moviereviews.html">Movie Reviews</a></li>
                <li><a href="./movietrailers.html">Trailers</a></li>
                <li><a href="./moviephotosandposters.html">Photos + Posters</a></li>
                <li class="active"><a href="./moviecastandcrew.html">Cast + Crew</a></li>

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
                <h1>Cast + Crew</h1>
                <div class="row">
Cast

Dakota Johnson Anastasia Steele
Jamie Dornan Christian Grey
Eric Johnson Jack Hyde
Rita Ora Mia Gray
Luke Grimes Elliot Grey
Victor Rasuk José Rodriguez
Eloise Mumford Kate
Bella Heathcote Leila Williams
Kim Basinger Elena Lincoln
Marcia Gay Harden Mrs. Grey
Max Martini Taylor
Bruce Altman Jerry Roach
Andrew Airlie Carrick Grey
Robinne Lee Ros Bailey
Amy Price-Francis Liz
Fay Masterson Mrs. Jones
Ryker Brown 4-Year Old Christian
Logan Brown 4-Year Old Christian
John Callander Pimp
Carmen Dollard Christian's Birth Mom
Ellen Ewusie Gallery Guest
Elizabeth McLaughlin Gallery Owner
Albert Nicholas Waiter
Stephan Miers Waiter
Michael Meneer Auctioneer
Michael St. John Smith Auction Bidder
Derek Green Auction Bidder
Michelle Harrison Auction Bidder
Mark de Carlo News Anchor
Bill Dow Willis
Ashleigh LaThrop Hannah
Stephanie Florian News Reporter
Julia Dominczak Gretchen
Shiraine Haas Gwen
Colin Lawrence Penthouse Restaurant Customer
Lucia Walters Penthouse Restaurant Customer
Brooke Johnston Whispering Gallery Lady
Paniz Zade Salon Receptionist
Carmel Amit Whispering Guest at Masked Party
Isaiah Dobbs Flower Delivery Man
Jose James Gala Crooner
Otis Brown Band Member
Aaron Parks Band Member
Josh Hari Band Member
Rob Compton Yacht Captain
Peter Boulanger Fire Choreographer
Neezar Joseph Elferzeli Fire Breather
Ryan Mellors Juggler
Chris Murdoch Juggler
Crew

James Foley Director
Dana Brunetti Producer
E.L. James Producer, Book Author
Marcus Viscidi Producer, Unit Production Manager
Michael DeLuca Producer
Alex Burdett Special Effects Coordinator
Andy Wilson Camera Operator
Barbara Kelly Unit Production Manager
Bryan Litson CG Supervisor
Carolyn A. Loucks Set Decorator
Craig Humphries Art Director
Dana Sano Musical Direction/Supervision
Dane A. Davis Supervising Sound Editor
Danny Elfman Composer (Music Score)
David K. Arnold First Assistant Director
Debra Wiebe Hair Styles
Eddy Santos Second Assistant Director
Evelyne Noraz Department Head Makeup
Frank A. Montaño Re-Recording Mixer
Graham Stumpf Post Production Supervisor
Janice MacIsaac Costumes Supervisor
Jay Mitchell Set Designer
Jeremy Stanbridge Supervising Art Director
Jim Ramsay Set Designer
John Schwartzman Cinematographer
Jon Taylor Re-Recording Mixer
Julie Schubert Casting
Karin Behrenz Second Assistant Director
Kathleen Whelan Production Coordinator
Kevin Hahn Visual Effects Supervisor
Kyle White Set Designer
Laray Mayfield Casting
Mark Noda Production Sound Mixer
Mary Prendergast Post Production Coordinator
MPC Visual Effects
Nelson Coates Production Designer
Niall Leonard Screenwriter
Paul Barry First Assistant Director
Peter Bodnarus Art Director
Phil Nee Nee Second Assistant Director
Richard Francis-Bruce Editor
Richard Spriggs Supervising Animator
Rosalina Da Silva Department Head Makeup
Scott Ateah Stunts Coordinator
Shay Cunliffe Costume Designer
Stephanie Flack Supervising Sound Editor Provided by Rovi
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
                <img id="footer-landmarks" src="./footer-landmarks.png">

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
<script src="index.js"></script>

</html>

