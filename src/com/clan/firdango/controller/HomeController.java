package com.clan.firdango.controller;

import java.io.IOException;
import org.apache.http.client.fluent.*;
import com.clan.firdango.entity.Movie;
import com.clan.firdango.service.MovieService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String index(Model theModel) {
        List<Movie> movies = movieService.getFeatured();
        theModel.addAttribute("movies", movies);
        return "index";
    }
    /*
    private static void sendRequest() {
        String location= ;
        try {
            Content content = Request.Get("GET https://api.cinepass.de/v4/cinemas/?location="+location+"&distance=1000")
                    .addHeader("X-API-Key", "3lurYDe8cLKgyh4DSrZtH36tHCzEk9Ww")
                    .execute().returnContent();
            System.out.println(content);
        }
        catch (IOException e) { System.out.println(e); }
    }
    */
}
