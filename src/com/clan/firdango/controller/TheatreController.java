package com.clan.firdango.controller;

import com.clan.firdango.entity.*;
import com.clan.firdango.service.MovieService;
import com.clan.firdango.service.ShowtimeService;
import com.clan.firdango.service.TheatreService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by Numaer zaker on 5/14/17.
 */
@Controller
public class TheatreController {
    private final TheatreService theatreService;
    private final ShowtimeService showtimeService;
    private final MovieService movieService;

    @Autowired
    public TheatreController(TheatreService theatreService, ShowtimeService showtimeService, MovieService movieService) {
        this.theatreService = theatreService;
        this.showtimeService = showtimeService;
        this.movieService = movieService;
    }

    @RequestMapping(value = "/theatres", method = RequestMethod.GET)
    public String getTheathres(Model theModel,
                               @RequestParam("page") int pageNum) {
        List<Theatre> theatres = theatreService.getAllTheatres();
        theModel.addAttribute("theatres", theatres);
        theModel.addAttribute("pageNum", pageNum);
        return "theatres";
    }

    @GetMapping("/theatre")
    public String getMovieOverview(@RequestParam("theatreId") int id,
                                   Model theModel,
                                   HttpServletRequest request) {
        Theatre theatre = theatreService.getTheatre(id);
        int dispLL=1;
        int dispwebsite=1;
        int disptele=1;
        if(theatre.getLat()==0){
            dispLL=0;
        }if(theatre.getWebsite()==null){
            dispwebsite=0;
        }if(theatre.getTelephone()==null){
            disptele=0;
        }
        theModel.addAttribute("theatre", theatre);
        theModel.addAttribute("dispLL", dispLL);
        theModel.addAttribute("dispwebsite", dispwebsite);
        theModel.addAttribute("disptele", disptele);

        HttpSession session = request.getSession();
        int favStatus = 0;
        if (session.getAttribute("loggedinuser")!=null) {
            User u = (User)session.getAttribute("loggedinuser");
            favStatus = theatreService.favTheatreStatus(u.getId(), theatre.getId());
        }

        session.setAttribute("favoriteStatus", favStatus);
        session.setAttribute("theatreid", id);

            List<Showtime> showtimesByMovie = showtimeService.getShowtimeByTheatre(id);
            ArrayList<Movie> allMovies = new ArrayList<Movie>();
            Map movieTimeMap = new HashMap();
            for (Showtime s: showtimesByMovie){

                System.out.println(s.getId());
                if(movieTimeMap.containsKey(s.getMovieId())) {
                    ArrayList<Showtime> timesPerTheatre = (ArrayList<Showtime>) movieTimeMap.get(s.getMovieId());
                    timesPerTheatre.add(s);
                }
                else{
                    ArrayList<Showtime> timesPerMovie = new ArrayList<Showtime>();
                    timesPerMovie.add(s);
                    movieTimeMap.put(s.getMovieId(), timesPerMovie);
                    allMovies.add(movieService.getMovie(s.getMovieId()));
                }
                if (allMovies.size() == 20){
                    break;
                }
            }

            System.out.println(allMovies.size());
            theModel.addAttribute("movies", allMovies);
            theModel.addAttribute("dictionary", movieTimeMap);




        return "theatre";
    }

    @PostMapping("/theatre")
    public String changeFavoriteTheatre(@RequestParam("theatreId") int id, Model theModel, HttpServletRequest request) {
        System.out.println(id);
        Theatre theatre = theatreService.getTheatre(id);
        theModel.addAttribute("theatre", theatre);
        HttpSession session = request.getSession();
        int fs = (int) session.getAttribute("favoriteStatus");

        if (session.getAttribute("loggedinuser") == null){
            return("redirect:/signin");
        } else {
            User liu = (User) session.getAttribute("loggedinuser");
            if (fs ==0) {
                FavoriteTheatre fm = new FavoriteTheatre();
                fm.setTheatreid(id);
                fm.setUserid(liu.getId());
                theatreService.addToFavList(fm);
            } else {
                theatreService.removeFromFavList(id,liu.getId());
            }
        }
        return "redirect:/theatre?theatreId=" + id;
    }

}
