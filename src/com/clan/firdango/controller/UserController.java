package com.clan.firdango.controller;

import com.clan.firdango.entity.Movie;
import com.clan.firdango.entity.MovieAlert;
import com.clan.firdango.entity.User;
import com.clan.firdango.service.GiftCardService;
import com.clan.firdango.service.MovieAlertService;
import com.clan.firdango.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * Created by xgao3 on 4/12/2017.
 */
@Controller
@SessionAttributes({"user"})
public class UserController {
    private final UserService userService;
    private final GiftCardService giftCardService;
    private final MovieAlertService movieAlertService;

    @Autowired
    public UserController(UserService userService, GiftCardService giftCardService, MovieAlertService movieAlertService) {
        this.userService = userService;
        this.giftCardService = giftCardService;
        this.movieAlertService = movieAlertService;
    }

    @GetMapping("/signup")
    public String signUp(@RequestParam(value="email", defaultValue = "") String email,
                         @RequestParam(value="firstName", defaultValue = "") String firstName,
                         @RequestParam(value="lastName", defaultValue = "") String lastName,
                         Model model) {
        model.addAttribute("subscribeEmail", email);
        model.addAttribute("firstName", firstName);
        model.addAttribute("lastName", lastName);
        return "signup";
    }


    @PostMapping("/signupFromNewsletter")
    public String signUpFromNewsletter(@RequestParam(value = "subscribeEmail", defaultValue = "") String email, Model model) {
        model.addAttribute("subscribeEmail", email.trim());
        return "signup";
    }

    @GetMapping("/signin")
    public String getSignIn(Model model) {
        return "signin";
    }

    @PostMapping("/signin")
    public String signIn(@RequestParam("email") String email,
                         @RequestParam("password") String password,
                         ModelMap model,
                         HttpServletRequest request) {
        User u = userService.getUserByEmail(email);
        if (u.getPassword().equals(password)) {
            model.addAttribute("user", u);
            HttpSession session = request.getSession(true);
            session.setAttribute("loggedinuser", u);
            return "redirect:/";
        } else {
            return "signin";
        }
    }

    @GetMapping("/signinBack")
    public String signInBackdoor(@RequestParam("email") String email,
                         ModelMap model,
                         HttpServletRequest request) {
        User u = userService.getUserByEmail(email);
        if (u != null) {
            model.addAttribute("user", u);
            HttpSession session = request.getSession(true);
            session.setAttribute("loggedinuser", u);
            return "redirect:/";
        } else {
            return "signup";
        }
    }

    @PostMapping("/signup")
    public String registerUser(@RequestParam("firstName") String firstName,
                               @RequestParam("lastName") String lastName,
                               @RequestParam("email") String email,
                               @RequestParam("password") String password,
                               @RequestParam(value = "receiveNewsletter", defaultValue = "") String receiveNewsletter,
                               ModelMap model) {


        User u = userService.getUserByEmail(email); // TODO: need clarification
        if (u != null) {
            return "redirect:/signup";
        }
        else {
            u = new User();
            u.setFirstName(firstName);
            u.setLastName(lastName);
            u.setEmail(email);
            u.setPassword(password);
            u.setReceiveNewsletter(!receiveNewsletter.equals(""));
            model.addAttribute("user", u);
            userService.saveUser(u);
            return "redirect:/";
        }
    }

    @GetMapping("/account")
    public String getAccount(Model model) {
        return "account";
    }

    @GetMapping("/giftCards")
    public String showGiftCardsPage(Model model) {
        return "gift-cards";
    }

    @PostMapping("/changeNameEmail")
    public String changeNameEmail(@RequestParam("firstName") String firstName,
                                  @RequestParam("lastName") String lastName,
                                  @RequestParam("email") String email,
                                  @ModelAttribute User u) {
        u.setFirstName(firstName);
        u.setLastName(lastName);
        u.setEmail(email);

        userService.saveUser(u);
        return "redirect:/account";
    }

    @PostMapping("/changePassword")
    public String changePassword(@RequestParam("oldPassword") String p1,
                                  @RequestParam("password") String p2,
                                  @RequestParam("passwordValidate") String p3,
                                  @ModelAttribute User u) {
        //Check old information
        if (p1.equals(u.getPassword())) {
            //Check new information
            if (p2.equals(p3)) {
                u.setPassword(p2);
            }
        }
        userService.saveUser(u);
        return "redirect:/account";
    }

    @PostMapping("/receiveNewsletter")
    public String changeReceiveNewsletter(@RequestParam(value = "receiveNewsletter", defaultValue = "") String val,
                                          @ModelAttribute User user) {
        user.setReceiveNewsletter(!val.equals(""));
        return "redirect:/account";
    }

    @PostMapping("/redeemGiftCard")
    public String redeemGiftCard(@RequestParam(value = "code", defaultValue = "") String code,
                                 @ModelAttribute User user) {
        user.setBalance(userService.redeemGiftCard(user.getId(), code));
        return "redirect:/account";
    }

    @PostMapping("/signupFirAlert")
    public String signupFirAlert(@RequestParam("alertEmail") String email, @RequestParam("movieId") int movieId, HttpServletRequest request) {
        HttpSession session = request.getSession(true);
        User user = (User) session.getAttribute("loggedinuser");
        MovieAlert alert = new MovieAlert();
        alert.setEmail(email);
        alert.setMovieId(movieId);
        alert.setUserId(user.getId());
        movieAlertService.saveAlert(alert);
        return "redirect:/myAlerts";
    }

    @RequestMapping("/myAlerts")
    public String showFirAlerts(Model model, HttpServletRequest request) {
        HttpSession session = request.getSession(true);
        User user = (User) session.getAttribute("loggedinuser");
        List<Movie> movies = movieAlertService.getAlertList(user.getId());
        model.addAttribute("movies", movies);
        return "list-alerts";
    }
}
