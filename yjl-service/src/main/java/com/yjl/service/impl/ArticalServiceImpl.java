package com.yjl.service.impl;

import com.yjl.entity.Artical;
import com.yjl.entity.ArticalExample;
import com.yjl.mapper.ArticalMapper;
import com.yjl.service.ArticalService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ArticalServiceImpl implements ArticalService {

    @Autowired
    private ArticalMapper articalMapper;

    @Override
    public List<Artical> getByExample(Long id) {
        ArticalExample articalExample = new ArticalExample();
        ArticalExample.Criteria criteria = articalExample.createCriteria();
        criteria.andIdEqualTo(id);
        List<Artical> articals = articalMapper.selectByExample(articalExample);
        return articals;
    }

    @Override
    public Artical getById(Long id) {
        return articalMapper.selectByPrimaryKey(id);
    }
}
