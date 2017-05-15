package com.clan.firdango.controller;

import com.clan.firdango.entity.FavoriteTheatre;
import com.clan.firdango.entity.Movie;
import com.clan.firdango.entity.Theatre;
import com.clan.firdango.entity.User;
import com.clan.firdango.service.TheatreService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * Created by Numaer zaker on 5/14/17.
 */
@Controller
public class TheatreController {
    private final TheatreService theatreService;

    @Autowired
    public TheatreController(TheatreService theatreService) {
        this.theatreService = theatreService;
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
