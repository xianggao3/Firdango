package com.clan.firdango.controller;

import com.clan.firdango.entity.GiftCard;
import com.clan.firdango.service.GiftCardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by marvinyan on 5/13/2017.
 */
@Controller
@RequestMapping("/gift-cards")
public class GiftCardController {
    private final GiftCardService giftCardService;

    @Autowired
    public GiftCardController(GiftCardService giftCardService) {
        this.giftCardService = giftCardService;
    }

    @GetMapping()
    public String index() {
        return "gift-cards-index";
    }

    @GetMapping("/buy")
    public String buyGiftCard(@RequestParam("designId") int designId, Model model) {
        model.addAttribute("design", designId);
        return "gift-cards-checkout";
    }

    @PostMapping("/generateCard")
    public String generateCard(@RequestParam("quantity") int quantity, @RequestParam("amount") double amount, Model model) {
        List<GiftCard> cards = new ArrayList<>();
        for (int i = 0; i < quantity; i++) {
            cards.add(giftCardService.createGiftCard(amount));
        }
        model.addAttribute("cards", cards);
        return "gift-cards-result";
    }
}
