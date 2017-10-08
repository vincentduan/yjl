package com.yjl.service;

import com.yjl.common.base.BaseService;
import com.yjl.entity.Product;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import java.util.List;

public interface ProductService extends BaseService<Product> {
    List<Product> getProductByCategoryId(String id);

    List<Product> getProductList();

    Product queryByCondition(Product product);

    String uploadCover(CommonsMultipartFile cover, String realPath);

    int removeCover(String oldPic);

    /*int updateProductWithBLOBsById(ProductWithBLOBs productWithBLOBs);

    int saveProductWithBLOBs(ProductWithBLOBs productWithBLOBs);*/
}
