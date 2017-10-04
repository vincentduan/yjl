package com.yjl.service.impl;

import com.yjl.common.util.Page;
import com.yjl.entity.Product;
import com.yjl.entity.ProductExample;
import com.yjl.mapper.ProductMapper;
import com.yjl.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class ProductServiceImpl implements ProductService {

    @Autowired
    private ProductMapper productMapper;

    @Override
    public List<Product> getProductByCategoryId(String id) {
        ProductExample productExample = new ProductExample();
        ProductExample.Criteria criteria = productExample.createCriteria();
        criteria.andCategoryEqualTo(id);
        productMapper.selectByExample(productExample);
        return null;
    }

    @Override
    public Product findById(Long id) {
        return null;
    }

    @Override
    public int save(Product product) {
        return 0;
    }

    @Override
    public int update(Product product) {
        return 0;
    }

    @Override
    public int deleteById(Long id) {
        return 0;
    }

    @Override
    public void queryByPage(Page<Product> page, Product product) {
        ProductExample productExample = new ProductExample();
        ProductExample.Criteria criteria = productExample.createCriteria();
        criteria.andCategoryEqualTo(product.getCategory());
        page2Example(page, productExample);
        if(page.isAutoCount()){
            int total = productMapper.countByExample(productExample);
            page.setTotalCount(total);
        }
        List<Product> list = productMapper.selectByExample(productExample);
        page.setResult(list);
    }

    private void page2Example(Page<Product> page, ProductExample productExample) {
        if(null != page && null != productExample){
            productExample.setLimitStart(page.getPageSize()*(page.getPageNo() - 1));
            productExample.setLimitEnd(page.getPageSize());
        }
    }
}
