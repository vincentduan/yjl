package com.yjl.controller;

import com.yjl.common.util.Page;
import com.yjl.entity.Product;
import com.yjl.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/exhibition")
public class ExhibitionController {

    @Autowired
    ProductService productService;

    @RequestMapping("/index")
    public String index(@RequestParam("pageNo") int pageNo, @RequestParam("pageSize") int pageSize, @RequestParam("category") String category, ModelMap model) {
        Page<Product> productPage = new Page<>();
        productPage.setPageSize(pageSize);
        productPage.setPageNo(pageNo);
        Product product = new Product();
        product.setCategory(category);
        productService.queryByPage(productPage, product);
        model.addAttribute("category", category);
        model.addAttribute("product_list", productPage.getResult());
        model.addAttribute("productPage", productPage);
        model.addAttribute("nextPage",productPage.getNextPage() );
        model.addAttribute("prePage", productPage.getPrePage());
        return "exhibition";
    }



}

