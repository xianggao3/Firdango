<!DOCTYPE html>
<html>

<head>
	<title>Firdango</title>
	<meta charset="utf-8">

	<link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">
	
	<!--
    Font Scheme

    Logo (Branding): Roboto
    Movie Titles: Maven Pro
    Primary Texts: Raleway
    Secondary Texts: Josefin Sans
    -->
	<link href="https://fonts.googleapis.com/css?family=Raleway:300|Roboto|Maven+Pro|Josefin+Sans:300,400" rel="stylesheet">


	<!-- Website Font style -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">

	<style>
		#playground-container {
			height: 500px;
			overflow: hidden !important;
			-webkit-overflow-scrolling: touch;
		}

		body,
		html {
			height: 100%;
			font-family: 'Josefin Sans', sans-serif;
			background-size: cover;
		}

		.main {
			margin: 50px 15px;
		}

		h1.title {
			font-size: 50px;
			font-family: 'Raleway', sans-serif;
			font-weight: 400;
		}



		.form-group {
			margin-bottom: 15px;
		}

		label {
			margin-bottom: 15px;
			font-family: "Josefin Sans", sans-serif;
		}

		input,
		input::-webkit-input-placeholder {
			font-size: 11px;
			padding-top: 3px;
		}

		.main-login {
			background-color: #fff;
			/* shadows and rounded borders */
			-moz-border-radius: 2px;
			-webkit-border-radius: 2px;
			border-radius: 2px;
			-moz-box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
			-webkit-box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
			box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
			font-family: "Raleway", sans-serif;
		}

		.form-control {
			height: auto!important;
			padding: 8px 12px !important;
		}

		.input-group {
			-webkit-box-shadow: 0px 2px 5px 0px rgba(0, 0, 0, 0.21)!important;
			-moz-box-shadow: 0px 2px 5px 0px rgba(0, 0, 0, 0.21)!important;
			box-shadow: 0px 2px 5px 0px rgba(0, 0, 0, 0.21)!important;
		}

		#button {
			border: 1px solid #ccc;
			margin-top: 28px;
			padding: 6px 12px;
			color: #666;
			text-shadow: 0 1px #fff;
			cursor: pointer;
			-moz-border-radius: 3px 3px;
			-webkit-border-radius: 3px 3px;
			border-radius: 3px 3px;
			-moz-box-shadow: 0 1px #fff inset, 0 1px #ddd;
			-webkit-box-shadow: 0 1px #fff inset, 0 1px #ddd;
			box-shadow: 0 1px #fff inset, 0 1px #ddd;
			background: #f5f5f5;
			background: -moz-linear-gradient(top, #f5f5f5 0%, #eeeeee 100%);
			background: -webkit-gradient(linear, left top, left bottom, color-stop(0%, #f5f5f5), color-stop(100%, #eeeeee));
			background: -webkit-linear-gradient(top, #f5f5f5 0%, #eeeeee 100%);
			background: -o-linear-gradient(top, #f5f5f5 0%, #eeeeee 100%);
			background: -ms-linear-gradient(top, #f5f5f5 0%, #eeeeee 100%);
			background: linear-gradient(top, #f5f5f5 0%, #eeeeee 100%);
			filter: progid: DXImageTransform.Microsoft.gradient(startColorstr='#f5f5f5', endColorstr='#eeeeee', GradientType=0);
		}

		.main-center {
			margin-top: 30px;
			margin: 0 auto;
			max-width: 400px;
			padding: 10px 40px;
			background: black;
			color: orange;
			text-shadow: none;
			-webkit-box-shadow: 0px 3px 5px 0px rgba(0, 0, 0, 0.31);
			-moz-box-shadow: 0px 3px 5px 0px rgba(0, 0, 0, 0.31);
			box-shadow: 0px 3px 5px 0px rgba(0, 0, 0, 0.31);
		}

		span.input-group-addon i {
			color: orange;
			font-size: 17px;
		}

		.login-button {
			margin-top: 5px;
		}

		.login-register {
			font-size: 11px;
			text-align: center;
		}
	</style>

	<link href="index.css" rel="stylesheet">

	<style>
		body {
			background-image: url("http://68.media.tumblr.com/418b7834fc7a27e275db832e07868d85/tumblr_msj2jpn07Y1sfie3io1_1280.png");
		}

		hr {
			width: 10%;
			color: white;
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
		<div class="row main">
			<div class="main-login main-center">
				<h5>Sign in and enjoy exclusive VIP access to Fandango.</h5>
				<hr/>
				<form class="" method="post" action="#">

					<div class="form-group">
						<label for="email" class="cols-sm-2 control-label">Your Email</label>
						<div class="cols-sm-10">
							<div class="input-group">
								<span class="input-group-addon"><i class="fa fa-envelope fa" aria-hidden="true"></i></span>
								<input type="text" class="form-control" name="email" id="email" placeholder="Enter your Email" />
							</div>
						</div>
					</div>


					<div class="form-group">
						<label for="password" class="cols-sm-2 control-label">Password</label>
						<div class="cols-sm-10">
							<div class="input-group">
								<span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
								<input type="password" class="form-control" name="password" id="password" placeholder="Enter your Password" />
							</div>
						</div>
					</div>

					<div class="form-group ">
						<a href="#" target="_blank" type="button" id="button" class="btn btn-primary btn-lg btn-block login-button">Sign In</a>
					</div>

				</form>
			</div>
		</div>
	</div>

</body>

<script src="https://code.jquery.com/jquery-3.1.1.slim.min.js" integrity="sha384-A7FZj7v+d/sdmMqp/nOQwliLvUsJfDHW+k9Omg/a/EheAdgtzNs3hpfag6Ed950n" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js" integrity="sha384-DztdAPBWPRXSA/3eYEEUWrWCy7G5KFbe8fFjk5JAIxUYHKkDx6Qin1DkWx51bBrb" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js" integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn" crossorigin="anonymous"></script>
<script src="index.js"></script>

</html>
