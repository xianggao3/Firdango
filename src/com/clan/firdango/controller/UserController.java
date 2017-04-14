package com.clan.firdango.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by xgao3 on 4/12/2017.
 */
@Controller
public class UserController {
    @RequestMapping("/signup")
    public String SignIn(){
        return "signup";
    }

}
