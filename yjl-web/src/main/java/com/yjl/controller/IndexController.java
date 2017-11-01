package com.yjl.controller;

import com.yjl.entity.Artical;
import com.yjl.entity.News;
import com.yjl.service.ArticalService;
import com.yjl.service.NewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("/index")
public class IndexController {

    @Autowired
    ArticalService articalService;

    @Autowired
    NewsService newsService;

    @RequestMapping("/index")
    public String index(Model model) {
        List<News> newsList = newsService.getProductListTop();
        model.addAttribute("news_list", newsList);
        return "index";
    }

    @ResponseBody
    @RequestMapping(value="/{articalId}/detail",method = RequestMethod.GET)
    public Artical getArtical(@PathVariable("articalId") Long id, Model model){
        Artical artical = articalService.getById(id);
        return artical;
    }

}

