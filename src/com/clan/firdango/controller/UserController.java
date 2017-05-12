package com.clan.firdango.controller;

import com.clan.firdango.entity.User;
import com.clan.firdango.service.GiftCardService;
import com.clan.firdango.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

/**
 * Created by xgao3 on 4/12/2017.
 */
@Controller
@SessionAttributes({"user"})
public class UserController {
    private final UserService userService;
    private final GiftCardService giftCardService;

    @Autowired
    public UserController(UserService userService, GiftCardService giftCardService) {
        this.userService = userService;
        this.giftCardService = giftCardService;
    }

    @GetMapping("/signup")
    public String signUp(Model model) {
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
                         ModelMap model) {
        User u = userService.getUserByEmail(email);
        if (u.getPassword().equals(password)) {
            model.addAttribute("user", u);
            return "redirect:/";
        } else {
            return "signin";
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
}
