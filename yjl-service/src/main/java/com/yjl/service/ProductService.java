package com.yjl.service;

import com.yjl.common.base.BaseService;
import com.yjl.entity.Product;
import com.yjl.entity.ProductWithBLOBs;

import java.util.List;

public interface ProductService extends BaseService<Product> {
    List<Product> getProductByCategoryId(String id);

    List<Product> getProductList();

    ProductWithBLOBs getProductWithBLOBsById(Long id);

    int updateProductWithBLOBsById(ProductWithBLOBs productWithBLOBs);
}
