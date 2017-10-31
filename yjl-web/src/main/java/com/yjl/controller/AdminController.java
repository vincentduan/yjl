package com.yjl.controller;

import com.yjl.common.util.Page;
import com.yjl.entity.Category;
import com.yjl.entity.Order;
import com.yjl.entity.Product;
import com.yjl.service.CategoryService;
import com.yjl.service.OrderService;
import com.yjl.service.ProductService;
import com.yjl.vo.OrderVo;
import org.joda.time.DateTime;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/admin")
public class AdminController {

    @Autowired
    ProductService productService;
    @Autowired
    OrderService orderService;
    @Autowired
    CategoryService categoryService;

    @RequestMapping("/index")
    public String index(ModelMap model) {
        return "admin";
    }

    @ResponseBody
    @RequestMapping(value = "getProductList", method = {RequestMethod.GET,RequestMethod.POST})
    public List<Product> getProductList(@RequestParam("offset") int pageNo, @RequestParam("limit") int pageSize, @RequestParam("order") String order) {
//        Page<Product> productPage = new Page<>();
//        productPage.setPageSize(pageSize);
//        productPage.setPageNo(pageNo);
//        productService.queryByPage(productPage, new Product());
        List<Product> productList = productService.getProductList();
        return productList;
    }

    @RequestMapping(value = "edit/{id}", method = RequestMethod.GET)
    public String formEdit(@PathVariable Long id, ModelMap modelMap) {
        Product p = new Product();
        p.setId(id);
        Product product = productService.queryByCondition(p);
        modelMap.addAttribute("productWithBLOBs", product);
        modelMap.addAttribute("brief", new String(product.getBrief()));
        return "admin-edit";
    }

    @RequestMapping(value = "del/{id}", method = RequestMethod.GET)
    public String del(@PathVariable Long id){
        productService.deleteById(id);
        return "redirect:/admin/index";
    }

    @RequestMapping(value = "edit/{id}", method = RequestMethod.POST)
    public String edit(@PathVariable Long id, HttpServletRequest request, @RequestParam("cover") CommonsMultipartFile cover) {
        String realPath = request.getSession().getServletContext().getRealPath("/resources/upload/");
        String oldPic = productService.findById(id).getPic();
        if (!"default.jpg".equals(oldPic)) {
            int status = productService.removeCover(realPath + "/" + oldPic);
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
        if (!cover.isEmpty()) {
            System.out.println(realPath);
            String picPath = productService.uploadCover(cover, realPath);
            p.setPic(picPath);
        }
        int status = productService.update(p);
        //System.out.println(status);
        return "redirect:/admin/index";
    }

    @RequestMapping(value = "add", method = RequestMethod.GET)
    public String formAdd() {
        return "admin-add";
    }

    @RequestMapping(value = "add", method = RequestMethod.POST)
    public String add(HttpServletRequest request, @RequestParam("cover") CommonsMultipartFile cover) {
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
        if (!cover.isEmpty()) {
            String realPath = request.getSession().getServletContext().getRealPath("/resources/upload/");
            String picPath = productService.uploadCover(cover, realPath);
            p.setPic(picPath);
        }
        productService.save(p);
        return "redirect:/admin/index";
    }

    @ResponseBody
    @RequestMapping(value = "getOrderList")
    public List<OrderVo> getOrderlist(){
        List<Order> orderList = orderService.getOrderList();
        List<OrderVo> orderVos = new ArrayList<>();
        for(Order order : orderList){
            OrderVo orderVo = new OrderVo();
            Product product = productService.findById(order.getProduct_id());
            Category category = categoryService.findById(Long.parseLong(product.getCategory()));
            orderVo.setOrder(order);
            orderVo.setProductName(product.getName());
            orderVo.setCategory(category.getName());
            orderVos.add(orderVo);
        }
        return orderVos;
    }


}
