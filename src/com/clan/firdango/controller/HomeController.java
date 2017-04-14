package com.clan.firdango.controller;

import com.clan.firdango.entity.Movie;
import com.clan.firdango.service.MovieService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

/**
 * Created by marvinyan on 4/13/2017.
 */
@Controller
public class HomeController {
    private final MovieService movieService;

    @Autowired
    public HomeController(MovieService movieService) {
        this.movieService = movieService;
    }

    @GetMapping("/")
    public String index(Model theModel) {
        List<Movie> movies = movieService.getFeatured();
        theModel.addAttribute("movies", movies);
        System.out.println("movies???: " + movies);
        return "";
    }
}
