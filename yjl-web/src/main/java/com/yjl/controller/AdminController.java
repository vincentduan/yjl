package com.yjl.controller;

import com.yjl.entity.Product;
import com.yjl.entity.ProductWithBLOBs;
import com.yjl.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("/admin")
public class AdminController {

    @Autowired
    ProductService productService;

    @RequestMapping("/index")
    public String index(ModelMap model) {
        return "admin";
    }

    @ResponseBody
    @RequestMapping(value = "getProductList")
    public List<Product> getProductList(){
        List<Product> productList = productService.getProductList();
        return productList;
    }

    @RequestMapping(value = "edit/{id}", method = RequestMethod.GET)
    public String formEdit(@PathVariable Long id, ModelMap modelMap){
        ProductWithBLOBs productWithBLOBs = productService.getProductWithBLOBsById(id);
        modelMap.addAttribute("productWithBLOBs", productWithBLOBs);
        modelMap.addAttribute("brief",new String(productWithBLOBs.getBrief()));
        return "admin-edit";
    }

    @RequestMapping(value = "edit/{id}", method = RequestMethod.POST)
    public String edit(@PathVariable Long id, HttpServletRequest request){
        //Long id = Long.parseLong(request.getParameter("id"));
        String name = request.getParameter("name");
        String category = request.getParameter("category");
        String evaluate = request.getParameter("evaluate");
        String brief = request.getParameter("brief");
        ProductWithBLOBs productWithBLOBs = new ProductWithBLOBs();
        productWithBLOBs.setId(id);
        productWithBLOBs.setName(name);
        productWithBLOBs.setCategory(category);
        productWithBLOBs.setEvaluate(evaluate);
        productWithBLOBs.setBrief(brief.getBytes());
        int status = productService.updateProductWithBLOBsById(productWithBLOBs);
        System.out.println(status);
        return "redirect:/admin/index";
    }

}
