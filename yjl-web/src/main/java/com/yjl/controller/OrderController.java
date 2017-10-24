package com.yjl.controller;

import com.yjl.entity.Order;
import com.yjl.service.OrderService;
import org.joda.time.DateTime;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/order")
public class OrderController {
    @Autowired
    OrderService orderService;

    @RequestMapping(value = "add", method = RequestMethod.POST)
    public String addOrder(@RequestParam("product_id") String product_id, @RequestParam("telephone") String telephone, @RequestParam("name") String name, @RequestParam("email") String email, @RequestParam("price") String price, @RequestParam("message") String message){
        Order order = new Order();
        order.setProduct_id(Long.parseLong(product_id));
        order.setPrice(Integer.parseInt(price));
        order.setName(name);
        order.setTelephone(telephone);
        order.setEmail(email);
        order.setMessage(message);
        order.setCreate_time(DateTime.now().toDate());
        int save = orderService.save(order);
        return save == 1? "redirect:/index/index":"redirect:/exhibition／detail/"+product_id;
    }

}
