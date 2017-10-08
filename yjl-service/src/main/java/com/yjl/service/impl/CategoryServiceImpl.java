package com.yjl.service.impl;

import com.yjl.common.util.Page;
import com.yjl.entity.Category;
import com.yjl.entity.CategoryExample;
import com.yjl.mapper.CategoryMapper;
import com.yjl.service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CategoryServiceImpl implements CategoryService {

    @Autowired
    CategoryMapper categoryMapper;

    @Override
    public Category findById(Long id) {
        return categoryMapper.selectByPrimaryKey(id);
    }

    @Override
    public int save(Category category) {
        return 0;
    }

    @Override
    public int update(Category category) {
        return 0;
    }

    @Override
    public int deleteById(Long id) {
        return 0;
    }

    @Override
    public void queryByPage(Page<Category> page, Category category) {

    }

    @Override
    public List<Category> queryByCondition(Category category) {
        CategoryExample categoryExample = new CategoryExample();
        CategoryExample.Criteria criteria = categoryExample.createCriteria();
        return categoryMapper.selectByExample(categoryExample);
    }
}
