package com.yjl.service.impl;

import com.yjl.common.util.Page;
import com.yjl.entity.Product;
import com.yjl.entity.ProductExample;
import com.yjl.mapper.ProductMapper;
import com.yjl.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;

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
    public Product queryByCondition(Product product) {
        ProductExample productExample = new ProductExample();
        ProductExample.Criteria criteria = productExample.createCriteria();
        if(product!=null){
            criteria.andIdEqualTo(product.getId());
        }
        List<Product> l = productMapper.selectByExampleWithBLOBs(productExample);
        return l.get(0);
    }

    @Override
    public String uploadCover(CommonsMultipartFile cover, String realPath) {
        String fileName = "";
        if(!cover.isEmpty()){
            try {
                fileName = System.currentTimeMillis()+".jpg";
                FileOutputStream os = new FileOutputStream(realPath+"/"+fileName);
                FileInputStream in = (FileInputStream) cover.getInputStream();
                int b;
                while((b=in.read())!=-1){ //读取文件
                    os.write(b);
                }
                os.flush(); //关闭流
                in.close();
                os.close();
            }catch (IOException e){
                e.printStackTrace();
            }
        }
        return fileName;
    }

    @Override
    public int removeCover(String oldPic) {
        File file = new File(oldPic);
        if (file.isFile() && file.exists()) {
            file.delete();
            return 1;
        }else{
            return 0;
        }
    }


    /*public int updateProductWithBLOBsById(ProductWithBLOBs productWithBLOBs) {
        return productMapper.updateByPrimaryKeySelective(productWithBLOBs);
    }

    @Override
    public int saveProductWithBLOBs(ProductWithBLOBs productWithBLOBs) {
        return productMapper.insertSelective(productWithBLOBs);
    }*/

    @Override
    public Product findById(Long id) {
        return productMapper.selectByPrimaryKey(id);
    }

    @Override
    public int save(Product product) {
        return productMapper.insertSelective(product);
    }

    @Override
    public int update(Product product) {
        return productMapper.updateByPrimaryKeySelective(product);
    }

    @Override
    public int deleteById(Long id) {
        return productMapper.deleteByPrimaryKey(id);
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
