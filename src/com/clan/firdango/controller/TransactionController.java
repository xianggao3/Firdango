package com.clan.firdango.controller;

import com.clan.firdango.entity.Ticket;
import com.clan.firdango.service.CardService;
import com.clan.firdango.service.EmailService;
import com.clan.firdango.service.TicketService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import javax.servlet.http.HttpServletRequest;
import java.text.NumberFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Created by xgao3 on 4/12/2017.
 */
@Controller
public class TransactionController {
    private final CardService cardService;
    private final EmailService emailService;
    private final TicketService ticketService;

    @Autowired
    public TransactionController(CardService cardService, EmailService emailService, TicketService ticketService) {
        this.cardService = cardService;
        this.emailService = emailService;
        this.ticketService = ticketService;
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

        Ticket ticket = new Ticket();
        ticket.setPrice(amount/100.0);
        Date today = new Date();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        ticket.setTimeOfPurchase(sdf.format(today));
        ticket.setMovieId("1295");
        ticket.setTheatreId("1403");
        ticketService.saveTicket(ticket);

        try {
            cardService.processCharge(stripeToken, stripeEmail, amount, description);
            emailService.sendEmail(stripeEmail, "Ticket Purchase Confirmed", "Your ticket has been confirmed.");
        } catch (Exception e) {
            emailService.sendEmail(stripeEmail, "Ticket Purchase Unsuccessful", "Your card could not be processed.");
            System.out.println("Charge unsuccessful: " + e.getMessage());
        }

        return "a-card-debug";
    }
}
