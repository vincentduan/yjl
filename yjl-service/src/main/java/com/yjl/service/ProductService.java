package com.yjl.service;

import com.yjl.common.base.BaseService;
import com.yjl.entity.Product;

import java.util.List;

public interface ProductService extends BaseService<Product> {
    List<Product> getProductByCategoryId(String id);
}
