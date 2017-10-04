package com.yjl.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/exhibition")
public class exhibitionController {



    @RequestMapping("/index")
    public String index() {
        return "exhibition";
    }



}

