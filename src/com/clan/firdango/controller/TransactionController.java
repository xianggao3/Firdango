package com.clan.firdango.controller;

import com.clan.firdango.entity.Movie;
import com.clan.firdango.entity.Showtime;
import com.clan.firdango.entity.Theatre;
import com.clan.firdango.entity.Ticket;
import com.clan.firdango.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * Created by xgao3 on 4/12/2017.
 */
@Controller
public class TransactionController {
    private final TicketService ticketService;
    private final MovieService movieService;
    private final ShowtimeService showtimeService;
    private final TheatreService theatreService;

    @Autowired
    public TransactionController(TicketService ticketService, MovieService movieService, ShowtimeService showtimeService, TheatreService theatreService) {
        this.ticketService = ticketService;
        this.movieService = movieService;
        this.showtimeService = showtimeService;
        this.theatreService = theatreService;
    }

    @GetMapping("checkout")
    public String getCheckout(@RequestParam("showtimeId") int showId, @RequestParam("userId") int userId, Model model) {
        Showtime showtime = showtimeService.getShowtime(showId);
        Movie movie = movieService.getMovie(showtime.getMovieId());
        Theatre theatre = theatreService.getTheatre(showtime.getTheatreId());

        model.addAttribute("showtimeId", showId);
        model.addAttribute("userId", userId);
        model.addAttribute("poster", movie.getPoster());
        model.addAttribute("title", movie.getTitle());
        model.addAttribute("theatre", theatre.getName());
        return "checkout";
    }

    @PostMapping("charge")
    public String charge(@RequestParam("showtimeId") int showtimeId, @RequestParam("userId") int userId, @RequestParam("seat") String[] seats, Model model) {
        for(String seat : seats) {
            Ticket ticket = new Ticket();
            ticket.setShowtimeId(showtimeId);
            ticket.setSeat(seat);
            ticket.setUserId(userId);
            ticketService.saveTicket(ticket);
        }
        return "redirect:/";
    }
}
