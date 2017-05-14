package com.clan.firdango.controller;

import com.clan.firdango.entity.Movie;
import com.clan.firdango.entity.Theatre;
import com.clan.firdango.entity.User;
import com.clan.firdango.service.TheatreService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

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
    public String getTheathres(Model theModel) {
        List<Theatre> theatres = theatreService.getAllTheatres();
        theModel.addAttribute("theatres", theatres);
        return "theatres";
    }

    @GetMapping("/theatre")
    public String getMovieOverview(@RequestParam("theatreId") int id,
                                   Model theModel,
                                   HttpServletRequest request) {
        Theatre theatre = theatreService.getTheatre(id);
        theModel.addAttribute("theatre", theatre);
        return "theatre";
    }
}
