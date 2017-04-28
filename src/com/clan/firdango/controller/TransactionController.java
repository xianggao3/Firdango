package com.clan.firdango.controller;

import com.clan.firdango.service.EmailService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by xgao3 on 4/12/2017.
 */
@Controller
public class TransactionController {


    @GetMapping("checkout")
    public String getCheckout() {
        return"checkout";
    }

    @PostMapping("charge")
    public String charge(HttpServletRequest req, Model model) {
        String stripeToken = req.getParameter("stripeToken");
        String stripeEmail = req.getParameter("stripeEmail");
        model.addAttribute("token", stripeToken);
        model.addAttribute("email", stripeEmail);
        // temp code, needs cleanup
        EmailService.sendEmail(stripeEmail, "Purchase Successful", "Insert generic thank you letter.");
        return "a-card-debug";
    }
}
