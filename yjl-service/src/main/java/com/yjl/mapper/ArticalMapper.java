package com.yjl.mapper;

import com.yjl.entity.Artical;
import com.yjl.entity.ArticalExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ArticalMapper {
    int countByExample(ArticalExample example);

    int deleteByExample(ArticalExample example);

    int deleteByPrimaryKey(Long id);

    int insert(Artical record);

    int insertSelective(Artical record);

    List<Artical> selectByExample(ArticalExample example);

    Artical selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") Artical record, @Param("example") ArticalExample example);

    int updateByExample(@Param("record") Artical record, @Param("example") ArticalExample example);

    int updateByPrimaryKeySelective(Artical record);

    int updateByPrimaryKey(Artical record);
}