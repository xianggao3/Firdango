package com.clan.firdango.controller;

import com.clan.firdango.entity.*;
import com.clan.firdango.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * Created by marvinyan on 2/5/2017.
 */
@Controller
@RequestMapping("/admin")
public class AdminController {
    private final UserService userService;
    private final EmailService emailService;
    private final ReviewService reviewService;
    private final MovieService movieService;
    private final DBUpdateService dbUpdateService;
    private final MovieAlertService movieAlertService;
    private final TicketService ticketService;

    @Autowired
    public AdminController(UserService userService, EmailService emailService, ReviewService reviewService, MovieService movieService, DBUpdateService dbUpdateService, MovieAlertService movieAlertService, TicketService ticketService) {
        this.userService = userService;
        this.emailService = emailService;
        this.reviewService = reviewService;
        this.movieService = movieService;
        this.dbUpdateService = dbUpdateService;
        this.movieAlertService = movieAlertService;
        this.ticketService = ticketService;
    }

    @GetMapping("/")
    public String index() {
        return "admin-index";
    }

    @GetMapping("/listUsers")
    public String listUsers(Model theModel) {
        List<User> users = userService.getUsers();
        theModel.addAttribute("users", users);
        return "list-users";
    }

    @GetMapping("/showAddUserForm")
    public String showAddUserForm(Model model) {
        User user = new User();
        model.addAttribute("user", user);
        return "user-form";
    }

    @PostMapping("/saveUser")
    public String saveUser(@ModelAttribute("user") User user) {
        userService.saveUser(user);
        return "redirect:/admin/listUsers";
    }

    @GetMapping("/showUpdateUserForm")
    public String showUpdateUserForm(@RequestParam("userId") int id, Model model) {
        User user = userService.getUser(id);
        model.addAttribute("user", user);
        return "user-form";
    }

    @GetMapping("/deleteUser")
    public String delete(@RequestParam("userId") int id) {
        userService.deleteUser(id);
        return "redirect:/admin/listUsers";
    }

    @GetMapping("/showNewsletterForm")
    public String showNewsletterForm(Model model) {
        Newsletter newsletter = new Newsletter();
        model.addAttribute("newsletter", newsletter);
        return "newsletter-form";
    }

    @PostMapping("/sendNewsletter")
    public String sendNewsletter(@ModelAttribute("newsletter") Newsletter newsletter) {
        emailService.sendMassEmail(newsletter.getSubject(), newsletter.getBody());
        return "redirect:/admin/listUsers";
    }

    @GetMapping("/listReviews")
    public String listReviews(Model theModel) {
        List<Review> reviews = reviewService.getAllReviews();
        theModel.addAttribute("reviews", reviews);
        return "list-reviews";
    }

    @GetMapping("/deleteReview")
    public String deleteReview(@RequestParam("reviewId") int id) {
        reviewService.deleteReview(id);
        return "redirect:/admin/listReviews";
    }

    @GetMapping("/listMovies")
    public String listMovies(Model theModel) {
        List<Movie> movies = movieService.getAllMovies();
        theModel.addAttribute("movies", movies);
        return "list-movies";
    }

    @GetMapping("/deleteMovie")
    public String deleteMovie(@RequestParam("movieId") int id) {
        movieService.deleteMovie(id);
        return "redirect:/admin/listMovies";
    }

    @GetMapping("/showAddMovieForm")
    public String showAddMovieForm(Model model) {
        Movie movie = new Movie();
        model.addAttribute("movie", movie);
        return "movie-form";
    }

    @GetMapping("/showUpdateMovieForm")
    public String showUpdateMovieForm(@RequestParam("movieId") int id, Model model) {
        Movie movie = movieService.getMovie(id);
        model.addAttribute("movie", movie);
        return "movie-form";
    }

    @PostMapping("/saveMovie")
    public String saveMovie(@ModelAttribute("movie") Movie movie) {
        movieService.saveMovie(movie);
        return "redirect:/admin/listMovies";
    }

    @GetMapping("/fetchNewMovies")
    public String fetchNewMovies() {
        return "fetch-new-movies";
    }

    @PostMapping("/fetchNewMovies")
    public String fetchNewMovies(@RequestParam("url") String url, Model model) {
        dbUpdateService.fetchNewMovies(url);
        return "redirect:/admin/listMovies";
    }

    @GetMapping("/getUserActivity")
    public String getUserActivity() {
        return "list-user-activity";
    }

    @PostMapping("/getUserActivity")
    public String getUserActivity(@RequestParam("userId") int userId, Model model) {
        List<Movie> alerts = movieAlertService.getAlertList(userId);
        List<Movie> favMovies = movieService.getFavoriteMovies(userId);
        List<Ticket> tickets = ticketService.getTicketsByUser(userId);
        List<Review> reviews = reviewService.getReviewsByUser(userId);

        model.addAttribute("userId", userId);
        model.addAttribute("favMovies", favMovies);
        model.addAttribute("alerts", alerts);
        model.addAttribute("tickets", tickets);
        model.addAttribute("reviews", reviews);
        return "list-user-activity-result";
    }
}
