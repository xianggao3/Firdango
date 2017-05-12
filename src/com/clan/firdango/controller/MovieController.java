package com.clan.firdango.controller;

import com.clan.firdango.dao.SearchDAO;
import com.clan.firdango.entity.Movie;
import com.clan.firdango.service.MovieService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by xgao3 on 4/11/2017.
 */
@Controller
@SessionAttributes({"movie"})
public class MovieController {
    private final MovieService movieService;
    private final SearchDAO searchDAO;

    @Autowired
    public MovieController(MovieService movieService, SearchDAO searchDAO) {
        this.searchDAO = searchDAO;
        this.movieService = movieService;
    }

    @GetMapping("/overview")
    public String getMovieOverview(@RequestParam("movieId") int id, Model theModel) {
        System.out.println(id);
        Movie movie = movieService.getMovie(id);
        theModel.addAttribute("movie", movie);
        return "movieoverview";
    }

    @RequestMapping(value="/search",method = RequestMethod.GET)
    public String getSearchResults(Model theModel, HttpServletRequest request) throws Exception {

        theModel.addAttribute("searchRes", searchDAO.getSearchResults(theModel,request));
        return "search";
    }

    @GetMapping("/news")
    public String getMovieNews(@RequestParam("movieId") int id, Model theModel) {
        System.out.println(id);
        Movie movie = movieService.getMovie(id);
        theModel.addAttribute("movie", movie);
        return "movieoverview";
    }

    @GetMapping("/castandcrew")
    public String getMovieCastAndCrew(@RequestParam("movieId") int id, Model theModel) {
        System.out.println(id);
        Movie movie = movieService.getMovie(id);
        theModel.addAttribute("movie", movie);
        return "movieoverview";
    }

    @GetMapping("/photosandposters")
    public String getMoviePhotos() {
        return "moviephotosandposters";
    }

    @GetMapping("/reviews")
    public String getMovieReviews() {
        return "moviereviews";
    }

    @GetMapping("/writeareview")
    public String getMovieWriteAReview() {return "moviewriteareview";}

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
