package com.yjl.service;

import com.yjl.common.base.BaseService;
import com.yjl.entity.Category;

import java.util.List;

public interface CategoryService extends BaseService<Category> {
    List<Category> queryByCondition(Category category);
}
