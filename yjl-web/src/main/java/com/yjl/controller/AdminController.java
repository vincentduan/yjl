package com.yjl.controller;

import com.yjl.entity.Product;
import com.yjl.service.ProductService;
import org.joda.time.DateTime;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

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
        Product p = new Product();
        p.setId(id);
        Product product = productService.queryByCondition(p);
        modelMap.addAttribute("productWithBLOBs", product);
        modelMap.addAttribute("brief",new String(product.getBrief()));
        return "admin-edit";
    }

    @RequestMapping(value = "edit/{id}", method = RequestMethod.POST)
    public String edit(@PathVariable Long id, HttpServletRequest request, @RequestParam("cover") CommonsMultipartFile cover){
        String realPath=request.getSession().getServletContext().getRealPath("/resources/upload/");
        String oldPic = productService.findById(id).getPic();
        if(!"default.jpg".equals(oldPic)){
            int status = productService.removeCover(realPath+"/"+oldPic);
            System.out.println(status);
        }
        String name = request.getParameter("name");
        String category = request.getParameter("category");
        String evaluate = request.getParameter("evaluate");
        String brief = request.getParameter("brief");
        String price = request.getParameter("price");
        Product p = new Product();
        p.setId(id);
        p.setName(name);
        p.setPrice(price);
        p.setCategory(category);
        p.setEvaluate(evaluate);
        p.setBrief(brief.getBytes());
        //上传封面
        if(!cover.isEmpty()){
            System.out.println(realPath);
            String picPath = productService.uploadCover(cover,realPath);
            p.setPic(picPath);
        }
        int status = productService.update(p);
        //System.out.println(status);
        return "redirect:/admin/index";
    }

    @RequestMapping(value = "add", method = RequestMethod.GET)
    public String formAdd(){
        return "admin-add";
    }

    @RequestMapping(value = "add", method = RequestMethod.POST)
    public String add(HttpServletRequest request, @RequestParam("cover") CommonsMultipartFile cover){
        String name = request.getParameter("name");
        String category = request.getParameter("category");
        String evaluate = request.getParameter("evaluate");
        String price = request.getParameter("price");
        String brief = request.getParameter("brief");
        Product p = new Product();
        p.setName(name);
        p.setCategory(category);
        p.setEvaluate(evaluate);
        p.setPrice(price);
        p.setBrief(brief.getBytes());
        p.setCreate_time(DateTime.now().toDate());
        //上传封面
        System.out.println(cover.isEmpty());
        if(!cover.isEmpty()){
            String realPath=request.getSession().getServletContext().getRealPath("/resources/upload/");
            String picPath = productService.uploadCover(cover,realPath);
            p.setPic(picPath);
        }
        productService.save(p);
        return "redirect:/admin/index";
    }



}
