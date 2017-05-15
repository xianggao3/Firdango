package com.clan.firdango.controller;

import com.clan.firdango.entity.Movie;
import com.clan.firdango.service.MovieService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * Created by junyounkim on 5/14/2017.
 */
@Controller
@RequestMapping("/moviesintheatres")
public class GenreController {
    private final MovieService movieService;

    @Autowired
    public GenreController(MovieService movieService) {
        this.movieService = movieService;
    }

    @GetMapping("/")
    public String index(Model theModel) {
        List<Movie> movies = movieService.getFeatured();
        theModel.addAttribute("movies", movies);
        List<Movie> comingSoon = movieService.getComingSoonMovie("*");
        theModel.addAttribute("commingSoon", comingSoon);
        return "moviesintheatres";
    }

    @GetMapping("/genre")
    public String getGenreMovies(@RequestParam("genre") String genre, Model theModel) {
        List<Movie> movies = movieService.getGenreMovie(genre);
        theModel.addAttribute("movies", movies);
        return " genre";
    }

    @GetMapping("/comingsoon")
    public String getComingSoonMovies(@RequestParam("genre") String genre, Model theModel) {
        List<Movie> movies = movieService.getComingSoonMovie(genre);
        theModel.addAttribute("movies", movies);
        return " comingsoon";
    }

    @GetMapping("/topboxoffice")
    public String getRevenueMovies(Model theModel){
        List<Movie> movies = movieService.getRevenueMovies();
        theModel.addAttribute("movies", movies);
        return " topboxoffice";
    }
}
