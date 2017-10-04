package com.yjl.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/collection")
public class CollectionController {

    @RequestMapping("/index")
    public String index() {
        return "collection";
    }


}

