package com.clan.firdango.controller;

import com.clan.firdango.dao.SearchDAO;
import com.clan.firdango.entity.FavoriteMovie;
import com.clan.firdango.entity.Movie;
import com.clan.firdango.entity.Review;
import com.clan.firdango.entity.User;
import com.clan.firdango.service.MovieService;
import com.clan.firdango.service.ReviewService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.sql.Timestamp;
import java.util.List;

/**
 * Created by xgao3 on 4/11/2017.
 */
@Controller
@SessionAttributes({"movie", "user"})
public class MovieController {
    private final MovieService movieService;
    private final ReviewService reviewService;
    private final SearchDAO searchDAO;


    @Autowired
    public MovieController(MovieService movieService, ReviewService reviewService, SearchDAO searchDAO) {
        this.searchDAO = searchDAO;
        this.movieService = movieService;
        this.reviewService = reviewService;
    }

    @GetMapping("/overview")
    public String getMovieOverview(@RequestParam("movieId") int id, Model theModel, HttpServletRequest request) {
        System.out.println(id);
        Movie movie = movieService.getMovie(id);
        theModel.addAttribute("movie", movie);
        HttpSession session = request.getSession();
        int favStatus = 0;
        if (session.getAttribute("loggedinuser")!=null) {
            User u = (User)session.getAttribute("loggedinuser");
            favStatus = movieService.favMovieStatus(u.getId(), movie.getId());
        }
        System.out.println(favStatus);
        session.setAttribute("favoriteStatus", favStatus);
        session.setAttribute("movieid", id);
        return "movieoverview";
    }

    @PostMapping("/overview")
    public String changeFavoriteMovie(@RequestParam("movieId") int id, Model theModel, HttpServletRequest request) {
        System.out.println(id);
        Movie movie = movieService.getMovie(id);
        theModel.addAttribute("movie", movie);
        HttpSession session = request.getSession();
        int fs = (int) session.getAttribute("favoriteStatus");

        if (session.getAttribute("loggedinuser") == null){
            return("redirect:/signin");
        } else {
            User liu = (User) session.getAttribute("loggedinuser");
            if (fs ==0) {
                FavoriteMovie fm = new FavoriteMovie();
                fm.setMovieid(id);
                fm.setUserid(liu.getId());
                movieService.addToFavList(fm);
            } else {
                movieService.removeFromFavList(id,liu.getId());
            }
        }
        return "redirect:/overview?movieId=" + id;
    }

    @RequestMapping(value="/search",method = RequestMethod.GET)
    public String getSearchResults(Model theModel, HttpServletRequest request) throws Exception {
        String qs =request.getQueryString();
        theModel.addAttribute("searchRes", searchDAO.getSearchMovieResults(theModel,request,qs));
        theModel.addAttribute("theatreRes",searchDAO.getSearchTheatreResults(theModel,request,qs));
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
    public String getMovieReviews(@RequestParam("movieId") int id, Model theModel) {
        List<Review> reviews = reviewService.getReviewsByMovie(id);
        if (!reviews.isEmpty()) {
            theModel.addAttribute("reviews", reviews);
        }
        return "moviereviews";
    }

    @GetMapping("/writeareview")
    public String getMovieWriteAReview(@ModelAttribute("user") User u, Model theModel)
    {
        List<Review> reviews = reviewService.getReviewsByUser(u.getId());
        if (!reviews.isEmpty()) {
            Review r = reviews.get(0);
            theModel.addAttribute("review", r);
        }
        return "moviewriteareview";
    }

    @PostMapping("/writeareview")
    public String saveMovieWriteAReview(@RequestParam("movieId") int movieId,
                                  @RequestParam("title") String title,
                                  @RequestParam("rating") String rating,
                                  @RequestParam("reviewBody") String reviewBody,
                                  @ModelAttribute("user") User u,
                                  @ModelAttribute Review r) {
        System.out.println(rating);
        r.setUserId(u.getId());
        r.setMovieId(movieId);
        r.setRating(rating);
        r.setTitle(title);
        r.setBody(reviewBody);
        r.setUserName(u.getFirstName() + " " + u.getLastName());
        r.setTimeOfReview((new Timestamp(System.currentTimeMillis())));
        reviewService.saveReview(r);
        return "moviewriteareview";
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
