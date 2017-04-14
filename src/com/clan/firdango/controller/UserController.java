package com.clan.firdango.controller;

import com.clan.firdango.entity.User;
import com.clan.firdango.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.ui.ModelMap;

/**
 * Created by xgao3 on 4/12/2017.
 */
@Controller
@SessionAttributes({"user"})
public class UserController {
    private final UserService userService;

    @Autowired
    public UserController(UserService userService) {
        this.userService = userService;
    }

    @GetMapping("/signup")
    public String SignUp(Model model){

        return "signup";
    }


    @GetMapping("/signout")
    public String SignOut(ModelMap model){
        model.addAttribute("user", null);
        return "redirect:/ ";
    }


    @PostMapping("/signup")
    public String registerUser(@RequestParam("name") String name,
                               @RequestParam("email") String email,
                               @RequestParam("password") String password,
                               @RequestParam("passwordValidate") String passwordValidate, ModelMap model){



        //

        User u = new User();
        u.setName(name);
        u.setEmail(email);
        u.setPassword(password);

        // Add user to session
        model.addAttribute("user", u);

        //save the user
        System.out.println(u.toString());
        //userService.saveUser(user);
        return "redirect:/";
    }

}
