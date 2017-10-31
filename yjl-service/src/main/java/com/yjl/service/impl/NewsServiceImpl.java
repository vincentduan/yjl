package com.yjl.service.impl;

import com.yjl.common.util.Page;
import com.yjl.entity.News;
import com.yjl.entity.NewsExample;
import com.yjl.mapper.NewsMapper;
import com.yjl.service.NewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class NewsServiceImpl implements NewsService {

    @Autowired
    NewsMapper newsMapper;

    @Override
    public List<News> getProductList() {
        return newsMapper.selectByExample(new NewsExample());
    }

    @Override
    public News findById(Long id) {
        return newsMapper.selectByPrimaryKey(id);
    }

    @Override
    public int save(News news) {
        return newsMapper.insert(news);
    }

    @Override
    public int update(News news) {
        return newsMapper.updateByPrimaryKeySelective(news);
    }

    @Override
    public int deleteById(Long id) {
        return newsMapper.deleteByPrimaryKey(id);
    }

    @Override
    public void queryByPage(Page<News> page, News news) {
        NewsExample newsExample = new NewsExample();
        NewsExample.Criteria criteria = newsExample.createCriteria();
        page2Example(page, newsExample);
        if(page.isAutoCount()){
            int total = newsMapper.countByExample(newsExample);
            page.setTotalCount(total);
        }
        List<News> list = newsMapper.selectByExample(newsExample);
        page.setResult(list);
    }

    private void page2Example(Page<News> page, NewsExample newsExample) {
        if(null != page && null != newsExample){
            newsExample.setLimitStart(page.getPageSize()*(page.getPageNo() - 1));
            newsExample.setLimitEnd(page.getPageSize());
        }
    }
}
