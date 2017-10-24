package com.yjl.service.impl;

import com.yjl.common.util.Page;
import com.yjl.entity.Order;
import com.yjl.entity.OrderExample;
import com.yjl.mapper.OrderMapper;
import com.yjl.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class OrderServiceImpl implements OrderService {

    @Autowired
    OrderMapper orderMapper;


    @Override
    public Order findById(Long id) {
        return orderMapper.selectByPrimaryKey(id);
    }

    @Override
    public int save(Order order) {
        return orderMapper.insertSelective(order);
    }

    @Override
    public int update(Order order) {
        return orderMapper.insertSelective(order);
    }

    @Override
    public int deleteById(Long id) {
        return orderMapper.deleteByPrimaryKey(id);
    }

    @Override
    public void queryByPage(Page<Order> page, Order order) {
        OrderExample orderExample = new OrderExample();
        OrderExample.Criteria criteria = orderExample.createCriteria();
        page2Example(page, orderExample);
        if(page.isAutoCount()){
            int total = orderMapper.countByExample(orderExample);
            page.setTotalCount(total);
        }
        List<Order> orderList = orderMapper.selectByExample(orderExample);
        page.setResult(orderList);
    }

    private void page2Example(Page<Order> page, OrderExample orderExample) {
        if(page != null && orderExample != null){
            orderExample.setLimitStart(page.getPageSize()*(page.getPageNo() - 1));
            orderExample.setLimitEnd(page.getPageSize());
        }
    }


    @Override
    public List<Order> getOrderList() {
        return orderMapper.selectByExample(new OrderExample());
    }
}
