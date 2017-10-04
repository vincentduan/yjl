package com.yjl.service;


import com.yjl.entity.Artical;

import java.util.List;

public interface ArticalService {
    List<Artical> getByExample(Long id);

    Artical getById(Long id);
}
