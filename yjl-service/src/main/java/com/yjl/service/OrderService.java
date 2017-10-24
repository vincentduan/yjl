package com.yjl.service;

import com.yjl.common.base.BaseService;
import com.yjl.entity.Order;

import java.util.List;

public interface OrderService extends BaseService<Order> {


    List<Order> getOrderList();
}
