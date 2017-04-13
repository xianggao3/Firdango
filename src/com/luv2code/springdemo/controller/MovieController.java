package com.luv2code.springdemo.controller;

import com.luv2code.springdemo.entity.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * Created by xgao3 on 4/11/2017.
 */
@Controller
//@RequestMapping("/movie")
public class MovieController {

    @GetMapping("/overview")
    public String getMovieOverview() {
        return "movieoverview";
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

