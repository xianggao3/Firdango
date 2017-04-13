package com.luv2code.springdemo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

/**
 * Created by xgao3 on 4/12/2017.
 */
@Controller
public class TransactionController {

    @GetMapping("checkout")
    public String getCheckout(){
        return"checkout";
    }
}
