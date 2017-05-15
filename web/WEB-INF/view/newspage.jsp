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
    <link href="../resources/css/index.css" rel="stylesheet">
    <link href="../resources/css/movie.css" rel="stylesheet">
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
            <img class="card -img-top" src="https://images.fandango.com/imagerelay/300/0/video.fandango.com/MPX/image/NBCU_Fandango/82/651/WT_GetOut_OG.jpg/image.jpg/redesign/static/img/noxSquare.jpg" alt="">
            <h1 class="display-5 text-white border-bottom-1">${title}</h1>
            <font color="white">How the fashion set would interpret the Met Gala’s avant-garde dress code was the question on everyone’s mind last night. The answer? Very, very diversely. Some attendees stuck to the Comme des Garçons theme strictly—ahem, Rihanna—while others found new ways to dress the part. That birthed a range of red carpet trends, from the swooping backless dresses of Kendall Jenner and Bella Hadid, to Zendaya’s and Lily-Rose Depp’s billowing ball gowns, to the fact that not one, not two, but three attendees showed up in denim.
                In short, it might have been one of the wildest Met Gala red carpets ever—but that didn’t mean that there weren’t breakaway trends. Learn them below, and keep your eyes on upcoming red carpets to see if the themes stick—after all, don’t forget it was the Met Gala where the naked dress originated in 2015.</font>

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
