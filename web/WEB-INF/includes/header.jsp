<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page session="true" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<nav class="navbar navbar-toggleable-md navbar-inverse sticky-top">
    <div class="container">
        <a class="navbar-brand" href="/"><img src="../../resources/img/firlogo.png">Firdango</a>

        <div class="collapse navbar-collapse" id="navbarColor01">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="moviesDropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Movies
                    </a>
                    <div class="dropdown-menu" aria-labelledby="moviesDropdown">
                        <a class="dropdown-item" href="moviesintheatres">Now Playing</a>
                        <a class="dropdown-item" href="moviesintheatres">Opening This Week</a>
                        <a class="dropdown-item" href="moviesintheatres">Pre Sales Tickets</a>
                        <a class="dropdown-item" href="moviesintheatres">Coming Soon</a>
                        <a class="dropdown-item" href="moviesintheatres">More Movies</a>
                    </div>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="timesAndTicketsDropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Times & Tickets
                    </a>
                    <div class="dropdown-menu" aria-labelledby="timesAndTicketsDropdown">
                        <a class="dropdown-item" href="timesandtickets">Tickets for 'Fifty Shades Darker'</a>
                    </div>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="newsDropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        News
                    </a>
                    <div class="dropdown-menu" aria-labelledby="newsDropdown">
                        <a class="dropdown-item" href="news">Featured News</a>
                        <a class="dropdown-item" href="news">Explore Content</a>
                    </div>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" id="vipDropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        My Firdango
                    </a>
                    <div class="dropdown-menu" aria-labelledby="vipDropdown">
                        <c:choose>
                            <c:when test="${user != null}">
                                <a class="dropdown-item" href="account">My Account</a>
                                <a class="dropdown-item" href="giftCards">Gift Cards</a>
                                <a class="dropdown-item" href="signout">Sign Out</a>
                            </c:when>
                            <c:otherwise>
                                <a class="dropdown-item" href="signup">Register</a>
                                <a class="dropdown-item" href="signin">Sign In</a>
                            </c:otherwise>
                        </c:choose>

                    </div>
                </li>
            </ul>
            <form class="form-inline">
                <input id="searchQuery" class="form-control mr-sm-2" type="text" placeholder="Enter a movie or location..." onkeypress="handle(event)" >
                <input type= "button" class = "btn btn-outline-warning my-2 my-sm-0" onClick="parent.location='search?'+$('#searchQuery').val()" value='Search'>
            </form>
        </div>
    </div>
</nav>