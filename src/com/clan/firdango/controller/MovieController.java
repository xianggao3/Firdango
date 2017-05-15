package com.clan.firdango.controller;

import com.clan.firdango.dao.SearchDAO;
import com.clan.firdango.entity.*;
import com.clan.firdango.service.MovieService;
import com.clan.firdango.service.ReviewService;
import org.apache.commons.io.IOUtils;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.JSONValue;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.net.URL;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.HashSet;
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
        Movie movie = movieService.getMovie(id);
        theModel.addAttribute("movie", movie);

        HttpSession session = request.getSession();
        int favStatus = 0;
        if (session.getAttribute("loggedinuser")!=null) {
            User u = (User)session.getAttribute("loggedinuser");
            favStatus = movieService.favMovieStatus(u.getId(), movie.getId());
        }

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
                fm.setMovieId(id);
                fm.setUserId(liu.getId());
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
        theModel.addAttribute("qs",qs);
        theModel.addAttribute("searchRes", searchDAO.getSearchMovieResults(theModel,request,qs));
        theModel.addAttribute("theatreRes",searchDAO.getSearchTheatreResults(theModel,request,qs));
        return "search";
    }

    @GetMapping("/news")
    public String getMovieNews( Model theModel) {
        return "movieoverview";
    }

    @GetMapping("/castandcrew")
    public String getMovieCastAndCrew(@RequestParam("movieId") int id, Model theModel) {
        List<String> castncrews = new ArrayList<>();
        try {
            URL url = new URL("https://api.themoviedb.org/3/movie/"+id+"/credits?api_key=d36bee7b08bda0f0dd33ccdcd33e8685\n");
            String imagesJson = IOUtils.toString(url);
            JSONObject imagesJsonObject = (JSONObject) JSONValue.parseWithException(imagesJson);
            JSONArray backdrops = (JSONArray) imagesJsonObject.get("cast");
            for (int i = 0; i < backdrops.size(); i++) {
                JSONObject curObj = (JSONObject) backdrops.get(i);
                castncrews.add((String) (curObj.get("name")+" as "+(curObj.get("character"))));
            }
            JSONArray posters = (JSONArray) imagesJsonObject.get("crew");
            for (int i = 0; i < posters.size(); i++) {
                JSONObject curObj = (JSONObject) posters.get(i);
                castncrews.add((String) (curObj.get("name")+" in "+(curObj.get("department"))));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        theModel.addAttribute("castncrews", castncrews);
        return "moviecastandcrew";
    }

    @GetMapping("/photosandposters")
    public String getMoviePhotos(@RequestParam("movieId") int id, Model theModel) {
        List<String> imageUrls = new ArrayList<>();

        try {
            URL url = new URL("https://api.themoviedb.org/3/movie/" + id + "/images?api_key=d36bee7b08bda0f0dd33ccdcd33e8685");
            String imagesJson = IOUtils.toString(url);
            JSONObject imagesJsonObject = (JSONObject) JSONValue.parseWithException(imagesJson);
            JSONArray backdrops = (JSONArray) imagesJsonObject.get("backdrops");
            for (int i = 0; i < backdrops.size(); i++) {
                JSONObject curObj = (JSONObject) backdrops.get(i);
                imageUrls.add((String) curObj.get("file_path"));
            }
            JSONArray posters = (JSONArray) imagesJsonObject.get("posters");
            for (int i = 0; i < posters.size(); i++) {
                JSONObject curObj = (JSONObject) posters.get(i);
                imageUrls.add((String) curObj.get("file_path"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        theModel.addAttribute("imageUrls", imageUrls);
        return "moviephotosandposters";
    }

    @GetMapping("/reviews")
    public String getMovieReviews(@RequestParam("movieId") int id,
                                  Model theModel, HttpServletRequest request) {
        HttpSession session = request.getSession();
        User liu=null;
        if (session.getAttribute("loggedinuser") == null){
            return("moviereviews");
        } else {
             liu = (User) session.getAttribute("loggedinuser");
        }
        int userId = liu.getId();
        List<FavoriteReview> favoriteReviews = reviewService.getReviewsLikedByUser(userId);
        List<Review> reviews = reviewService.getReviewsByMovie(id);
        HashSet<Integer> hs = new HashSet<Integer>();
        ArrayList<Review> filteredReviews = new ArrayList<Review>();
        for (Review r : reviews){
            if (!hs.contains(r.getUserId())) {
                hs.add(r.getUserId());
                filteredReviews.add(r);
                System.out.println(r.getBody());
            }
        }

        if (!reviews.isEmpty()) {
            theModel.addAttribute("reviews", filteredReviews);
            theModel.addAttribute("favoriteReviews", favoriteReviews);
        }
        return "moviereviews";
    }

    @GetMapping("/writeareview")
    public String getMovieWriteAReview(@ModelAttribute("user") User u,@RequestParam("movieId") int id, Model theModel)
    {
        List<Review> reviews = reviewService.getReviewsByUser(u.getId());
        Review review = null;
        for (Review r : reviews){
            if (r.getMovieId() == id){
                review = r;
                break;
            }

        }
        if (review!=null) {
            theModel.addAttribute("review", review);
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

    @PostMapping("/likeareview")
    public void likeMovie(@ModelAttribute("user") User u,
                          @RequestParam("reviewId") int rid,
                          @RequestParam("likeState") int likeState
                          ){

        System.out.println(likeState);
        FavoriteReview fr = new FavoriteReview();
        fr.setUserId(u.getId());
        fr.setReviewId(rid);
        if (likeState == 0) reviewService.saveLike(fr);
        else reviewService.removeLike(fr);
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
