<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page session="true" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<head>
    <style>
    .hideDiv{
        display: inline-block;
    }
    </style>
</head>

<nav class="navbar navbar-toggleable-md navbar-inverse sticky-top">
    <div class="container">
        <a class="navbar-brand" href="/"><img src="../../resources/img/firlogo.png">Firdango</a>

        <div class="collapse navbar-collapse" id="navbarColor01">
            <ul class="navbar-nav mr-auto">
                <c:if test="${user.id==28}">
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="newsDropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Admin Panel
                        </a>
                            <div class="dropdown-menu" aria-labelledby="newsDropdown">
                                <a class="dropdown-item" href="/admin/getUserActivity">View User Activities</a>
                                <a class="dropdown-item" href="/admin/listReviews">Manage Reviews</a>
                                <a class="dropdown-item" href="/admin/listUsers">Manage Users</a>
                                <a class="dropdown-item" href="/admin/listMovies">Manage Movies</a>
                                <a class="dropdown-item" href="/admin/fetchNewMovies">Get New Movies</a>
                                <a class="dropdown-item" href="/admin/showNewsletterForm">Send a Newsletter</a>
                            </div>
                    </li>
                </c:if>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="moviesDropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Movies
                    </a>
                    <div class="dropdown-menu" aria-labelledby="moviesDropdown">
                        <a class="dropdown-item" href="/category/all?page=0">Now Playing</a>
                        <a class="dropdown-item" href="/category/comingsoon?page=0">Coming Soon</a>
                        <a class="dropdown-item" href="/category/all?page=0">Sort by Genre</a>
                        <a class="dropdown-item" href="/category/topboxoffice">Top Box Office</a>
                    </div>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="timesAndTicketsDropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Times & Tickets
                    </a>
                    <div class="dropdown-menu" aria-labelledby="timesAndTicketsDropdown">
                        <a class="dropdown-item" href="/theatres?page=0">All Theatres</a>
                        <a class="dropdown-item" href="/movies-in-theatres?page=0">Movies in Theatres</a>
                        <a id="nearbyLocationsLoading" class="dropdown-item" href="#">Loading nearby locations..</a>
                        <div id="nearbyLocationsHidden" style="display:none;">
                            <div class="card-block">
                                <h4 class="card-title" style="color: orange;"><a href="/theatre?theatreId=41557">AMC Loews Stony Brook 17</a></h4>
                                <h6 class="card-title">(631) 941-0156</h6>
                            </div>
                            <div class="card-block">
                                <h4 class="card-title" style="color: orange;"><a href="/theatre?theatreId=41582">Regal Ronkonkoma Stadium 9</a></h4>
                                <h6 class="card-title">(844) 462-7342</h6>
                            </div>
                            <div class="card-block">
                                <h4 class="card-title" style="color: orange;"><a href="/theatre?theatreId=41581">AMC Loews Shore 8</a></h4>
                                <h6 class="card-title">(631) 425-2785</h6>
                            </div>
                        </div>

                    </div>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="newsDropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Other
                    </a>
                    <div class="dropdown-menu" aria-labelledby="newsDropdown">
                        <a class="dropdown-item" href="/news">Featured News</a>
                        <a class="dropdown-item" href="/gift-cards">Gift Cards</a>
                    </div>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" id="vipDropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        My Firdango
                    </a>
                    <div class="dropdown-menu" aria-labelledby="vipDropdown">
                        <c:choose>
                            <c:when test="${user != null}">
                                <a class="dropdown-item" href="/account">My Account</a>
                                <a class="dropdown-item" href="/gift-cards">Gift Cards</a>
                                <a class="dropdown-item" href="/signout">Sign Out</a>
                            </c:when>
                            <c:otherwise>
                                <a class="dropdown-item" href="/signup">Register</a>
                                <a class="dropdown-item" href="/signin">Sign In</a>
                            </c:otherwise>
                        </c:choose>

                    </div>
                </li>
            </ul>
            <form class="form-inline">
                <input id="searchQuery" class="form-control mr-sm-2" type="text" placeholder="Enter a movie or location..." >
                <input type= "button" class = "btn btn-outline-warning my-2 my-sm-0" onClick="parent.location='search?'+$('#searchQuery').val()" value='Search'>
            </form>
        </div>
    </div>
</nav>

<script>
    function toggleNearby(){
        document.getElementById("#nearbyLocations").className = "hideDiv";
    }
</script>
