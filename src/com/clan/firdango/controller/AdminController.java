package com.clan.firdango.controller;

import com.clan.firdango.entity.User;
import com.clan.firdango.service.EmailService;
import com.clan.firdango.service.UserService;
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

    @Autowired
    public AdminController(UserService userService, EmailService emailService) {
        this.userService = userService;
        this.emailService = emailService;
    }

    @GetMapping("/listUsers")
    public String listUsers(Model theModel) {
        // get users from the dao
        List<User> users = userService.getUsers();

        // add the users to the model
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
        //save the user
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
        return "";
    }

    @PostMapping("/sendNewsletter")
    public String sendNewsletter(Model model) {
        return "";
    }
}
