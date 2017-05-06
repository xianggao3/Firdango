package com.clan.firdango.controller;

import com.clan.firdango.service.CardService;
import com.clan.firdango.service.EmailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import javax.servlet.http.HttpServletRequest;
import java.text.NumberFormat;

/**
 * Created by xgao3 on 4/12/2017.
 */
@Controller
public class TransactionController {
    private final CardService cardService;
    private final EmailService emailService;

    @Autowired
    public TransactionController(CardService cardService, EmailService emailService) {
        this.cardService = cardService;
        this.emailService = emailService;
    }

    @GetMapping("checkout")
    public String getCheckout() {
        return"checkout";
    }

    @PostMapping("charge")
    public String charge(HttpServletRequest req, Model model) {
        String stripeToken = req.getParameter("stripeToken");
        String stripeEmail = req.getParameter("stripeEmail");
        int amount = Integer.parseInt(req.getParameter("amount"));
        String description = req.getParameter("description");

        // Store some debug info to be displayed on next page
        model.addAttribute("token", stripeToken);
        model.addAttribute("email", stripeEmail);
        NumberFormat formatter = NumberFormat.getCurrencyInstance();
        model.addAttribute("amount", formatter.format(amount/100.0));
        model.addAttribute("description", description);

        try {
            cardService.processCharge(stripeToken, stripeEmail, amount, description);
            // TODO: This will be replaced by emailService.sendReceipt(...)
            emailService.sendEmail(stripeEmail, "Pass", "Charge successful.");
        } catch (Exception e) {
            emailService.sendEmail(stripeEmail, "Fail", "Charge unsuccessful.");
            System.out.println("Charge unsuccessful: " + e.getMessage());
        }

        return "a-card-debug";
    }
}
