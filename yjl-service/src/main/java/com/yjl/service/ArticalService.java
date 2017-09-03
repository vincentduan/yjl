package com.yjl.service;

import com.yjl.entity.Artical;

import java.util.List;

public interface ArticalService {
    List<Artical> getByExample(int id);

    Artical getById(int id);
}
