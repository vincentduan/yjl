package com.yjl.service;

import com.yjl.common.base.BaseService;
import com.yjl.entity.News;
import com.yjl.entity.Product;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import java.util.List;

public interface NewsService extends BaseService<News> {

    List<News> getProductList();

    List<News> getProductListTop();
}
