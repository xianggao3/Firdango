package com.clan.firdango.controller;

import com.clan.firdango.entity.Movie;
import com.clan.firdango.service.MovieService;
import com.clan.firdango.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

/**
 * Created by xgao3 on 4/11/2017.
 */
@Controller
//@RequestMapping("/movie")
public class MovieController {
    private final MovieService movieService;

    @Autowired
    public MovieController(MovieService movieService) {
        this.movieService = movieService;
    }

    @GetMapping("/overview")
    public String getMovieOverview(Model theModel) {
        /*List<Movie> featuredMovies = movieService.getFeatured();

        theModel.addAttribute("movies", featuredMovies);
        System.out.println(featuredMovies.get(0));
        */return "movieoverview";
    }

    @GetMapping("/search")
    public String getSearchResults() {
        return "search";
    }

    @GetMapping("/news")
    public String getMovieNews() {
        return "movienews";
    }
    @GetMapping("/castandcrew")
    public String getMovieCastAndCrew() {
        return "moviecastandcrew";
    }
    @GetMapping("/photosandposters")
    public String getMoviePhotos() {
        return "moviephotosandposters";
    }
    @GetMapping("/reviews")
    public String getMovieReviews() {
        return "moviereviews";
    }
    @GetMapping("/synopsis")
    public String getMovieSynopsis() {
        return "moviesynopsis";
    }
    @GetMapping("/timesandtickets")
    public String getMovieTimes() {
        return "movietimesandtickets";
    }
    @GetMapping("/trailers")
    public String getMovietrailers() {
        return "movietrailers";
    }


    @GetMapping("/moviesintheatres")
    public String getMoviesInTheatres() {
        return "moviesintheatres";
    }
}
