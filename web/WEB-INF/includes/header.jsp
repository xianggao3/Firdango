<nav class="navbar navbar-toggleable-md navbar-inverse sticky-top">
    <div class="container">
        <a class="navbar-brand" href=""><img src="../../static/img/firlogo.png">Firdango</a>

        <div class="collapse navbar-collapse" id="navbarColor01">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="moviesDropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Movies
                    </a>
                    <div class="dropdown-menu" aria-labelledby="moviesDropdown">
                        <a class="dropdown-item" href="../view/moviesintheatres.jsp">Now Playing</a>
                        <a class="dropdown-item" href="../view/moviesintheatres.jsp">Opening This Week</a>
                        <a class="dropdown-item" href="../view/moviesintheatres.jsp">Pre Sales Tickets</a>
                        <a class="dropdown-item" href="../view/moviesintheatres.jsp">Coming Soon</a>
                        <a class="dropdown-item" href="../view/moviesintheatres.jsp">More Movies</a>
                    </div>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="timesAndTicketsDropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Times & Tickets
                    </a>
                    <div class="dropdown-menu" aria-labelledby="timesAndTicketsDropdown">
                        <a class="dropdown-item" href="../view/movietimesandtickets.jsp">Tickets for 'Fifty Shades Darker'</a>
                    </div>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="newsDropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        News
                    </a>
                    <div class="dropdown-menu" aria-labelledby="newsDropdown">
                        <a class="dropdown-item" href="../view/movienews.jsp">Featured News</a>
                        <a class="dropdown-item" href="../view/movienews.jsp">Explore Content</a>
                    </div>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="vipDropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Sign In
                    </a>
                    <div class="dropdown-menu" aria-labelledby="vipDropdown">
                        <a class="dropdown-item" href="../view/signup.jsp">Register</a>
                        <a class="dropdown-item" href="../view/signin.jsp">Sign In</a>
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