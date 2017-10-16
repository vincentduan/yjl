package com.vincent.test;

import com.yjl.entity.Order;
import com.yjl.service.OrderService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath:spring/*.xml")
public class OrderServiceTest {

    @Autowired
    OrderService orderService;

    @Test
    public void saveOrderTest(){
        Order order = new Order();
        order.setProduct_id(1L);
        order.setPrice(10);
        order.setEmail("abc@iie.ac.cn");
        order.setMessage("hello world");
        System.out.println(orderService.save(order));
    }
}
