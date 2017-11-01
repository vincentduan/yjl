package com.yjl.controller;

import com.yjl.entity.News;
import com.yjl.service.NewsService;
import org.joda.time.DateTime;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("/news")
public class NewsController {

    @Autowired
    NewsService newsService;

    @RequestMapping("/index")
    public String index(){
        return "news";
    }

    @RequestMapping("/getNewsList")
    @ResponseBody
    public List<News> getNewsList(@RequestParam("offset") int pageNo, @RequestParam("limit") int pageSize) {
        List<News> newsList = newsService.getProductList();
        return newsList;
    }

    @RequestMapping(value = "/add", method = RequestMethod.GET)
    public String formadd(){
        return "news-add";
    }

    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public String add(HttpServletRequest request){
        String title = request.getParameter("title");
        String content = request.getParameter("content");
        News news = new News();
        news.setTitle(title);
        news.setContent(content.getBytes());
        news.setCreate_time(DateTime.now().toDate());
        newsService.save(news);
        return "redirect:/admin/index";
    }

    @RequestMapping(value = "edit/{id}", method = RequestMethod.GET)
    public String formedit(@PathVariable Long id, Model model){
        News news = newsService.findById(id);
        model.addAttribute("news", news);
        model.addAttribute("content", new String(news.getContent()));
        return "news-edit";
    }

    @RequestMapping(value = "edit/{id}", method = RequestMethod.POST)
    public String edit(@PathVariable Long id, HttpServletRequest request){
        String title = request.getParameter("title");
        String content = request.getParameter("content");
        News news = new News();
        news.setId(id);
        news.setTitle(title);
        news.setContent(content.getBytes());
        newsService.update(news);
        return "redirect:/admin/index";
    }

    @RequestMapping(value = "del/{id}", method = RequestMethod.GET)
    public String del(@PathVariable Long id, HttpServletRequest request){

        newsService.deleteById(id);
        return "redirect:/admin/index";
    }

}

