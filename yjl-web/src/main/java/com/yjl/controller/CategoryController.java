package com.yjl.controller;

import com.yjl.entity.Category;
import com.yjl.entity.Product;
import com.yjl.service.CategoryService;
import com.yjl.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@RestController
@RequestMapping("/category")
public class CategoryController {

    @Autowired
    CategoryService categoryService;

    @RequestMapping("/list")
    public List<Category> list() {
        return categoryService.queryByCondition(new Category());
    }



}
