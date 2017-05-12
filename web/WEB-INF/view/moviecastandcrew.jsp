<!DOCTYPE html>
<html>

<head>
    <title>Movie Synopsis</title>
    <meta charset="utf-8">

    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css?family=Raleway:300" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
    <link href="./resources/css/index.css" rel="stylesheet">
    <link href="./resources/css/movie.css" rel="stylesheet">
    <link href="./resources/css/moviecastandcrew.css" rel="stylesheet">

</head>

<body>
    <jsp:include page="/WEB-INF/includes/header.jsp" />

    <div class="container">

        <h1 style="color: white">Fifty Shades Darker Cast & Crew</h1>
        <div class="row">
            <ul id="overviewList">
                <li><a href="overview?movieId=${movie.id}">Overview</a></li>
                <li><a href="timesandtickets?movieId=${movie.id}">Movie Times + Tickets</a></li>
                <li><a href="synopsis?movieId=${movie.id}">Synopsis</a></li>
                <li><a href="reviews?movieId=${movie.id}">Movie Reviews</a></li>
                <li><a href="trailers?movieId=${movie.id}">Trailers</a></li>
                <li><a href="photosandposters?movieId=${movie.id}">Photos + Posters</a></li>
                <li class="active"><a href="castandcrew?movieId=${movie.id}">Cast + Crew</a></li>
            </ul>
        </div>

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
                                    <li><span class="detail">Fan Ratings: </span>1337</li>
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

        <jsp:include page="/WEB-INF/includes/footer.jsp" />

</body>

<script src="https://code.jquery.com/jquery-3.1.1.slim.min.js" integrity="sha384-A7FZj7v+d/sdmMqp/nOQwliLvUsJfDHW+k9Omg/a/EheAdgtzNs3hpfag6Ed950n" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js" integrity="sha384-DztdAPBWPRXSA/3eYEEUWrWCy7G5KFbe8fFjk5JAIxUYHKkDx6Qin1DkWx51bBrb" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js" integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn" crossorigin="anonymous"></script>
<script src="index.js"></script>

</html>

