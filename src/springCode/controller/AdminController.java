package springCode.controller;

import springCode.entity.User;
import springCode.service.UserService;
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
    // need to inject the user service
    private final UserService userService;

    @Autowired
    public AdminController(UserService userService) {
        this.userService = userService;
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
}
