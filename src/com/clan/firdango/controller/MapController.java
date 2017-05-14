package com.clan.firdango.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * Created by marvinyan on 5/13/2017.
 */
@Controller
public class MapController {

    @Autowired
    public MapController() {
    }

    @GetMapping("/directions")
    public String getDirections(@RequestParam("destination") String dest, Model model) {
        model.addAttribute("dest", dest);
        return "directions";
    }
}
