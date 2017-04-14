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

                <a class="display-4 text-white">MOVIE NEWS</a>
            </div>
        </div>
        <div class="container">
            <div class="container-fluid">

            <div id="newMoviesDiv" class="container">
            <h1 class="display-5 text-white border-bottom-1">Original Shows</h1>

            <div class="card-deck">
            
                <a href="#" class="card card-inverse text-center">
                    <img class="card-img-top" src="https://images.fandango.com/imagerelay/300/0/video.fandango.com/MPX/image/NBCU_Fandango/82/651/WT_GetOut_OG.jpg/image.jpg/redesign/static/img/noxSquare.jpg" alt="">
                    <div class="card-block">
                        <h4 class="card-title">Weekend Tickets:Get out, Rock Dog, Fist Fight</h4>
                    </div>
                </a>
                <a href="#" class="card card-inverse text-center">
                    <img class="card-img-top" src="http://images.fandango.com/imagerelay/300/0/video.fandango.com/MPX/image/NBCU_Fandango/365/23/FR_AdamMcKay_Original.jpg/image.jpg/redesign/static/img/noxSquare.jpg" alt="">
                    <div class="card-block">
                        <h4 class="card-title">FrontRunners Season 4: Adam McKay - The Big Short</h4>
                    </div>
                </a>
                <a href="#" class="card card-inverse text-center">
                    <img class="card-img-top" src="http://images.fandango.com/imagerelay/300/0/video.fandango.com/MPX/image/NBCU_Fandango/958/127/MMM_RockDog_OG.jpg/image.jpg/redesign/static/img/noxSquare.jpg" alt="">
                    <div class="card-block">
                        <h4 class="card-title">Mom's Movie Minutes: Is 'Rock Dog' Perfect For Your 5-Year-Old?</h4>
                    </div>
                </a>
                <a href="#" class="card card-inverse text-center">
                    <img class="card-img-top" src="http://images.fandango.com/imagerelay/300/0/video.fandango.com/MPX/image/NBCU_Fandango/654/431/RK_Mythical_OG.jpg/image.jpg/redesign/static/img/noxSquare.jpg" alt="">
                    <div class="card-block">
                        <h4 class="card-title">Reel Kids: Kids Talk About Mythical Creatures</h4>
                    </div>
                </a>
            </div>
        </div>

        <div id="nowPlayingDiv" class="container">
            <h1 class="display-5 text-white border-bottom-1">Features</h1>
            
            <div class="card-deck">
                <a href="" class="card card-inverse text-center">
                    <img class="card-img-top" src="http://images.fandango.com/ImageRenderer/300/0/redesign/static/img/default_poster.png/0/images/masterrepository/other/intro_John%20Wick.JPG" alt="Our Favorite Movie Hit Men" alt="">
                    <div class="card-block">
                        <h4 class="card-title">Our Favorite Movie Hitman</h4>
                    </div>
                </a>
                
                <a href="#" class="card card-inverse text-center">
                    <img class="card-img-top" src="http://images.fandango.com/ImageRenderer/300/0/redesign/static/img/default_poster.png/0/images/fandangoblog/zootopia-180_35.356.jpg" alt="">
                    <div class="card-block">
                        <h4 class="card-title">Watch Great Moments From Oscar Winner: 'Zootopia'</h4>
                    </div>
                </a>
                
                <a href="#" class="card card-inverse text-center">
                    <img class="card-img-top" src="http://images.fandango.com/ImageRenderer/300/0/redesign/static/img/default_poster.png/0/images/masterrepository/other/INTRO_EmmaStone.jpg" alt="">
                    <div class="card-block">
                        <h4 class="card-title">The Academy Awards 2017: The Best Red Carpet Looks</h4>
                    </div>
                </a>

                <a href="#" class="card card-inverse text-center">
                    
                    <img class="card-img-top" src="http://images.fandango.com/ImageRenderer/300/0/redesign/static/img/default_poster.png/0/images/spotlight/will-smith-bright.jpg"  alt="">
                    <div class="card-block">
                        <h4 class="card-title">Here's Your First Look At Will Smith's New Monster Movie, 'Bright'</h4>
                    </div>
                </a>
                
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
