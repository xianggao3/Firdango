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
@RequestMapping("/category")
public class CategoryController {
    private final MovieService movieService;

    @Autowired
    public CategoryController(MovieService movieService) {
        this.movieService = movieService;
    }

    @GetMapping("/all")
    public String index(@RequestParam("page") int page,  Model theModel) {
        List<Movie> movies = movieService.getFeatured();
        theModel.addAttribute("movies", movies);
        List<Movie> comingSoon = movieService.getComingSoonMovie();
        theModel.addAttribute("comingSoon", comingSoon);
        theModel.addAttribute( "size", movies.size());
        theModel.addAttribute("pageNum", page);
        return "category";
    }

    @GetMapping("/genre")
    public String getGenreMovies(@RequestParam("genre") String genre, Model theModel) {
        List<Movie> movies = movieService.getGenreMovie(genre);
        theModel.addAttribute("movies", movies);
        List<Movie> comingSoon = movieService.getSoonGenreMovie(genre);
        theModel.addAttribute("comingSoon", comingSoon);
        theModel.addAttribute( "size", movies.size());
        theModel.addAttribute( "soonSize", comingSoon.size());
        return "category-genre";
    }

    @GetMapping("/comingsoon")
    public String getComingSoonMovies(Model theModel) {
        List<Movie> movies = movieService.getComingSoonMovie();
        theModel.addAttribute("movies", movies);
        theModel.addAttribute( "size", movies.size());
        return "category-comingsoon";
    }

    @GetMapping("/topboxoffice")
    public String getRevenueMovies(Model theModel){
        List<Movie> movies = movieService.getRevenueMovies();
        theModel.addAttribute("movies", movies);
        return "category-topboxoffice";
    }
}
