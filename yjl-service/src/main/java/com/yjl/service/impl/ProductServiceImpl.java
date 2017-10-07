package com.yjl.service.impl;

import com.yjl.common.util.Page;
import com.yjl.entity.Product;
import com.yjl.entity.ProductExample;
import com.yjl.entity.ProductWithBLOBs;
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
    public List<Product> getProductList() {
        return productMapper.selectByExample(new ProductExample());
    }

    @Override
    public ProductWithBLOBs getProductWithBLOBsById(Long id) {
        ProductExample productExample = new ProductExample();
        ProductExample.Criteria criteria = productExample.createCriteria();
        criteria.andIdEqualTo(id);
        return Optional.ofNullable(productMapper.selectByExampleWithBLOBs(productExample)).get().get(0);
    }

    public int updateProductWithBLOBsById(ProductWithBLOBs productWithBLOBs) {
        return productMapper.updateByPrimaryKeySelective(productWithBLOBs);
    }

    @Override
    public int saveProductWithBLOBs(ProductWithBLOBs productWithBLOBs) {
        return productMapper.insertSelective(productWithBLOBs);
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
        if(product.getCategory()!=null){
            criteria.andCategoryEqualTo(product.getCategory());
        }
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
